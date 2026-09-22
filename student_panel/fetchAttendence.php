<?php
error_reporting(0);
include('../assets/config.php');
$response = "";
session_start();

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $month = date('m');
    $id = $_SESSION['uid'] ?? '';

    if (!empty($id)) {
        $query = "SELECT * FROM attendence WHERE student_id = '$id' AND Month(`date`) = '$month' ORDER BY `date` DESC;";
        $result = $conn->query($query);

        if ($result && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $status = "";
                $attVal = trim((string)$row['attendence']);

                if ($attVal === "1") {
                    $status = "<td><span class='badge' style='background:#dcfce7; color:#15803d; font-weight:700; padding:6px 14px; border-radius:8px; font-size:13px; display:inline-block;'><i class='material-icons-sharp' style='font-size:14px; vertical-align:middle;'>check_circle</i> Present</span></td>";
                } elseif ($attVal === "0") {
                    $status = "<td><span class='badge' style='background:#fee2e2; color:#dc2626; font-weight:700; padding:6px 14px; border-radius:8px; font-size:13px; display:inline-block;'><i class='material-icons-sharp' style='font-size:14px; vertical-align:middle;'>cancel</i> Absent</span></td>";
                } else {
                    $status = "<td style='color:#94a3b8; font-weight:bold;'>—</td>";
                }

                $subjectName = !empty($row['subject']) ? htmlspecialchars($row['subject']) : "General Lecture";

                $response .= '<tr>
                    <td>' . date("d M Y, h:i A", strtotime($row['date'])) . '</td>
                    <td><b>' . $subjectName . '</b></td>
                    ' . $status . '
                </tr>';
            }
        } else {
            $response = '<tr><td colspan="3" class="text-center" style="padding:20px; color:#94a3b8;">No attendance records found for this month.</td></tr>';
        }
    }
} else {
    $response = "<tr><td colspan='3'>Something went wrong</td></tr>";
}

echo $response;
?>