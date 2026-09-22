<?php
include("config.php");
session_start();
error_reporting(1);

$response = array();
if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $jsonData = file_get_contents('php://input');
    $decodedData = json_decode($jsonData, true);

    $class = $decodedData['class'] ?? '';
    $section = $decodedData['section'] ?? '';

    $currentDay = date('d');
    $currentMonth = date('m');
    $currentYear = date('Y');

    // Check if attendance has already been taken for this class/section today
    $checkTodayQuery = "SELECT COUNT(*) FROM `attendence` WHERE (`class`=? AND `section`=?) AND (Day(`date`)=? AND Month(`date`)=? AND Year(`date`)=?)";
    $checkStmt = mysqli_prepare($conn, $checkTodayQuery);
    mysqli_stmt_bind_param($checkStmt, "sssss", $class, $section, $currentDay, $currentMonth, $currentYear);
    mysqli_stmt_execute($checkStmt);
    mysqli_stmt_bind_result($checkStmt, $todayCount);
    mysqli_stmt_fetch($checkStmt);
    mysqli_stmt_close($checkStmt);

    $isAlreadyTaken = ($todayCount > 0);

    // Fetch students
    $query = "SELECT * FROM `students` WHERE `class`=? AND `section`=? ORDER BY `fname` ASC, `lname` ASC;";
    $stmt = mysqli_prepare($conn, $query);
    mysqli_stmt_bind_param($stmt, "ss", $class, $section);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $count = 1;
        $response[0] = "READY_TO_TAKE";
        $response[1] = "";
        $response[2] = "SWITCH";
        $response[3] = $isAlreadyTaken ? "UPDATE" : "NEW";

        $currentYearNum = (int)date("Y");
        $currentMonthNum = (int)date('m');
        if ($currentMonthNum <= 3) {
            $startDate = ($currentYearNum - 1) . "-04-01";
            $endDate = $currentYearNum . "-03-31";
        } else {
            $startDate = $currentYearNum . "-04-01";
            $endDate = ($currentYearNum + 1) . "-03-31";
        }

        while ($row = mysqli_fetch_assoc($result)) {
            $pathToFile = ".." . DIRECTORY_SEPARATOR . "studentUploads" . DIRECTORY_SEPARATOR . $row['image'];
            if (!file_exists($pathToFile)) {
                $pathToFile = "../images/user.png";
            }

            $presentquery = "SELECT COUNT(*) FROM `attendence` WHERE `student_id` = ? AND `attendence` = '1' AND `date` BETWEEN ? AND ?";
            $stmt2 = mysqli_prepare($conn, $presentquery);
            mysqli_stmt_bind_param($stmt2, "sss", $row['id'], $startDate, $endDate);
            mysqli_stmt_execute($stmt2);
            mysqli_stmt_bind_result($stmt2, $presentCount);
            mysqli_stmt_fetch($stmt2);
            mysqli_stmt_close($stmt2);

            $workingDaysQuery = "SELECT COUNT(DISTINCT DATE_FORMAT(`date`, '%Y-%m-%d')) FROM `attendence` WHERE `class` = ? AND `section` = ? AND `date` BETWEEN ? AND ?";
            $stmt3 = mysqli_prepare($conn, $workingDaysQuery);
            mysqli_stmt_bind_param($stmt3, "ssss", $class, $section, $startDate, $endDate);
            mysqli_stmt_execute($stmt3);
            mysqli_stmt_bind_result($stmt3, $workingDays);
            mysqli_stmt_fetch($stmt3);
            mysqli_stmt_close($stmt3);

            $present = (int) $presentCount;

            // Check this specific student's attendance record for today
            $todayStudentQuery = "SELECT `attendence` FROM `attendence` WHERE `student_id` = ? AND (Day(`date`)=? AND Month(`date`)=? AND Year(`date`)=?) ORDER BY `s_no` DESC LIMIT 1";
            $stmtToday = mysqli_prepare($conn, $todayStudentQuery);
            mysqli_stmt_bind_param($stmtToday, "ssss", $row['id'], $currentDay, $currentMonth, $currentYear);
            mysqli_stmt_execute($stmtToday);
            $todayRes = mysqli_stmt_get_result($stmtToday);
            $todayRecord = mysqli_fetch_assoc($todayRes);
            mysqli_stmt_close($stmtToday);

            // If already taken today, reflect their actual saved status; if new, default to checked (Present)
            $isChecked = false;
            if ($todayRecord) {
                $isChecked = ($todayRecord['attendence'] === "1");
            } else {
                $isChecked = true;
            }

            $checkedAttr = $isChecked ? 'checked' : '';
            $fullName = htmlspecialchars(trim($row['fname'] . ' ' . $row['lname']));

            $response[1] .= '<tr>
                                <td>' . $count . '.&nbsp;&nbsp;</td>
                                <td class="student_id">' . $row['id'] . '</td>
                                <td class="user">
                                    <img src="' . $pathToFile . '">
                                    <p>' . $fullName . '</p>
                                </td>
                                <td class="text-center"> ' . $workingDays . '</td>
                                <td class="text-center"> ' . $present . '</td>
                                <td>
                                    <label class="switch">
                                        <input type="checkbox" class="attendenceCheckbox" ' . $checkedAttr . '>
                                        <span class="slider round"></span>
                                    </label>
                                </td>
                            </tr>';
            $count++;
        }
    } else {
        $response[0] = "READY_TO_TAKE";
        $response[1] = "No Data";
    }
    mysqli_stmt_close($stmt);

} else {
    $response[0] = "Something went wrong!";
}

echo json_encode($response);
?>