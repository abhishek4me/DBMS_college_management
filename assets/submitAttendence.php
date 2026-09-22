<?php
include('config.php');
$response = "success";

if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $jsonData = file_get_contents('php://input');
    $decodedData = json_decode($jsonData, true);

    if (empty($decodedData)) {
        echo "No attendance data received";
        exit;
    }

    $currentDay = date('d');
    $currentMonth = date('m');
    $currentYear = date('Y');

    foreach ($decodedData as $student_id => $value) {
        $class = $value['class'] ?? '';
        $section = $value['section'] ?? '';
        $attendence = (string)($value['attendence'] ?? '0');

        // Verify student's actual registered class and section from students table
        $stQuery = "SELECT `class`, `section` FROM `students` WHERE `id` = ? LIMIT 1";
        $stStmt = mysqli_prepare($conn, $stQuery);
        mysqli_stmt_bind_param($stStmt, "s", $student_id);
        mysqli_stmt_execute($stStmt);
        $stRes = mysqli_stmt_get_result($stStmt);
        if ($stRow = mysqli_fetch_assoc($stRes)) {
            if (!empty($stRow['class'])) {
                $class = $stRow['class'];
            }
            if (!empty($stRow['section'])) {
                $section = $stRow['section'];
            }
        }
        mysqli_stmt_close($stStmt);

        // Check if attendance already exists for this student on today's date
        $checkQ = "SELECT `s_no` FROM `attendence` WHERE `student_id` = ? AND (Day(`date`)=? AND Month(`date`)=? AND Year(`date`)=?) ORDER BY `s_no` ASC";
        $checkStmt = mysqli_prepare($conn, $checkQ);
        mysqli_stmt_bind_param($checkStmt, "ssss", $student_id, $currentDay, $currentMonth, $currentYear);
        mysqli_stmt_execute($checkStmt);
        $checkRes = mysqli_stmt_get_result($checkStmt);

        $existingRows = [];
        while ($row = mysqli_fetch_assoc($checkRes)) {
            $existingRows[] = $row['s_no'];
        }
        mysqli_stmt_close($checkStmt);

        if (!empty($existingRows)) {
            // Update the primary record
            $primary_sno = $existingRows[0];
            $updateQ = "UPDATE `attendence` SET `attendence` = ?, `class` = ?, `section` = ?, `date` = current_timestamp() WHERE `s_no` = ?";
            $upStmt = mysqli_prepare($conn, $updateQ);
            mysqli_stmt_bind_param($upStmt, "sssi", $attendence, $class, $section, $primary_sno);
            if (!mysqli_stmt_execute($upStmt)) {
                $response = "Error updating attendance: " . mysqli_error($conn);
            }
            mysqli_stmt_close($upStmt);

            // Clean up any extraneous duplicate rows for this student today
            if (count($existingRows) > 1) {
                $extraIds = array_slice($existingRows, 1);
                $extraIdsList = implode(',', array_map('intval', $extraIds));
                mysqli_query($conn, "DELETE FROM `attendence` WHERE `s_no` IN ($extraIdsList)");
            }
        } else {
            // Insert new attendance record
            $insertQ = "INSERT INTO `attendence` (`s_no`, `student_id`, `attendence`, `class`, `section`, `date`) VALUES (NULL, ?, ?, ?, ?, current_timestamp())";
            $inStmt = mysqli_prepare($conn, $insertQ);
            mysqli_stmt_bind_param($inStmt, "ssss", $student_id, $attendence, $class, $section);
            if (!mysqli_stmt_execute($inStmt)) {
                $response = "Error saving attendance: " . mysqli_error($conn);
            }
            mysqli_stmt_close($inStmt);
        }
    }

} else {
    $response = "Invalid request method";
}

echo $response;
?>