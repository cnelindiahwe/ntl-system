<?php
if (isset($_GET['downloadFileName'])) {
  $file = dirname(__FILE__) . "/daily_backup/db_backup_files/" . $_GET['downloadFileName']; // replace with the file path on your server

  $currentURL = $_SERVER['REQUEST_URI'];
  $currentURL = explode("?", $currentURL)[0];
  if (file_exists($file)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename="' . basename($file) . '"');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file));
    readfile($file);
    header("Location: $currentURL");
    exit;
  }
}
include('header.php');

$dir = dirname(__FILE__) . "/daily_backup/db_backup_files/"; // replace with the directory path on your server
$cntNum = 1; ?>
<section>
  <div class="container">
    <table class="table table-hover">
      <thead>
        <tr>
          <th>#</th>
          <th>Backup File Name</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <?php if (is_dir($dir)) {
          if ($dh = opendir($dir)) {
            while (($file = readdir($dh)) !== false) {
              if ($file != "." && $file != "..") {
                echo "<tr>
                <td>" . $cntNum . "</td>
                <td>" . $file . "</td>
                <td><a href='?downloadFileName=" . $file . "'><button>Download</button></a></td>
              </tr>";
                $cntNum++;
              }
            }
            closedir($dh);
          }
        }
        ?>
      </tbody>
    </table>
  </div>
</section>