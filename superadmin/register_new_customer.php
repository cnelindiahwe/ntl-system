<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include('header.php');

$user_table = "CREATE TABLE IF NOT EXISTS domain_list_setting (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
	new_IC VARCHAR(255) NOT NULL,
	address_1 VARCHAR(255),
	address_2 VARCHAR(255),
	address_3 VARCHAR(255),
	address_4 VARCHAR(255),
	occupation VARCHAR(255),
	telephone_1 VARCHAR(255),
	telephone_2 VARCHAR(255),
	fax VARCHAR(255),
	gender VARCHAR(100),
	Guarantor_Name VARCHAR(255),
	Guarantor_IC VARCHAR(255),
	Guarantor_Telephone VARCHAR(255),
	Guarantor_Info VARCHAR(255),
    password  VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	customer_pic VARCHAR(255),
	customer_pic_ic VARCHAR(255),
	customer_guarantor_pic VARCHAR(255),
	user_agent_id INT(11)
)";

if (mysqli_query($conn, $user_table)) {
  
} else {
  echo "Error creating table: " . mysqli_error($conn);
}


$success='';
if(isset($_POST['create_domain']))
{
    $domain_name = $_POST['domain_name'];
    $domain_status = $_POST['domain_status'];
    $module_type = $_POST['module_type'];

    $time = time().'_'.rand(10,1000);
    $table_prefix = 'crm_'.$time.'_';

    $whmusername = "ecadmin";
    $whmpassword = "gTneyJS3vnqFnSG";
    $cpanel_ip = '170.187.228.69'; //ip of cpanel or your_domain.com
    $domain = "ecomdemo.xyz";
    $document_root = $module_type;
    
    $query = "https://".$cpanel_ip.":2083/json-api/cpanel?cpanel_jsonapi_module=SubDomain&cpanel_jsonapi_func=addsubdomain&cpanel_jsonapi_apiversion=2&dir=/public_html/".$document_root."/&rootdomain=".$domain."&domain=".$domain_name."";
    
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER,0);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST,0);
    curl_setopt($curl, CURLOPT_HEADER,0);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER,1);
    $header[0] = "Authorization: Basic " . base64_encode($whmusername.":".$whmpassword) . "\n\r";
    curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
    curl_setopt($curl, CURLOPT_URL, $query);
    $result = curl_exec($curl);
    curl_close($curl);
    $response= json_decode($result,true);
    $response = $response['cpanelresult'];
    $response = $response['data'][0]['result'];

    if($response == 1)
    {
        $full_domain_name = $domain_name.'.'.$domain;
         $insert = "INSERT INTO domain_list_setting SET domain_name='".$full_domain_name."',table_prefix='$table_prefix',status='$domain_status',date=now()";
         
        
        if(mysqli_query($conn,$insert))
        {
            if($module_type == 'crm2')
            {
               $administration_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."administration (
                id INT AUTO_INCREMENT PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
            	password VARCHAR(255) NOT NULL
                )";
                mysqli_query($conn, $administration_table);
                
                $center_detail_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."center_detail (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    center_name VARCHAR(255) NOT NULL,
                	address_1 VARCHAR(255) NOT NULL,
                	address_2 VARCHAR(255) NULL,
                	address_3 VARCHAR(255) NULL,
                	address_4 VARCHAR(255) NULL,
                	telephone_1 VARCHAR(255) NULL,
                	telephone_2 VARCHAR(255) NULL,
                	fax VARCHAR(255) NULL,
                	show_sequence VARCHAR(255) NULL
            	
                )";
                mysqli_query($conn, $center_detail_table);
                
                $collection_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."collection (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    card_id VARCHAR(255) NOT NULL,
                	amount INT(11) NULL DEFAULT 0,
                	interest INT(11) NULL DEFAULT 0,
                	center_id VARCHAR(255) NULL,
                	d_date_disp VARCHAR(255) NULL
            	
                )";
                mysqli_query($conn, $collection_table);
                
                 $users_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."users (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_id VARCHAR(255) NOT NULL,
                	user_name VARCHAR(255) NOT NULL,
                	group_name VARCHAR(255) NULL DEFAULT NULL,
                	center_id VARCHAR(255) NULL DEFAULT NULL,
                	password VARCHAR(255) NULL DEFAULT NULL
            	
                )";
                mysqli_query($conn, $users_table);
                
                 $recently_login_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."recently_login (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_id INT(11) NULL DEFAULT NULL,
                	date VARCHAR(100) NULL DEFAULT NULL
            	
                )";
                mysqli_query($conn, $recently_login_table);
                
                 $customers_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."customers (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    name VARCHAR(255) NOT NULL,
                	new_IC VARCHAR(255) NOT NULL,
                	address_1 VARCHAR(255) NULL DEFAULT NULL,
                	address_2 VARCHAR(255) NULL DEFAULT NULL,
                	address_3 VARCHAR(255) NULL DEFAULT NULL,
                	address_4 VARCHAR(255) NULL DEFAULT NULL,
                	occupation VARCHAR(255) NULL DEFAULT NULL,
                	telephone_1 VARCHAR(255) NULL DEFAULT NULL,
                	telephone_2 VARCHAR(255) NULL DEFAULT NULL,
                	fax VARCHAR(255) NULL DEFAULT NULL, 
                	gender VARCHAR(255) NULL DEFAULT NULL,
                	Guarantor_Name VARCHAR(255) NULL DEFAULT NULL,
                	Guarantor_Telephone VARCHAR(255) NULL DEFAULT NULL,
                	Guarantor_Info VARCHAR(255) NULL DEFAULT NULL, 
                	password VARCHAR(255) NULL DEFAULT NULL,
                	created_at TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP(6),
                	customer_pic VARCHAR(255) NULL DEFAULT NULL,
                	customer_pic_ic VARCHAR(255) NULL DEFAULT NULL,
                	customer_guarantor_pic VARCHAR(255) NULL DEFAULT NULL,
                	user_agent_id INT(11) NOT NULL
            	
                )";
                mysqli_query($conn, $customers_table);
                
                $customers_card_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."customers_card (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    customer_id INT(11) NOT NULL,
                	center_id INT(11) NOT NULL,
                	amt_per_day VARCHAR(255) NULL DEFAULT NULL,
                	no_of_terms VARCHAR(255) NULL DEFAULT NULL,
                	start_date VARCHAR(255) NULL DEFAULT NULL,
                	duration VARCHAR(255) NULL DEFAULT NULL,
                	advance VARCHAR(255) NULL DEFAULT NULL,
                	loan_out VARCHAR(255) NULL DEFAULT NULL,
                	deposit VARCHAR(255) NULL DEFAULT NULL,
                	crossed VARCHAR(255) NULL DEFAULT NULL, 
                	crossed_date VARCHAR(100) NULL DEFAULT NULL,
                	profit VARCHAR(255) NULL DEFAULT NULL,
                	clear_payment varchar(50) NOT NULL,
                	user_agent_id INT(11) NOT NULL
            	
                )";
                mysqli_query($conn, $customers_card_table);
                
                $customer_expenses_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."customer_expenses (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    center_id INT(11) NOT NULL,
                	date VARCHAR(255) NULL DEFAULT NULL,
                	misc VARCHAR(255) NULL DEFAULT NULL,
                	repair VARCHAR(255) NULL DEFAULT NULL,
                	advance VARCHAR(255) NULL DEFAULT NULL,
                	outbalance VARCHAR(255) NULL DEFAULT NULL,
                	inbalance VARCHAR(255) NULL DEFAULT NULL,
                	card_id INT(11) NOT NULL
            	
                )";
                mysqli_query($conn, $customer_expenses_table);
            }
            else if($module_type == 'jackg99')
            {
                $bank_details_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."bank_details (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    customer_id VARCHAR(255) NOT NULL,
                	account_number VARCHAR(255) NULL DEFAULT NULL,
                	bank_name VARCHAR(255) NULL DEFAULT NULL,
                	account_holder VARCHAR(255) NULL DEFAULT NULL,
                	online_bankname VARCHAR(255) NULL DEFAULT NULL,
                	username VARCHAR(255) NULL DEFAULT NULL,
                	password VARCHAR(255) NULL DEFAULT NULL,
                	bank_statment_photo VARCHAR(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $bank_details_table);
                
                $branch_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."branch (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    code VARCHAR(255) NOT NULL,
                	manager VARCHAR(255) NULL DEFAULT NULL,
                	registration_date VARCHAR(255) NULL DEFAULT NULL,
                	hqinitial_funding VARCHAR(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $branch_table);
                
                $customer_details_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."customer_details (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    branch_id VARCHAR(255) NOT NULL,
                	customer_code VARCHAR(255) NULL DEFAULT NULL,
                	name VARCHAR(255) NULL DEFAULT NULL,
                	foreigner VARCHAR(255) NULL DEFAULT NULL,
                	ic VARCHAR(255) NULL DEFAULT NULL,
                	passport VARCHAR(255) NULL DEFAULT NULL,
                	phone1 VARCHAR(255) NULL DEFAULT NULL,
                	phone2 VARCHAR(255) NULL DEFAULT NULL,
                	passport_photo VARCHAR(255) NULL DEFAULT NULL,
                	bill_photo VARCHAR(255) NULL DEFAULT NULL,
                	remark VARCHAR(255) NULL DEFAULT NULL,
                	status VARCHAR(255) NULL DEFAULT NULL,
                	date VARCHAR(255) NULL DEFAULT NULL,
                	CTOS INT(10) NULL DEFAULT NULL,
                	introducer INT(255) NULL DEFAULT NULL,
                	payer INT(255) NULL DEFAULT NULL,
                	agent_fee INT(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $customer_details_table);
                
                $employment_details_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."employment_details (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    customer_id VARCHAR(255) NOT NULL,
                	supervisor_name VARCHAR(255) NULL DEFAULT NULL,
                	supervisor_phone VARCHAR(255) NULL DEFAULT NULL,
                	company_name VARCHAR(255) NULL DEFAULT NULL,
                	phone_number VARCHAR(255) NULL DEFAULT NULL,
                	ext VARCHAR(255) NULL DEFAULT NULL,
                	salary INT(255) NULL DEFAULT NULL,
                	pay_day INT(255) NULL DEFAULT NULL,
                	company_name2 VARCHAR(255) NULL DEFAULT NULL,
                	phone_number2 INT(255) NULL DEFAULT NULL,
                	ext2 VARCHAR(255) NULL DEFAULT NULL,
                	salary_detail2 INT(255) NULL DEFAULT NULL,
                	pay_day2 INT(255) NULL DEFAULT NULL,
                	salary_slip VARCHAR(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $employment_details_table);
                
                $funds_dividends_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."funds_dividends (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    branch_id VARCHAR(255) NOT NULL,
                	date date NULL DEFAULT NULL,
                	`current_date` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
                	project VARCHAR(255) NULL DEFAULT NULL,
                	`describe` VARCHAR(255) NULL DEFAULT NULL,
                	`in` double NULL DEFAULT NULL,
                	`out` double NULL DEFAULT NULL,
                	balance double NULL DEFAULT NULL,
                	type VARCHAR(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $funds_dividends_table);
                
                $loan_contract_details_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."loan_contract_details (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    customer_id VARCHAR(255) NOT NULL,
                	date date NULL DEFAULT NULL,
                	total_loan_area VARCHAR(255) NULL DEFAULT NULL,
                	total_tepi_area VARCHAR(255) NULL DEFAULT NULL,
                	total_agreement_amount VARCHAR(255) NULL DEFAULT NULL,
                	fixed_monthly_payment VARCHAR(255) NULL DEFAULT NULL,
                	payment_period VARCHAR(255) NULL DEFAULT NULL,
                	one_time_interest VARCHAR(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $loan_contract_details_table);
                
                $loan_delinquentloan_detail_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."loan_delinquentloan_detail (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    customer_code VARCHAR(255) NOT NULL,
                    loan_id VARCHAR(255) NOT NULL,
                	loan_date VARCHAR(255) NULL DEFAULT NULL,
                	recovery_amount VARCHAR(255) NULL DEFAULT NULL,
                	delinquent VARCHAR(255) NULL DEFAULT NULL,
                	total_loan_balance VARCHAR(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $loan_delinquentloan_detail_table);
                
                $loan_details_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."loan_details (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    code VARCHAR(255) NOT NULL,
                    loan_id VARCHAR(255) NOT NULL,
                	type VARCHAR(255) NULL DEFAULT NULL,
                	flexid INT(11) NULL DEFAULT NULL,
                	status VARCHAR(255) NULL DEFAULT NULL,
                	start_date date NULL DEFAULT NULL,
                	loan_date timestamp(6) NOT NULL DEFAULT current_timestamp(6),
                    loan_amount INT(255) NOT NULL,
                	stamp_duty INT(255) NULL DEFAULT NULL,
                	intrest VARCHAR(255) NULL DEFAULT NULL,
                	intrest2 INT(20) NULL DEFAULT NULL,
                	tenure INT(255) NULL DEFAULT NULL,
                	pokok INT(255) NOT NULL,
                    bunga INT(255) NOT NULL,
                	bunga2 INT(20) NULL DEFAULT NULL,
                	isrounding VARCHAR(255) NULL DEFAULT NULL,
                	refinance_capital INT(255) NULL DEFAULT NULL,
                	default_capital INT(255) NULL DEFAULT NULL,
                	remaining_amount INT(255) NOT NULL,
                    loan_status INT(255) NOT NULL,
                	date VARCHAR(255) NULL DEFAULT NULL,
                	loan_type INT(255) NULL DEFAULT NULL,
                	payday INT(255) NULL DEFAULT NULL,
                	payday2 INT(255) NULL DEFAULT NULL,
                	paypokok INT(255) NULL DEFAULT NULL,
                	paybunga INT(255) NULL DEFAULT NULL,
                	paypokok2 INT(255) NULL DEFAULT NULL,
                	paybunga2 INT(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $loan_details_table);
                
                $loan_payment_details_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."loan_payment_details (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    loan_id VARCHAR(255) NOT NULL,
                    payment_id VARCHAR(255) NOT NULL,
                	date date NULL DEFAULT NULL,
                	type VARCHAR(255) NULL DEFAULT NULL,
                	pokok INT(255) NULL DEFAULT NULL,
                	bunga VARCHAR(255) NULL DEFAULT NULL,
                	date2 date NULL DEFAULT NULL,
                	type2 VARCHAR(255) NULL DEFAULT NULL,
                	pokok2 INT(255) NOT NULL,
                    bunga2 INT(255) NOT NULL,
                	remaining_amount VARCHAR(255) NULL DEFAULT NULL,
                	late_date date NULL DEFAULT NULL
                )";
                mysqli_query($conn, $loan_payment_details_table);
                
                $loan_tepi_details_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."loan_tepi_details (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    loan_id VARCHAR(255) NOT NULL,
                    tepi_id VARCHAR(255) NOT NULL,
                	borrow_date date NULL DEFAULT NULL,
                	tepi_amount INT(255) NULL DEFAULT NULL,
                	received_bunga INT(255) NULL DEFAULT NULL,
                	paid VARCHAR(255) NULL DEFAULT NULL,
                	paid_date date NULL DEFAULT NULL,
                	paid_by_refinance VARCHAR(255) NULL DEFAULT NULL,
                	is_default VARCHAR(255) NOT NULL,
                    state VARCHAR(255) NOT NULL,
                	tepi_status INT(20) NULL DEFAULT NULL,
                	loan_type INT(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $loan_tepi_details_table);
                
                $login_log_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."login_log (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_id VARCHAR(255) NOT NULL,
                    user_type bigint(255) NOT NULL,
                	login_time VARCHAR(255) NULL DEFAULT NULL
                )";
                mysqli_query($conn, $login_log_table);
                
                $operating_expenses_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."operating_expenses (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    branch_id VARCHAR(255) NOT NULL,
                    date bigint(255) NOT NULL,
                	`current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP(),
                	project VARCHAR(255) NOT NULL,
                	`describe` VARCHAR(255) NOT NULL,
                	cost VARCHAR(255) NOT NULL
                )";
                mysqli_query($conn, $operating_expenses_table);
                
                $salary_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."salary (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    loan_id text NULL,
                    month text NULL,
                	amount INT(20) NULL
                )";
                mysqli_query($conn, $salary_table);
                
                 $users_table = "CREATE TABLE IF NOT EXISTS ".$table_prefix."users (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_id VARCHAR(255) NOT NULL,
                	password VARCHAR(255) NOT NULL,
                	user_type INT(20) NULL DEFAULT NULL,
                	name VARCHAR(255) NULL DEFAULT NULL,
                	ic INT(11) NULL DEFAULT NULL,
                	phone_number INT(11) NULL DEFAULT NULL,
                	date timestamp NULL DEFAULT CURRENT_TIMESTAMP()
                )";
                mysqli_query($conn, $users_table);
            }
            /* ************************ Ntl System Domains ************************************************ */
            else if($module_type == 'ntl_system')
            {
                //Sourabh I will create code.
                $ntlbank_details = "CREATE TABLE `{$table_prefix}bank_details` (
                    `id` int(255) NOT NULL AUTO_INCREMENT,
                    `customer_id` varchar(255) NOT NULL,
                    `account_number` varchar(255) DEFAULT NULL,
                    `bank_name` varchar(255) DEFAULT NULL,
                    `account_holder` varchar(255) DEFAULT NULL,
                    `online_bankname` varchar(255) DEFAULT NULL,
                    `username` varchar(255) DEFAULT NULL,
                    `password` varchar(255) DEFAULT NULL,
                    `bank_statment_photo` varchar(255) DEFAULT NULL,
                    PRIMARY KEY (`id`)
                   ) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci";
                mysqli_query($conn, $ntlbank_details);

                $ntlbonus = "CREATE TABLE `{$table_prefix}bonus` (
                    `id` int(11) NOT NULL AUTO_INCREMENT,
                    `agent_id` int(11) NOT NULL,
                    `month` varchar(255) NOT NULL,
                    `year` varchar(255) NOT NULL,
                    `bonus` double NOT NULL,
                    PRIMARY KEY (`id`)
                   ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci";
                mysqli_query($conn, $ntlbonus);

                $ntlBranch = "CREATE TABLE `{$table_prefix}branch` (
                    `id` int(255) NOT NULL AUTO_INCREMENT,
                    `code` varchar(255) NOT NULL,
                    `manager` varchar(255) NOT NULL,
                    `registration_date` date NOT NULL,
                    `hqinitial_funding` int(255) NOT NULL,
                    PRIMARY KEY (`id`)
                   ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci";
                mysqli_query($conn, $ntlBranch);

                $ntlCash_book = "CREATE TABLE `{$table_prefix}cash_book` (
                    `id` int(11) NOT NULL AUTO_INCREMENT,
                    `description` varchar(255) NOT NULL,
                    `type` varchar(255) NOT NULL,
                    `amount` double NOT NULL,
                    `date` date NOT NULL,
                    `date_time` datetime NOT NULL DEFAULT current_timestamp(),
                    `user` int(11) NOT NULL,
                    PRIMARY KEY (`id`)
                   ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci";
                   mysqli_query($conn, $ntlCash_book);

                $ntlCredit_log = "CREATE TABLE `{$table_prefix}credit_log` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `user` int(11) NOT NULL,
                `month` varchar(2) NOT NULL,
                `year` varchar(4) NOT NULL,
                `bonus` double NOT NULL DEFAULT 0,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci";

                mysqli_query($conn, $ntlCredit_log);

                $ntlCustomer_details = "CREATE TABLE `{$table_prefix}customer_details` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `customer_code` varchar(255) DEFAULT NULL,
                `name` varchar(255) DEFAULT NULL,
                `foreigner` varchar(255) DEFAULT NULL,
                `ic` varchar(255) DEFAULT NULL,
                `passport` varchar(255) DEFAULT NULL,
                `phone1` varchar(255) DEFAULT NULL,
                `phone2` varchar(255) DEFAULT NULL,
                `passport_photo` varchar(256) DEFAULT NULL,
                `bill_photo` varchar(256) DEFAULT NULL,
                `remark` varchar(255) DEFAULT NULL,
                `status` varchar(255) DEFAULT NULL,
                `date` date DEFAULT NULL,
                `CTOS` int(1) NOT NULL DEFAULT 0,
                `introducer` int(255) DEFAULT NULL,
                `payer` int(255) DEFAULT NULL,
                `agent_fee` int(255) DEFAULT NULL,
                `agent_id` int(11) DEFAULT NULL,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci";

                mysqli_query($conn, $ntlCustomer_details);

                $ntlEmployment_details_table = "CREATE TABLE `{$table_prefix}employment_details` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `customer_id` varchar(255) DEFAULT NULL,
                `supervisor_name` varchar(255) DEFAULT NULL,
                `supervisor_phone` varchar(255) DEFAULT NULL,
                `company_name` varchar(255) DEFAULT NULL,
                `phone_number` varchar(255) DEFAULT NULL,
                `ext` varchar(255) DEFAULT NULL,
                `salary` int(255) DEFAULT NULL,
                `pay_day` int(255) DEFAULT NULL,
                `company_name2` varchar(255) DEFAULT NULL,
                `phone_number2` int(255) DEFAULT NULL,
                `ext2` varchar(255) DEFAULT NULL,
                `salary_detail2` int(255) DEFAULT NULL,
                `pay_day2` int(255) DEFAULT NULL,
                `salary_slip` varchar(255) DEFAULT NULL,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci";

                mysqli_query($conn, $ntlEmployment_details_table);

                $ntlFund_dividends = "CREATE TABLE `{$table_prefix}funds_dividends` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `branch_id` varchar(255) DEFAULT NULL,
                `date` date NOT NULL,
                `current_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                `project` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                `in` double DEFAULT NULL,
                `out` double DEFAULT NULL,
                `balance` double DEFAULT NULL,
                `type` varchar(255) DEFAULT NULL,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";

                mysqli_query($conn, $ntlFund_dividends);

                $ntlLoan_contract_details = "CREATE TABLE `{$table_prefix}loan_contract_details` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `customer_id` varchar(255) DEFAULT NULL,
                `date` date DEFAULT NULL,
                `total_loan_area` varchar(255) DEFAULT NULL,
                `total_tepi_area` varchar(255) DEFAULT NULL,
                `total_agreement_amount` varchar(255) DEFAULT NULL,
                `fixed_monthly_payment` varchar(255) DEFAULT NULL,
                `payment_period` varchar(255) DEFAULT NULL,
                `one_time_interest` varchar(255) DEFAULT NULL,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";

                mysqli_query($conn, $ntlLoan_contract_details);

                $ntlLoan_delinquentloan_detail = "CREATE TABLE `{$table_prefix}loan_delinquentloan_detail` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `customer_code` varchar(255) DEFAULT NULL,
                `loan_id` varchar(2555) NOT NULL,
                `loan_date` varchar(255) DEFAULT NULL,
                `recovery_amount` varchar(255) DEFAULT NULL,
                `delinquent` varchar(255) DEFAULT NULL,
                `total_loan_balance` varchar(255) DEFAULT NULL,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";

                mysqli_query($conn, $ntlLoan_delinquentloan_detail);

                $ntlLoan_details = "CREATE TABLE `{$table_prefix}loan_details` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `code` varchar(255) NOT NULL,
                `loan_id` varchar(255) NOT NULL,
                `start_date` date NOT NULL,
                `loan_amount` float NOT NULL,
                `intrest` float NOT NULL,
                `deposit` float NOT NULL,
                `gst` float NOT NULL,
                `rebate` float NOT NULL DEFAULT 0,
                `tenure` int(11) NOT NULL,
                `payday` int(11) NOT NULL,
                `type` varchar(255) NOT NULL,
                `phone` varchar(255) NOT NULL,
                `people1` int(11) NOT NULL,
                `people2` int(11) NOT NULL,
                `status` int(1) NOT NULL DEFAULT 0,
                `remaining_amount` float NOT NULL,
                `date` date NOT NULL,
                `created` int(11) NOT NULL,
                `created_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci";

                mysqli_query($conn, $ntlLoan_details);

                $ntlLoan_payment_details = "CREATE TABLE `{$table_prefix}loan_payment_details` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `loan_id` varchar(255) DEFAULT NULL,
                `payment_id` varchar(255) DEFAULT NULL,
                `date` date DEFAULT NULL,
                `type` varchar(255) DEFAULT NULL,
                `pokok` int(255) DEFAULT NULL,
                `bunga` int(255) DEFAULT NULL,
                `date2` date DEFAULT NULL,
                `type2` varchar(255) DEFAULT NULL,
                `pokok2` int(255) DEFAULT NULL,
                `bunga2` int(255) DEFAULT NULL,
                `remaining_amount` varchar(255) DEFAULT NULL,
                `created_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci";

                mysqli_query($conn, $ntlLoan_payment_details);

                $ntlLoan_tepi_details = "CREATE TABLE `{$table_prefix}loan_tepi_details` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `loan_id` varchar(255) DEFAULT NULL,
                `tepi_id` varchar(255) DEFAULT NULL,
                `borrow_date` date DEFAULT NULL,
                `tepi_amount` int(255) DEFAULT NULL,
                `received_bunga` int(255) DEFAULT NULL,
                `paid` varchar(255) DEFAULT NULL,
                `paid_date` date DEFAULT NULL,
                `paid_by_refinance` varchar(255) DEFAULT NULL,
                `is_default` varchar(255) DEFAULT NULL,
                `state` varchar(255) DEFAULT NULL,
                `tepi_status` int(11) NOT NULL DEFAULT 0,
                `loan_type` int(255) NOT NULL DEFAULT 0,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci";

                mysqli_query($conn, $ntlLoan_tepi_details);

                $ntlLogin_details = "CREATE TABLE `{$table_prefix}login_log` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `user_id` varchar(225) NOT NULL,
                `user_type` bigint(20) NOT NULL,
                `login_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";

                mysqli_query($conn, $ntlLogin_details);

                $ntlOperating_expenses = "CREATE TABLE `{$table_prefix}operating_expenses` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `user` int(255) NOT NULL,
                `date` varchar(255) DEFAULT NULL,
                `current_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                `project` varchar(255) DEFAULT NULL,
                `describe` varchar(255) DEFAULT NULL,
                `cost` double NOT NULL,
                `created_by` int(11) NOT NULL,
                `created_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";

                mysqli_query($conn, $ntlOperating_expenses);

                $ntlScore = "CREATE TABLE `{$table_prefix}score` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `agent_id` int(11) NOT NULL,
                `month` varchar(255) NOT NULL,
                `year` varchar(255) NOT NULL,
                `score` double NOT NULL,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci";

                mysqli_query($conn, $ntlScore);

                $ntlUsers = "CREATE TABLE `{$table_prefix}users` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `user_id` varchar(225) NOT NULL,
                `password` varchar(225) NOT NULL,
                `superadmin` int(1) NOT NULL DEFAULT 0,
                `name` varchar(225) NOT NULL,
                `ic` varchar(14) NOT NULL,
                `phone_number` varchar(12) NOT NULL,
                `score` double NOT NULL DEFAULT 0,
                `superior` int(11) NOT NULL,
                `date` timestamp NOT NULL DEFAULT current_timestamp(),
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";

                if(mysqli_query($conn, $ntlUsers)) {
            		$password = password_hash('admin', PASSWORD_DEFAULT);
            		$superadmin = 1;
            		$adduser = "INSERT INTO `{$table_prefix}users` (`user_id`, `password`, `superadmin`, `name`, `ic`, `phone_number`, `superior`) VALUES ('admin', '" . $password . "',". $superadmin .", 'superadmin', '', '', 0)";
            		mysqli_query($conn, $adduser);
            	}
            }
         
            $success = "Domain Created Successfully";
            ?>
                <script>
                    window.location.href="http://crm2.ecomdemo.xyz/superadmin/domain_list.php";
                </script>
            <?php
            
        }
    }
   
    
}
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>Loan Software System</h1></center>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <?php 
	if(isset($success))
	{
	?>
    <section>
    	<div class="container">
        	<div class="row">
            	<div class="col-md-3"></div>
                <div class="col-md-6">
                	<?php echo $success;?>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </section>
   <br/>
    <?php
	}
	?> 
    <section>
    	<div class="container">
            <form method="post" id="myForm">
            
                <div class="row form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <label for="customer_name">Domain Name</label>
                    </div>
                    <div class="col-md-6">
                        <input type="text" name="domain_name" class="form-control" required="required"/>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <label for="customer_guaranty_name">Status</label>
                    </div>
                    <div class="col-md-6">
                        <select name="domain_status" class="form-control">
                            <option value="1" class="form-control">Active</option>
                            <option value="0" class="form-control">Deactive</option>
                        </select>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <label for="module_type">Module Type</label>
                    </div>
                    <div class="col-md-6">
                        <select name="module_type" class="form-control">
                            <option value="crm2" class="form-control">CRM</option>
                            <option value="ntl_system" class="form-control">NTL System</option>
                            <option value="jackg99" class="form-control">Jackg 99</option>
                        </select>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                
                <div class="row form-group">
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success" name="create_domain" value="Create Domain">Create Domain</button>&nbsp;&nbsp;
                       
                    </div>
                    <div class="col-md-2"></div>
                </div>
        	</form>
        </div>
    </section>
    <?php
	//}
	?>
</div>
<style>
.span_hwe
{
	float:left;
	color: #000;
}
.width_hwe
{
	float:right;
	width:95%;
}
.content-header {
	background: #f1f1f1;
	box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.05);
	border-bottom: 1px solid #d0d0d0;
	min-height: 54px;
	height: auto;
	margin-bottom: 20px;
}
.content-header h1 {
	color: #0e0d0d;
	font-size: 22px;
	font-weight: 500;
}

.container-fluid {
	 width: 100%; 
	 padding-right:0px !important; 
	 padding-left:0px !important;
	 margin-right: auto; 
	 margin-left: auto; 
	left: 0;
}
label
{
	font-size: 14px;
	color: #000;
}
.btn-success
{
	background:#038603 !important;
}
</style>
