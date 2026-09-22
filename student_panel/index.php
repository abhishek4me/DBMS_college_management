<?php include("../assets/noSessionRedirect.php"); ?>

<?php include("./verifyRoleRedirect.php"); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cavatta College Management - Student</title>
    <link rel="shortcut icon" href="./images/logo.png">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style type="text/css">
        .container main .subjects .eg #piechart {
            width: 600px;
            height: 350px;
            padding-right: 0%;
            position: relative;
            border-radius: 20px;
        }

        .container main .subjects .eg {
            border-radius: 20px;
        }

        @media screen and (max-width: 700px) {
            .container main .subjects .eg #piechart {
                width: 250px;
                height: 200px;
                padding-left: 0%;
                padding-right: 0%;

            }

            .container main .subjects {
                margin-left: 4%;
            }

            .leaves {
                width: 106%;
                /*margin-left: 5%;*/
                font-size: 10px;
                padding-right: 0;
            }

        }

        #myInput {
            background-image: url('search.svg');
            /* Add a search icon to input */
            background-position: 5px 2px;
            /* Position the search icon */
            background-repeat: no-repeat;
            /* Do not repeat the icon image */
            width: 80%;
            /* Full-width */
            font-size: 16px;
            /* Increase font-size */
            padding: 12px 20px 12px 40px;
            /* Add some padding */
            border: 1px solid #ddd;
            /* Add a grey border */
            margin-bottom: 12px;
            /* Add some space below the input */
            border-radius: 40px;
            position: relative;
        }

        #myTable {
            width: 80%;
            /* Full-width */
            border: 1px solid #ddd;
            /* Add a grey border */
            font-size: 15px;
            /* Increase font-size */
            border-radius: 40px;
            position: relative;
        }

        #myTable th {
            background-color: #A9A9A9;
            color: white;
        }

        #myTable th,
        #myTable td {
            text-align: center;
            /* Left-align text */
            padding: 12px;
            /* Add padding */
            border-radius: 16px;
        }


        #myTable tr {
            /* Add a bottom border to all table rows */
            border-bottom: 1px solid #ddd;
            border-radius: 40px;
            text-align: center;
        }

        #myTable tr.header,
        #myTable tr:hover {
            /* Add a grey background color to the table header and on hover */
            background-color: #f1f1f1;
        }

        @media only screen and (max-width: 768px) {
            #myTable {
                width: 95%;
                margin: 0%;
                font-size: 12.5px;
            }

            #myInput {
                width: 95%;
                margin: 0%;
            }
        }

        .link-btn {
            display: block;
            border: 1px solid rgb(214 183 255);
            background-color: rgb(212 196 255 / 77%);
            color: #000000;
            padding: 8px 10px;
            border-radius: 5px;
            max-width: 100px;
            text-align: center;
        }
    </style>
</head>

