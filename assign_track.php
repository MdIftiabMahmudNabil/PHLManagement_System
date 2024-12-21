<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign & Track Vehicles</title>
    <link rel="stylesheet" href="../CSS/styles.css">
</head>
<body>
    <header>
        <h1>Assign & Track Vehicles</h1>
    </header>

    <nav>
        <a href="../frontend/transport_manager.html">Home</a>
        <a href="assign_track.php">Reassign & Track Vehicles</a>
        <a href="../frontend/report_issue.html">Report Issue</a>
        <a href="../frontend/view_loss_report.html">View Loss Report</a>
        <a href="login.html">Log Out</a>
    </nav>

    <div class="container">
        <section>
            <h2>Available Transport</h2>
            <table>
                <thead>
                    <tr>
                        <th>Transport ID</th>
                        <th>Driver Name</th>
                        <th>Vehicle Type</th>
                        <th>Vehicle Details</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    include 'db_connection.php';

                    $sql = "SELECT transportID, driverName, vehicleType, vehicleDetails FROM tbl_transport";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . htmlspecialchars($row['transportID']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['driverName']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['vehicleType']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['vehicleDetails']) . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='4'>No available transport</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </section>

        <section>
            <h2>Assigned Vehicles</h2>
            <table>
                <thead>
                    <tr>
                        <th>Batch ID</th>
                        <th>Transport ID</th>
                        <th>Transport Load Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sql = "SELECT batchID, transportID, transportLoadAmount FROM tbl_harvest_batch";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . htmlspecialchars($row['batchID']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['transportID']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['transportLoadAmount']) . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='3'>No assigned vehicles</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </section>

        <section>
            <h2>Update Transport Details</h2>
            <form id="updateTransportForm">
                <label for="batchID">Batch ID:</label>
                <input type="text" id="batchID" name="batchID" required>

                <label for="newTransportID">New Transport ID:</label>
                <input type="text" id="newTransportID" name="newTransportID" required>

                <label for="newTransportLoadAmount">New Transport Load Amount:</label>
                <input type="number" id="newTransportLoadAmount" name="newTransportLoadAmount" required>

                <button type="submit">Update</button>
            </form>
        </section>
    </div>

    <script>
        document.getElementById('updateTransportForm').addEventListener('submit', function(event) {
            event.preventDefault(); 

            const formData = new FormData(this);

            fetch('update_transport.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert(data.message);
                    location.reload(); 
                } else {
                    alert(data.message);
                }
            })
            .catch(error => {
                alert('An error occurred: ' + error.message);
            });
        });
    </script>
</body>
</html>
