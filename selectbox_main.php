<?php

$conn = new mysqli("localhost", "root", "", "selectbox_database");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$selectProvince = mysqli_prepare($conn, "SELECT * FROM province_table");
$selectProvince->execute();
$provinceResult = $selectProvince->get_result();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php include_once("selectbox_css.php"); ?>
    <div class="main_owner_div_of_selectBox">
        <form action="" method="POST">
            <select name="province" id="province" onchange="changeProvince()">
                <?php
                foreach ($provinceResult as $provinceResultLoop) {
                    echo "<option value='" . $provinceResultLoop['province_id'] . "'> " . $provinceResultLoop['province_name'] . "  </option>";
                }
                ?>
            </select>
        </form>

        <form action="" method="POST">
            <select name="city" id="city" onchange="changeCity()"></select>
        </form>

        <select name="area" id="area"></select>

    </div>

    <script>
        function changeProvince() {
            var provinceValue = document.getElementById("province").value;
            var province = document.getElementById("province");

            var city = document.getElementById("city");

            var xmlobj = new XMLHttpRequest();
            xmlobj.open("POST", "selectbox_process.php", true);
            xmlobj.onreadystatechange = function() {
                if (xmlobj.readyState == 4 && xmlobj.status == 200) {
                    var response = JSON.parse(xmlobj.responseText);
                    if (response) {
                        city.innerHTML = "<option value='selectcity'>Select City</option>";

                        for (var i = 0; i < response.length; i += 2) {
                            var cityOption = document.createElement("option");
                            cityOption.value = response[i + 1];
                            cityOption.text = response[i];

                            city.add(cityOption);
                        }
                    }
                }
            };

            xmlobj.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlobj.send("province_id=" + provinceValue + "&province=" + province);
        }


        function changeCity() {
            var cityValue = document.getElementById("city").value;
            var city = document.getElementById("city");
            var area = document.getElementById("area");

            var xhr = new XMLHttpRequest();
            xhr.open("POST", "selectbox_process.php", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var response = JSON.parse(xhr.responseText);
                    area.innerHTML = "<option value='selectarea'>Select Area</option>";
                    if (response) {
                        for (var i = 0; i < response.length; i += 2) {
                            var areaOption = document.createElement("option");
                            areaOption.value = response[i + 1];
                            areaOption.text = response[i];
                            area.add(areaOption);
                        }
                    }
                }
            }

            xhr.send("cityValue=" + cityValue + "&city=" + city);
        }
    </script>
</body>

</html>