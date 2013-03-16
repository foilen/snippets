<?php

$dbUser = 'THE USER';
$dbPassword = 'THE PASSWORD';
$dbName = 'THE DB NAME';

$file = "dropsql-". date("Y-m-d_H-i") . rand(100000,100000000) . ".sql";
header("Content-type: application/x-gzip");
header("Content-Disposition: attachment; filename=\"$file\"");

system("mysqldump -h localhost -u $dbUser -p$dbPassword --skip-quick --skip-extended-insert $dbName");

exit();
