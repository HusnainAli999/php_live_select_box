<?php

$conn = new mysqli("localhost", "root", "", "selectbox_database");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['province'])) {
    $selectCity = mysqli_prepare($conn, "SELECT * FROM city_table WHERE province_id = ?");
    $selectCity->bind_param("i", $_POST['province_id']);
    $selectCity->execute();
    $cityResult = $selectCity->get_result();

    $cityData = [];

    while ($cityLoop = mysqli_fetch_array($cityResult, MYSQLI_ASSOC)) {
        $cityData[] .= $cityLoop['city_name'];
        $cityData[] .= $cityLoop['city_id'];
    }
    echo json_encode($cityData);
}

if (isset($_POST['city'])) {
    $selectArea = mysqli_prepare($conn, "SELECT * FROM area_table WHERE city_id = ?");
    $selectArea->bind_param("i", $_POST['cityValue']);
    $selectArea->execute();
    $areaResult = $selectArea->get_result();

    $areaData = [];

    while ($areaLoop = mysqli_fetch_array($areaResult, MYSQLI_ASSOC)) {
        $areaData[] .= $areaLoop['area_name'];
        $areaData[] .= $areaLoop['area_id'];
    }
    echo json_encode($areaData);
}
