<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Batch Allocations</title>
    <link rel="stylesheet" href="../CSS/styles.css">
</head>
<body>
    <header>
        <h1>Batch Allocations</h1>
    </header>

    <nav>
        <a href="../frontend/storage_manager.html">Home</a>
        <a href="../frontend/storage_conditions.html">Storage Conditions Monitoring</a>
        <a href="batch_allocations.php">Batch Allocations</a>
        <a href="../frontend/report_storage_issue.html">Report Issue</a>
        <a href="../frontend/view_storage_loss_report.html">Loss Report</a>
        <a href="login.html">Log Out</a>
    </nav>
    <div class="container">
        <table id="batchTable">
            <thead>
                <tr>
                    <th>Batch ID</th>
                    <th>Farm ID</th>
                    <th>Product ID</th>
                    <th>Storage ID</th>
                    <th>Stored Initial Amount</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include 'db_connection.php';

                $sql = "SELECT batchID, farmID, productID, storageID, storedInitialAmount FROM tbl_harvest_batch";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr id='row-" . htmlspecialchars($row['batchID']) . "'>";
                        echo "<td class='batchID'>" . htmlspecialchars($row['batchID']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['farmID']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['productID']) . "</td>";
                        echo "<td class='storageID'>" . htmlspecialchars($row['storageID']) . "</td>";
                        echo "<td class='storedInitialAmount'>" . htmlspecialchars($row['storedInitialAmount']) . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='5'>No data available</td></tr>";
                }
                $conn->close();
                ?>
            </tbody>
        </table>
    </div>

    <div class="update-form">
        <h2>Update Batch Details</h2>
        <form id="updateForm">
            <label for="batchID">Batch ID:</label>
            <input type="text" id="batchID" name="batchID" required>

            <label for="newStorageID">New Storage ID:</label>
            <input type="text" id="newStorageID" name="newStorageID" required>

            <label for="newStoredInitialAmount">New Stored Initial Amount:</label>
            <input type="number" id="newStoredInitialAmount" name="newStoredInitialAmount" required>

            <button type="submit">Update</button>
        </form>
    </div>

    <script>
        document.getElementById('updateForm').addEventListener('submit', function(event) {
            event.preventDefault(); 

            const formData = new FormData(this);

            fetch('update_batch.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert(data.message);

                    const row = document.getElementById('row-' + data.batchID);
                    if (row) {
                        row.querySelector('.storageID').textContent = data.newStorageID;
                        row.querySelector('.storedInitialAmount').textContent = data.newStoredInitialAmount;
                    }
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
