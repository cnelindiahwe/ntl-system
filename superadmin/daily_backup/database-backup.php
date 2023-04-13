<?php
$dir = dirname(__FILE__) . "/db_backup_files";
if(is_dir($dir)) {
  $files = glob($dir . "/*");
  $time = time() - (30 * 24 * 60 * 60);
  foreach($files as $file) {
    if(is_file($file) && (filemtime($file) < $time)) {
      unlink($file);
    }
  }
}
if (isset($_REQUEST['download_file'])) {

  $backup_file_name = $_REQUEST['download_file'];
  // Download the SQL backup file to the browser
  header('Content-Description: File Transfer');
  header('Content-Type: application/octet-stream');
  header('Content-Disposition: attachment; filename=' . basename($backup_file_name));
  header('Content-Transfer-Encoding: binary');
  header('Expires: 0');
  header('Cache-Control: must-revalidate');
  header('Pragma: public');
  header('Content-Length: ' . filesize($backup_file_name));
  ob_clean();
  flush();
  readfile($backup_file_name);
  exec('rm ' . $backup_file_name);
  die();
}

ini_set('memory_limit', '1024M');
ini_set('max_execution_time', '0');

// format 
//array("host","db","user","pass")

$all_db = array(
  array("localhost", "ecadmin_crm2", "ecadmin_crm2", "nb7D6UN]SYve")
);

foreach ($all_db as $key => $value) {
  $host =  $value[0];
  $database_name = $value[1];
  $username = $value[2];
  $password = $value[3];

  // Get connection object and set the charset
  $conn = mysqli_connect($host, $username, $password, $database_name);
  $conn->set_charset("utf8");

  // Get All Table Names From the Database
  $tables = array();
  $sql = "SHOW TABLES";
  $result = mysqli_query($conn, $sql);

  while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
  }

  $sqlScript = "";
  foreach ($tables as $table) {

    // Prepare SQLscript for creating table structure
    $query = "SHOW CREATE TABLE $table";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_row($result);

    $sqlScript .= "\n\n" . $row[1] . ";\n\n";

    $query = "SELECT * FROM $table";
    $result = mysqli_query($conn, $query);

    $columnCount = mysqli_num_fields($result);

    // Prepare SQLscript for dumping data for each table
    for ($i = 0; $i < $columnCount; $i++) {
      while ($row = mysqli_fetch_row($result)) {
        $sqlScript .= "INSERT INTO $table VALUES(";
        for ($j = 0; $j < $columnCount; $j++) {
          $row[$j] = $row[$j];

          if (isset($row[$j])) {
            $sqlScript .= '"' . $row[$j] . '"';
          } else {
            $sqlScript .= '""';
          }
          if ($j < ($columnCount - 1)) {
            $sqlScript .= ',';
          }
        }
        $sqlScript .= ");\n";
      }
    }

    $sqlScript .= "\n";
  }

  if (!empty($sqlScript)) {
    error_reporting(E_ALL);
    ini_set('display_errors', '1');

    // Save the SQL script to a backup file
    $backup_file_name = $database_name . '_backup_' . date("d-m-Y", time()) . '_' . rand(11, 99) . '.sql';
    $fileHandler = fopen('db_backup_files/' . $backup_file_name, 'w+');
    $number_of_lines = fwrite($fileHandler, $sqlScript);
    fclose($fileHandler);
    //file_put_contents("backup.sql",basename($backup_file_name));
    echo "done-" . $database_name;
    echo "<br>";

    echo $message = "http://crm2.ecomdemo.xyz/superadmin/daily_backup/database-backup.php?download_file=" . $backup_file_name . "\n";
    die('Done');
  }
}

die('Done');