<body>
    <header>
        <div class="logo" title="Cavatta College Management">
            <img src="./images/logo.png" alt="">
            <h2>Cavatta <span class="danger">College</span></h2>
        </div>
        <div class="navbar">
            <a href="index.php" class="active">
                <span class="material-icons-sharp">home</span>
                <h3>Home</h3>
            </a>
            <a href="timetable.php" onclick="timeTableAll()">
                <span class="material-icons-sharp">today</span>
                <h3>Time Table</h3>
            </a>
            <a href="password.php">
                <span class="material-icons-sharp">password</span>
                <h3>Change Password</h3>
            </a>
            <a href="logout.php">
                <span class="material-icons-sharp" onclick="">logout</span>
                <h3>Logout</h3>
            </a>
        </div>
        <div id="profile-btn">
            <span class="material-icons-sharp">person</span>
        </div>
        <div class="theme-toggler">
            <span class="material-icons-sharp active">light_mode</span>
            <span class="material-icons-sharp">dark_mode</span>
        </div>

    </header>
    <div class="container">
        <aside>
            <div class="profile">
                <div class="top">
                    <?php

                    $id = $_SESSION['uid'];
                    $query_sql = "SELECT * FROM students WHERE id='$id'";
                    $result = mysqli_query($conn, $query_sql);
                    $row = $result ? $result->fetch_assoc() : null;
                    $imgPath = (!empty($row['image']) && file_exists("../studentUploads/" . $row['image'])) 
                        ? "../studentUploads/" . $row['image'] 
                        : "../images/user.png";
                    echo "<div class='profile-photo'>
                        <img src='" . $imgPath . "' alt='Profile Photo'>
                    </div>";
                    ?>

                    <div class="info">
                        <?php
                        session_start();
                        $id = $_SESSION['uid'];
                        $query = "select * from students where id='$id'";
                        $result = $conn->query($query);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "
                            <p>Hey, <b>" . $row["fname"] . "</b> </p>
                        <small class='text-muted'><b>ID&nbsp;:&nbsp;</b>" . $row["id"] . "</small>";
                            }
                        }
                        ?>

                    </div>
                </div>
                <div class="about">
                    <?php
                    $query = "select * from students where id='$id'";
                    $result = $conn->query($query);
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<p><h5>Class : " . $row["class"] . "</h5></p>
                    <p>Section " . $row["section"] . "</p>
                    <h5>DOB</h5>
                    <p>" . $row["dob"] . "</p>
                    <h5>Contact</h5>
                    <p>" . $row["phone"] . "</p>
                    <h5>Email</h5>
                    <p>" . $row["email"] . "</p>
                    <h5>Address</h5>
                    <p>" . $row["address"] . "</p>";
                        }
                    }

                    ?><br>

                    <div style="display: inline;">
                    <b><a href="fee-payment.php" class="link-btn">Pay-Fee</a></b>
                    </div>
                </div>
            </div>
        </aside>

        <main>
            <h1>Attendance</h1>
            <div class="subjects">
                <div class="eg">
                    <div id="piechart"></div>

                </div>
            </div>


            <div class="timetable" style="margin-top: 24px;">
                <h2>Course & Faculty Attendance</h2>
                <table>
                    <thead>
                        <tr class="header">
                            <th>Faculty & Course</th>
                            <th>Code</th>
                            <th class="text-center">Held</th>
                            <th class="text-center">Attended</th>
                            <th class="text-center">%</th>
                            <th class="text-center">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $studentId = $_SESSION['uid'];
                        $courses = [
                            [
                                'faculty' => 'Ms. AJANA J',
                                'subject' => 'Theory of Computation',
                                'code'    => 'PCERT502',
                                'match'   => '%THEORY OF COMPUTATION%'
                            ],
                            [
                                'faculty' => 'Mrs. SIMI M S',
                                'subject' => 'Microcontrollers and Interfacing',
                                'code'    => 'PCERT503',
                                'match'   => '%MICROCONTROLLERS%'
                            ],
                            [
                                'faculty' => 'Mrs. LORINDA E',
                                'subject' => 'Database Management Systems',
                                'code'    => 'PBERT504',
                                'match'   => '%DATABASE MANAGEMENT SYSTEMS%'
                            ],
                            [
                                'faculty' => 'Mrs. HEMA S MAHESH',
                                'subject' => 'Digital Signal Processing',
                                'code'    => 'PCERT501',
                                'match'   => '%DIGITAL SIGNAL PROCESSING%'
                            ],
                            [
                                'faculty' => 'Mrs. HEMA DEVI',
                                'subject' => 'Cloud Computing',
                                'code'    => 'CLOUD',
                                'match'   => '%CLOUD COMPUTING%'
                            ]
                        ];

                        foreach ($courses as $c) {
                            $matchSql = mysqli_real_escape_string($conn, $c['match']);
                            $codeSql = mysqli_real_escape_string($conn, $c['code']);
                            
                            // Total held classes for this student in this course
                            $qTotal = mysqli_query($conn, "SELECT COUNT(*) as total FROM attendence WHERE student_id = '$studentId' AND (subject LIKE '$matchSql' OR subject LIKE '%$codeSql%')");
                            $rTotal = mysqli_fetch_assoc($qTotal);
                            $held = (int)($rTotal['total'] ?? 0);

                            // Attended classes
                            $qAtt = mysqli_query($conn, "SELECT COUNT(*) as attended FROM attendence WHERE student_id = '$studentId' AND attendence = '1' AND (subject LIKE '$matchSql' OR subject LIKE '%$codeSql%')");
                            $rAtt = mysqli_fetch_assoc($qAtt);
                            $attended = (int)($rAtt['attended'] ?? 0);

                            // Latest status (for today or most recent session)
                            $qLatest = mysqli_query($conn, "SELECT attendence FROM attendence WHERE student_id = '$studentId' AND (subject LIKE '$matchSql' OR subject LIKE '%$codeSql%') ORDER BY `date` DESC LIMIT 1");
                            $rLatest = mysqli_fetch_assoc($qLatest);

                            $pctStr = ($held > 0) ? round(($attended / $held) * 100) . '%' : '—';
                            $statusBadge = '<span style="color:#94a3b8; font-weight:bold;">—</span>'; // Blank if unmarked

                            if ($rLatest) {
                                $val = trim((string)$rLatest['attendence']);
                                if ($val === '1') {
                                    $statusBadge = '<span class="badge" style="background:#16a34a; color:#fff; font-weight:600; padding:5px 12px; border-radius:6px; font-size:12px;">✔ Present</span>';
                                } elseif ($val === '0') {
                                    $statusBadge = '<span class="badge" style="background:#dc2626; color:#fff; font-weight:600; padding:5px 12px; border-radius:6px; font-size:12px;">✖ Absent</span>';
                                }
                            }

                            echo "<tr>
                                <td>
                                    <strong>{$c['faculty']}</strong><br>
                                    <small class='text-muted'>{$c['subject']}</small>
                                </td>
                                <td><span style='font-family:monospace; background:rgba(0,0,0,0.05); padding:2px 6px; border-radius:4px;'>{$c['code']}</span></td>
                                <td class='text-center'>{$held}</td>
                                <td class='text-center'>{$attended}</td>
                                <td class='text-center'><strong>{$pctStr}</strong></td>
                                <td class='text-center'>{$statusBadge}</td>
                            </tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>

            <div class="timetable" id="timetable" style="margin-top: 24px;">
                <h2>Monthly Attendance Log</h2>
                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Date or Course...">

                <table id="myTable">
                    <thead>
                        <tr class="header">
                            <th style="width:35%;">Date & Time</th>
                            <th style="width:40%;">Course</th>
                            <th style="width:25%;">Status</th>
                        </tr>
                    </thead>
                    <tbody id="attendence_table">
                    </tbody>
                </table>
                <br><br>
            </div>
        </main>

        <div class="right">
            <div class="announcements">
                <h2>Notice</h2>
                <div class="updates">
                    <div class="message">
                        <?php
                        $id = $_SESSION['uid'];
                        $query_sql2 = "SELECT * FROM students WHERE id='$id'";
                        $result = mysqli_query($conn, $query_sql2);
                        $row = $result->fetch_assoc();
                        $class = $row['class'];

                        $sql_query = "SELECT * FROM notice WHERE (role = 'student' AND class='$class') OR (role = 'all' OR role='') ORDER BY s_no DESC LIMIT 3";
                        $result = mysqli_query($conn, $sql_query);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<p> <b>" . $row['title'] . "</b> <br>" . $row['body'] . "<br></p>";
                                if ($row['file'] != null) {
                                    echo "<a href='../noticeUploads/" . $row['file'] . "'><img src='file.svg' height='30px' width='30px'><p style='color:red;'>View Notice</p></a>";
                                }
                                echo "<small class='text-muted'><b>" . $row['timestamp'] . "</b></small><hr><br>";
                            }
                        }
                        ?>



                    </div>

                </div>
            </div>

            <div class="leaves">
                <h2>Feedbacks</h2>
                <?php
                $id = $_SESSION['uid'];

                $sql2 = "SELECT * FROM `feedback` WHERE `receiver_id`='$id' LIMIT 5";
                $result2 = mysqli_query($conn, $sql2);
                if ($result2->num_rows > 0) {
                    while ($row2 = $result2->fetch_assoc()) {
                        $timestamp = $row2['timestamp'];
                        $formattedDate = date('d M, Y', strtotime($timestamp));

                        $senderId = $row2['sender_id'];
                        $tableName = ($senderId >= 1000) ? 'admins' : 'teachers';
                        $sql = "SELECT `fname`, `lname` FROM `$tableName` WHERE id = '$senderId' LIMIT 1";

                        $result = mysqli_query($conn, $sql);
                        if ($result->num_rows > 0) {
                            $row = $result->fetch_assoc();
                            $sender = trim($row['fname'] . " " . $row['lname']);
                        } else {
                            $sender = "REMOVED";
                        }

                        echo "<div class='teacher'>
                            <div class='info' style='width: 100%;'>
                                <p class='text-muted para-text'>
                                <i class='bx bxs-chat' ></i>
                                " . $row2['msg'] . "</p>
                                <div class='flexbox' style='margin-top: 8px;'>
                                    <small>" . $formattedDate . "</small>
                                    <small style='margin-left: auto;'>" .  $sender . "</small>
                                </div>
                            </div>
                        </div>";
                    }
                } else {
                    echo "<div class='teacher'>
                    <div class='info' style='width: 100%;'>
                        <p class='text-muted para-text'>
                        <i class='bx bxs-chat' ></i>
                       No Feedbacks</p>
                       
                    </div>
                </div>";
                }
                ?>


            </div>

        </div>
    </div>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        let presentPer = 30;
        let absentPer = 70;


        document.addEventListener("DOMContentLoaded", function() {
            fetch("fetchAttendencePercentage.php", {
                    method: "POST",
                })
                .then(response => response.json())
                .then(data => {


                    if (data['status'] === "success") {
                        presentPer = parseFloat(data['present']);
                        absentPer = parseFloat(data['absent']);



                        google.charts.load("current", {
                            packages: ["corechart"]
                        });
                        google.charts.setOnLoadCallback(drawChart);

                    } else {
                        alert("Something went wrong!");
                    }
                })
                .catch(error => {
                    console.error("error" + error)
                })
        });


        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Attandence', 'percentage'],
                ['preset', presentPer],
                ['Absent', absentPer],
            ]);

            var options = {
                legend: 'none',
                pieSliceText: 'label',
                title: 'Student Attendence All time',
                pieStartAngle: 100,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);
        }
    </script>


    <script type="text/javascript" src="app.js"></script>
    <!-- <script type="text/javascript" src="timeTable.js"></script> -->
    <script type="text/javascript" src="index.js"></script>
</body>

</html>