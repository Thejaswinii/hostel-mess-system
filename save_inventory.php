<?php
$conn = new mysqli("localhost", "root", "", "hostel_mess");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$year = $_POST['year'];
$month = $_POST['month'];
$week = $_POST['week'];
$vegetables = $_POST['vegetables'];
$oil = $_POST['oil'];
$milk = $_POST['milk'];
$gas = $_POST['gas'];
$rice = $_POST['rice'];
$wheat_flour = $_POST['wheat_flour'];
$egg = $_POST['egg'];
$grams = $_POST['grams'];

// Check if the entry for the same year, month, and week already exists
$sql_check = "SELECT * FROM inventory WHERE year = '$year' AND month = '$month' AND week = '$week'";
$result = $conn->query($sql_check);

if ($result->num_rows > 0) {
    // Update the existing record
    $sql_update = "UPDATE inventory 
                   SET vegetables = '$vegetables',
                       oil = '$oil',
                       milk = '$milk',
                       gas = '$gas',
                       rice = '$rice',
                       wheat_flour = '$wheat_flour',
                       egg = '$egg',
                       grams = '$grams'
                   WHERE year = '$year' AND month = '$month' AND week = '$week'";

    if ($conn->query($sql_update) === TRUE) {
        echo "Inventory updated successfully.";
    } else {
        echo "Error updating inventory: " . $conn->error;
    }
} else {
    // Insert a new record
    $sql_insert = "INSERT INTO inventory (year, month, week, vegetables, oil, milk, gas, rice, wheat_flour, egg, grams)
                   VALUES ('$year', '$month', '$week', '$vegetables', '$oil', '$milk', '$gas', '$rice', '$wheat_flour', '$egg', '$grams')";

    if ($conn->query($sql_insert) === TRUE) {
        echo "Inventory added successfully.";
    } else {
        echo "Error: " . $sql_insert . "<br>" . $conn->error;
    }
}

// Update the monthly total
$sql_monthly = "INSERT INTO monthly_inventory_total (year, month, total)
                SELECT year, month, SUM(vegetables + oil + milk + gas + rice + wheat_flour + egg + grams) AS total
                FROM inventory
                WHERE year = '$year' AND month = '$month'
                GROUP BY year, month
                ON DUPLICATE KEY UPDATE total = VALUES(total)";

if ($conn->query($sql_monthly) === TRUE) {
    echo " Monthly total updated successfully.";
} else {
    echo " Error updating monthly total: " . $conn->error;
}

$conn->close();
?>
