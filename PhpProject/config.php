<?php
$host = "localhost";
$user = "root";
$pass = "";
$database = "phpprojectsis";

$page_title = 'Hệ thống Quản lý đào tạo';
$page_keywords = 'hệ thống, đào tạo, quản lý, quả lý đào tạo';
$page_description = 'Hệ thống Quản lý đào tạo - Trường Đại Học Cần Thơ';


require_once($_SERVER['DOCUMENT_ROOT']."/libs/db.php"); 
require_once($_SERVER['DOCUMENT_ROOT']."/libs/common.php"); 

define('ROOT_DIR','');
 
define ("IMAGES_DIR", ROOT_DIR."images" );
define ("LIBS_DIR", ROOT_DIR."libs");
