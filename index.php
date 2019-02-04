<?php

require 'config.php';
require 'functions.php';

/**
 * Test
 * echo ip_user();
 * echo "<br/>";
 * echo browser_user();
 * echo "<br/>";
 * echo os_user();
 */

// GET data user yang sudah mengakses website kita
$ip      = ip_user();
$browser = browser_user();
$os      = os_user();

// USE API TO GET VISITOR DATA
$queryapi=@unserialize(file_get_contents('http://ip-api.com/php/'.$ip));


if($queryapi && $queryapi['status'] == 'success') {

    $isp = $queryapi['isp'];
    $country = $queryapi['country'];
    $region = $queryapi['regionName'];
    $city = $queryapi['city'];
    $latitude = $queryapi['lat'];
    $longitude = $queryapi['lon'];
    $timezone = $queryapi['timezone'];

    // Check bila sebelumnya data pengunjung sudah terekam
    if (! isset($_COOKIE['VISITOR'])) {

        // Cookie disimpan selama 24 jam
        $duration = time()+60*60*24;

        // simpan kedalam cookie browser
        setcookie('VISITOR',$browser,$duration);

        // SQL Command atau perintah SQL INSERT
        $sql = "INSERT INTO statistik_api (ip, os, browser, isp, country, region, city, latitude, longitude, timezone) VALUES ('$ip', '$os', '$browser', '$isp', '$country', '$region', '$city', '$latitude', '$longitude', '$timezone')";

        $query = $db->query($sql);

    }
}

echo "<p>Untuk Melihat siapa saja yang telah mengakses website ini, silahkan buka pada <a href=\"admin.php\"/>Halaman Admin</a></p>";
?>
	