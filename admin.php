<?php
require 'config.php';

$sql = "SELECT * FROM statistik_api ORDER BY date_create DESC";
$query = $db->query($sql);

?>
<h3>Daftar user yang pernah mengakses website</h3>
<table border="1">
    <tr>
        <td>IP</td>
        <td>Browser</td>
        <td>OS</td>
        <td>ISP</td>
        <td>Country</td>
        <td>Region</td>
        <td>City</td>
        <td>Latitude, Longitude</td>
        <td>Timezone</td>
        <td>Date</td>
    </tr>
    <?php
    while ($row=$query->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['ip'];?></td>
            <td><?php echo $row['browser'];?></td>
            <td><?php echo $row['os'];?></td>
            <td><?php echo $row['isp'];?></td>
            <td><?php echo $row['country'];?></td>
            <td><?php echo $row['region'];?></td>
            <td><?php echo $row['city'];?></td>
            <td><?php echo $row['latitude'] ." , ". $row['longitude'];?></td>
            <td><?php echo $row['timezone'];?></td>
            <td><?php echo $row['date_create'];?></td>
        </tr>
    <?php } ?>
</table>