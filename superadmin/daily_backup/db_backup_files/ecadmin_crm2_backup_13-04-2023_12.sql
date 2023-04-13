

CREATE TABLE `a_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `holder_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `center_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO a_bank VALUES("1","Maybank","Danny","512642643065","9");



CREATE TABLE `a_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `passport_on_hand` varchar(255) DEFAULT NULL,
  `martial` varchar(255) DEFAULT NULL,
  `no_child` varchar(255) DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `current_post_code` varchar(255) DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `current_remark` varchar(255) DEFAULT NULL,
  `current_ownership` varchar(255) DEFAULT NULL,
  `current_stay` varchar(255) DEFAULT NULL,
  `fixed_address` varchar(255) DEFAULT NULL,
  `fixed_city` varchar(255) DEFAULT NULL,
  `fixed_post_code` varchar(255) DEFAULT NULL,
  `fixed_state` varchar(255) DEFAULT NULL,
  `fixed_remark` varchar(255) DEFAULT NULL,
  `fixed_ownership` varchar(255) DEFAULT NULL,
  `fixed_stay` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `personal_remark` varchar(255) DEFAULT NULL,
  `car_plate` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_date` varchar(255) DEFAULT NULL,
  `employment_type` varchar(255) DEFAULT NULL,
  `employment_no` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_city` varchar(255) DEFAULT NULL,
  `company_post_code` varchar(255) DEFAULT NULL,
  `company_state` varchar(255) DEFAULT NULL,
  `business_remark` varchar(255) DEFAULT NULL,
  `company_ownership` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `income_type` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `income_date` varchar(255) DEFAULT NULL,
  `department_position` varchar(255) DEFAULT NULL,
  `income_per_term` varchar(255) DEFAULT NULL,
  `company_tel` varchar(255) DEFAULT NULL,
  `company_remark` varchar(255) DEFAULT NULL,
  `guarantor1_name` varchar(255) DEFAULT NULL,
  `guarantor1_relationship` varchar(255) DEFAULT NULL,
  `guarantor1_ic` varchar(255) DEFAULT NULL,
  `guarantor1_verify` varchar(255) DEFAULT NULL,
  `guarantor1_tel` varchar(255) DEFAULT NULL,
  `guarantor2_name` varchar(255) DEFAULT NULL,
  `guarantor2_relationship` varchar(255) DEFAULT NULL,
  `guarantor2_ic` varchar(255) DEFAULT NULL,
  `guarantor2_verify` varchar(255) DEFAULT NULL,
  `guarantor2_tel` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_card` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `bank_pin` varchar(255) DEFAULT NULL,
  `bank_holder` varchar(255) DEFAULT NULL,
  `bank_remark` varchar(255) DEFAULT NULL,
  `ic_copy` varchar(255) DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `ctos` varchar(255) DEFAULT NULL,
  `photo_consent` varchar(255) DEFAULT NULL,
  `vehicle_photo` varchar(255) DEFAULT NULL,
  `loan_agreement` varchar(255) DEFAULT NULL,
  `bank_statement1` varchar(255) DEFAULT NULL,
  `bank_statement2` varchar(255) DEFAULT NULL,
  `bank_statement3` varchar(255) DEFAULT NULL,
  `pay_slip1` varchar(255) DEFAULT NULL,
  `pay_slip2` varchar(255) DEFAULT NULL,
  `pay_slip3` varchar(255) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO a_customer VALUES("7","9","0987654321Â·","Chinese","0987654321","Female","No","--- Select Martial Status ---","0","","","","--- Select State ---","","--- Select Ownership ---","","","","","--- Select State ---","","--- Select Ownership ---","","","","","","","","","","--- Select Employment Type ---","","","","","--- Select State ---","","--- Select Ownership ---","","--- Select Income Type ---","--- Select Occupation Category ---","--- Select Income Date ---","","","","","","","","--- Select Verify ---","","","","","--- Select Verify ---","","--- Select Bank ---","Not Available","","","","","upload202303071678158514/123.jpeg","","","upload202303171679023626/123.jpeg","upload202303171679023728/user-logo.png","","","","","","","","2023-03-07","11:08:34","Active");
INSERT INTO a_customer VALUES("8","9","123","","213","","No","--- Select Martial Status ---","4","","","","--- Select State ---","","--- Select Ownership ---","","","","","--- Select State ---","","--- Select Ownership ---","","","","","","","","","","--- Select Employment Type ---","","","","","--- Select State ---","","--- Select Ownership ---","","--- Select Income Type ---","--- Select Occupation Category ---","--- Select Income Date ---","","","","","","","","--- Select Verify ---","","","","","--- Select Verify ---","","--- Select Bank ---","Not Available","","","","","","upload202303071678158885/123.jpeg","","upload202303171679023626/123.jpeg","upload202303171679023728/user-logo.png","","","","","","","","2023-03-07","11:14:45","Active");
INSERT INTO a_customer VALUES("9","9","1234","Chinese","1234566778","Female","No","Single","","","","","--- Select State ---","","--- Select Ownership ---","","","","","--- Select State ---","","--- Select Ownership ---","","","","","","","","","","--- Select Employment Type ---","","","","","--- Select State ---","","--- Select Ownership ---","","--- Select Income Type ---","--- Select Occupation Category ---","--- Select Income Date ---","","","","","","","","--- Select Verify ---","","","","","--- Select Verify ---","","--- Select Bank ---","Not Available","","","","","","","","","","","","","","","","","2023-03-18","16:42:11","Active");



CREATE TABLE `a_instalment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` int(11) NOT NULL,
  `payment_due` datetime NOT NULL,
  `due_amount` double NOT NULL,
  `late_charge` double NOT NULL,
  `cs_remark` varchar(255) NOT NULL,
  `cs_collector_remark` varchar(255) NOT NULL,
  `dept_collector_remark` varchar(255) NOT NULL,
  `settle_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO a_instalment VALUES("4","7","2023-03-16 11:41:00","475","0","","","","Not Yet Settle/Confirm","Unpaid");
INSERT INTO a_instalment VALUES("5","7","2023-03-23 00:00:00","475","0","","","","Not Yet Settle/Confirm","Unpaid");
INSERT INTO a_instalment VALUES("6","8","2023-03-16 11:41:00","475","0","5","2","","Not Yet Settle/Confirm","Unpaid");
INSERT INTO a_instalment VALUES("7","8","2023-03-23 00:00:00","475","0","3","4","","Not Yet Settle/Confirm","Unpaid");
INSERT INTO a_instalment VALUES("8","9","2023-02-25 15:46:00","475","0","","","","Not Yet Settle/Confirm","Unpaid");
INSERT INTO a_instalment VALUES("9","9","2023-03-04 00:00:00","475","0","","","","Not Yet Settle/Confirm","Unpaid");
INSERT INTO a_instalment VALUES("10","10","2023-02-25 15:46:00","475","0","1","2","","Customer","Unpaid");
INSERT INTO a_instalment VALUES("11","10","2023-03-04 00:00:00","475","0","3","4","","Customer","Unpaid");
INSERT INTO a_instalment VALUES("12","11","2023-02-01 16:55:00","450","0","","","","Not Yet Settle/Confirm","Unpaid");
INSERT INTO a_instalment VALUES("13","11","2023-02-08 00:00:00","450","0","","","","Not Yet Settle/Confirm","Unpaid");



CREATE TABLE `a_loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL,
  `branch1` varchar(255) NOT NULL,
  `branch2` varchar(255) NOT NULL,
  `is_pawn` varchar(255) NOT NULL,
  `pawn_category` varchar(255) NOT NULL,
  `pawn_item` varchar(255) NOT NULL,
  `pawn_image1` varchar(255) NOT NULL,
  `pawn_image2` varchar(255) NOT NULL,
  `pawn_image3` varchar(255) NOT NULL,
  `contra_loan` varchar(255) NOT NULL,
  `contra_amount` double NOT NULL,
  `application_date` datetime NOT NULL,
  `loan_source` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `loan_method` varchar(255) NOT NULL,
  `dept_period` int(11) NOT NULL,
  `loan_package` varchar(255) NOT NULL,
  `dept_type` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `instalment_period` int(11) NOT NULL,
  `principal_amount` double NOT NULL,
  `instalment_type` varchar(255) NOT NULL,
  `deposit_amount` double NOT NULL,
  `interest` double NOT NULL,
  `application_fee` double NOT NULL,
  `interest_fixed` double NOT NULL,
  `payment_upfront` double NOT NULL,
  `only_interest` int(11) NOT NULL,
  `loan_agreement` varchar(255) DEFAULT NULL,
  `loan_stamping` varchar(255) DEFAULT NULL,
  `collection_in_progress` varchar(255) NOT NULL DEFAULT 'No',
  `follow_up_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Normal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO a_loan VALUES("7","8","","","No","","","","","","","0","2023-03-16 11:41:00","JB (Inquiry)","2023-03-16 11:41:00","","OBL Method","2","Normal","Weekly","","0","1000","","0","0","250","0","50","0","","","No","2023-03-16","Normal");
INSERT INTO a_loan VALUES("8","8","","","No","","","","","","","0","2023-03-16 11:41:00","JB (Inquiry)","2023-03-16 11:41:00","","OBL Method","2","Normal","Weekly","","0","1000","","0","0","250","0","50","0","upload202303171679038364/123.jpeg","upload202303171679038515/user-logo.png","No","2023-03-16","Normal");
INSERT INTO a_loan VALUES("9","8","","","No","","","","","","","0","2023-02-25 15:46:00","JB (Inquiry)","2023-02-25 15:46:00","2023-03-11 00:00:00","Normal","2","Normal","Weekly","","0","1000","Weekly","0","0","250","0","50","0","","","No","2023-02-25","Normal");
INSERT INTO a_loan VALUES("10","8","","","No","","","","","","","0","2023-02-25 15:46:00","JB (Inquiry)","2023-02-25 15:46:00","2023-03-04 00:00:00","Normal","2","Normal","Weekly","","0","1000","Weekly","0","0","250","0","50","0","","","No","2023-02-25","Normal");
INSERT INTO a_loan VALUES("11","9","","","No","","","","","","","0","2023-02-01 16:55:00","KL (Inquiry)","2023-02-01 16:55:00","2023-02-08 00:00:00","OBL Method","2","Normal","Weekly","","0","1000","","100","0","100","0","100","0","upload202303201679281106/123.jpeg","upload202303201679281407/123.jpeg","No","2023-02-01","Normal");



CREATE TABLE `a_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` int(11) NOT NULL,
  `instalment_id` int(11) NOT NULL,
  `by_agent` varchar(255) NOT NULL DEFAULT 'No',
  `slip` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_on` datetime NOT NULL,
  `payment_amount` double NOT NULL,
  `bank_charge` double NOT NULL,
  `out_bank` varchar(255) NOT NULL,
  `out_name` varchar(255) NOT NULL,
  `out_account` varchar(255) NOT NULL,
  `in_bank` varchar(255) NOT NULL,
  `in_name` varchar(255) NOT NULL,
  `in_account` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO a_payment VALUES("7","11","12","No","","Out","2023-03-20 10:57:36","900","0","Maybank","Danny","512642643065","","","","","Pending");



CREATE TABLE `administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO administration VALUES("1","admin","admin");



CREATE TABLE `center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_sequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO center_detail VALUES("1","Center A","Center A address","","","","0123456789","","-","1");
INSERT INTO center_detail VALUES("2","Center B","Center B address","","","","0123456789","","-","2");
INSERT INTO center_detail VALUES("3","First 1","First 1","","","","0123+","","0123+","3");
INSERT INTO center_detail VALUES("4","Example","123","","","","123","","123","4");
INSERT INTO center_detail VALUES("5","System 88","-","","","","-","","-","5");
INSERT INTO center_detail VALUES("6","AX Curtain","AX Curtain","","","","-","","-","6");
INSERT INTO center_detail VALUES("9","OBL System","OBL","","","","-","","-","7");
INSERT INTO center_detail VALUES("10","test","test","","","","0123456789","","-","8");
INSERT INTO center_detail VALUES("11","Elite CM","Elite CM","","","","1234567890","","1234567890","9");



CREATE TABLE `collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_date_disp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `remark1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` longblob,
  `image_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO collection VALUES("1","1","200","100","1","1665331200","","","","","","","");
INSERT INTO collection VALUES("19","21","0","200","5","1670342400","0","åˆ©","","","","","");
INSERT INTO collection VALUES("20","22","300","0","5","1671206400","0","ä¾†éŒ¢","","","","","");
INSERT INTO collection VALUES("21","24","250","0","5","1670774400","0","æ¸…","","","","","");
INSERT INTO collection VALUES("22","25","300","0","5","1671033600","0","æ¸…","","","","","");
INSERT INTO collection VALUES("42","26","0","400","5","1670947200","1","åˆ†æœŸ","","","","","");
INSERT INTO collection VALUES("43","26","0","200","5","1671033600","0","ä¾†æœŸ","","","","","");
INSERT INTO collection VALUES("44","26","0","200","5","1671552000","2","åˆ†æœŸ","","","","","");
INSERT INTO collection VALUES("46","27","1000","1000","5","1673193600","1","åˆ†æœŸ","1","","","","");
INSERT INTO collection VALUES("48","29","100","100","5","1673884800","6","ä¾†åˆ©","","","","","");
INSERT INTO collection VALUES("49","29","500","500","5","1673971200","0","æ¸…","","","","","");
INSERT INTO collection VALUES("50","29","0","100","5","1673884800","0","ä¾†åˆ©","","","","","");
INSERT INTO collection VALUES("55","31","200","0","5","1673366400","7","ä¾†éŒ¢","","","","","");
INSERT INTO collection VALUES("56","31","0","200","5","1673971200","0","åˆ©","","","","","");
INSERT INTO collection VALUES("57","31","0","200","5","1673971200","7","åˆ©","","","","","");
INSERT INTO collection VALUES("58","31","0","200","5","1673798400","0","åˆ©","","","","","");
INSERT INTO collection VALUES("59","31","0","200","5","1673971200","0","åˆ©","","","","","");
INSERT INTO collection VALUES("61","21","0","50","5","1670515200","0","ä¾†åˆ©","","","","","");
INSERT INTO collection VALUES("63","31","0","200","5","1673452800","1","åˆ†æœŸ","","","","","");
INSERT INTO collection VALUES("64","31","0","100","5","1673366400","0","ä¾†æœŸ","","","","","");
INSERT INTO collection VALUES("65","31","0","200","5","1673971200","10","åˆ†æœŸ","","","","","");
INSERT INTO collection VALUES("66","31","1000","0","5","1673971200","0","æ¸…","","","","","");
INSERT INTO collection VALUES("67","32","0","200","5","1674057600","0","åˆ©","","","","","");
INSERT INTO collection VALUES("68","32","0","100","5","1674144000","0","ä¾†åˆ©","","","","","");
INSERT INTO collection VALUES("69","32","0","800","5","1674316800","0","æ¸…","","","","","");
INSERT INTO collection VALUES("70","28","1000","0","5","1673539200","0","æ¸…","","","","","");
INSERT INTO collection VALUES("71","28","0","0","5","1673539200","0","æ¸…","","","","","");
INSERT INTO collection VALUES("72","33","0","200","5","1673971200","0","åˆ©","","","","","");
INSERT INTO collection VALUES("73","33","0","100","5","1674057600","0","ä¾†åˆ©","","","","","");
INSERT INTO collection VALUES("75","34","350","0","5","1675180800","1","åˆ†æœŸ","åˆ†8æœŸ/350 æ¯ä¸ªæœˆ1-2å·è¿˜","","","","");
INSERT INTO collection VALUES("94","33","0","150","5","1675353600","0","åˆ©","","","","","");
INSERT INTO collection VALUES("95","33","100","0","5","1675353600","0","ä¾†éŒ¢","","","","","");
INSERT INTO collection VALUES("96","35","100","0","5","1675353600","0","æ¸…","","","","","");
INSERT INTO collection VALUES("97","33","0","150","5","1675612800","1","åˆ†æœŸ","","","","","");
INSERT INTO collection VALUES("98","22","0","200","5","1675612800","0","åˆ©","","","","","");
INSERT INTO collection VALUES("99","37","0","200","5","1675008000","0","åˆ©","","","","","");
INSERT INTO collection VALUES("102","36","0","250","5","1675180800","0","åˆ©","","","","","");
INSERT INTO collection VALUES("105","36","500","0","5","1676044800","0","æ¸…","","","","","");
INSERT INTO collection VALUES("106","38","0","0","5","1675094400","0","åˆ©","JAM","","","","");
INSERT INTO collection VALUES("111","20","0","150","5","1671206400","3","åˆ©","","","","","");
INSERT INTO collection VALUES("113","61","500","0","5","1678204800","0","æ¸…","","","","","");
INSERT INTO collection VALUES("114","62","500","0","5","1678204800","0","æ¸…","","","","","");
INSERT INTO collection VALUES("117","63","0","0","10","1678464000","","","","","","","");
INSERT INTO collection VALUES("118","64","100","0","10","1678464000","","","","","","","");
INSERT INTO collection VALUES("119","65","0","0","10","1678464000","","","","","","","");
INSERT INTO collection VALUES("120","66","100","0","10","1678464000","","","","","","","");
INSERT INTO collection VALUES("121","63","100","0","10","1679932800","","","","","","","");
INSERT INTO collection VALUES("122","64","0","0","10","1679932800","","","","","","","");
INSERT INTO collection VALUES("123","65","0","0","10","1679932800","","","","","","","");
INSERT INTO collection VALUES("124","66","0","0","10","1679932800","","","","","","","");
INSERT INTO collection VALUES("125","71","0","300","5","1678809600","6","åˆ©","","","","","");
INSERT INTO collection VALUES("126","75","1000","0","5","1678809600","0","æ¸…","","","","","");
INSERT INTO collection VALUES("127","76","500","0","5","1679155200","0","æ¸…","","","","","");



CREATE TABLE `crm_1672225149_588_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225149_588_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225149_588_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225149_588_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225149_588_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `new_IC` varchar(255) NOT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `Guarantor_Name` varchar(255) DEFAULT NULL,
  `Guarantor_Telephone` varchar(255) DEFAULT NULL,
  `Guarantor_Info` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `customer_pic` varchar(255) DEFAULT NULL,
  `customer_pic_ic` varchar(255) DEFAULT NULL,
  `customer_guarantor_pic` varchar(255) DEFAULT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225149_588_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225149_588_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225149_588_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225340_385_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225340_385_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225340_385_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225340_385_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225340_385_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225340_385_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225340_385_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225785_977_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225785_977_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225785_977_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225785_977_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225785_977_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225785_977_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672225785_977_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672226998_31_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672226998_31_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672226998_31_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672226998_31_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672226998_31_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672226998_31_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672226998_31_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672227014_785_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672227014_785_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672227014_785_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672227014_785_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672227014_785_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672227014_785_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672227014_785_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672368458_188_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672368458_188_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672368458_188_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672368458_188_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672368458_188_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672368458_188_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672368458_188_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672369053_65_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672369053_65_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672369053_65_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672369053_65_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672369053_65_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672369053_65_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672369053_65_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464755_306_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464755_306_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464755_306_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464755_306_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464755_306_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464755_306_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464755_306_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464806_683_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464806_683_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464806_683_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464806_683_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464806_683_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464806_683_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672464806_683_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672465889_871_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672465889_871_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672465889_871_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672465889_871_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672465889_871_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672465889_871_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672465889_871_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672493553_901_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672493553_901_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672493553_901_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672493553_901_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672493553_901_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672493553_901_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672493553_901_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672494306_309_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672494306_309_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672494306_309_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672494306_309_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672494306_309_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672494306_309_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672494306_309_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672624682_287_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672624682_287_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672624682_287_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672624682_287_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672624682_287_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672624682_287_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672624682_287_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672626712_34_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672626712_34_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672626712_34_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672626712_34_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672626712_34_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672626712_34_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1672626712_34_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149658_184_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149658_184_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149658_184_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149658_184_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149658_184_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149658_184_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149658_184_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149678_350_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149678_350_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149678_350_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149678_350_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149678_350_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149678_350_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1675149678_350_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `online_bankname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `bank_statment_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `registration_date` varchar(255) DEFAULT NULL,
  `hqinitial_funding` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_customer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) NOT NULL,
  `customer_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `foreigner` varchar(255) DEFAULT NULL,
  `ic` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `passport_photo` varchar(255) DEFAULT NULL,
  `bill_photo` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `CTOS` int(10) DEFAULT NULL,
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_employment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_funds_dividends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `current_date` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `project` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_loan_contract_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) DEFAULT NULL,
  `total_tepi_area` varchar(255) DEFAULT NULL,
  `total_agreement_amount` varchar(255) DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) DEFAULT NULL,
  `payment_period` varchar(255) DEFAULT NULL,
  `one_time_interest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_loan_delinquentloan_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `loan_date` varchar(255) DEFAULT NULL,
  `recovery_amount` varchar(255) DEFAULT NULL,
  `delinquent` varchar(255) DEFAULT NULL,
  `total_loan_balance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `flexid` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `loan_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `loan_amount` int(255) NOT NULL,
  `stamp_duty` int(255) DEFAULT NULL,
  `intrest` varchar(255) DEFAULT NULL,
  `intrest2` int(20) DEFAULT NULL,
  `tenure` int(255) DEFAULT NULL,
  `pokok` int(255) NOT NULL,
  `bunga` int(255) NOT NULL,
  `bunga2` int(20) DEFAULT NULL,
  `isrounding` varchar(255) DEFAULT NULL,
  `refinance_capital` int(255) DEFAULT NULL,
  `default_capital` int(255) DEFAULT NULL,
  `remaining_amount` int(255) NOT NULL,
  `loan_status` int(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `loan_type` int(255) DEFAULT NULL,
  `payday` int(255) DEFAULT NULL,
  `payday2` int(255) DEFAULT NULL,
  `paypokok` int(255) DEFAULT NULL,
  `paybunga` int(255) DEFAULT NULL,
  `paypokok2` int(255) DEFAULT NULL,
  `paybunga2` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_loan_payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `pokok` int(255) DEFAULT NULL,
  `bunga` varchar(255) DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL,
  `pokok2` int(255) NOT NULL,
  `bunga2` int(255) NOT NULL,
  `remaining_amount` varchar(255) DEFAULT NULL,
  `late_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_loan_tepi_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` varchar(255) NOT NULL,
  `tepi_id` varchar(255) NOT NULL,
  `borrow_date` date DEFAULT NULL,
  `tepi_amount` int(255) DEFAULT NULL,
  `received_bunga` int(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_by_refinance` varchar(255) DEFAULT NULL,
  `is_default` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `tepi_status` int(20) DEFAULT NULL,
  `loan_type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` bigint(255) NOT NULL,
  `login_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_operating_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) NOT NULL,
  `date` bigint(255) NOT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `project` varchar(255) NOT NULL,
  `describe` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` text,
  `month` text,
  `amount` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680615448_740_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ic` int(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `new_IC` varchar(255) NOT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `Guarantor_Name` varchar(255) DEFAULT NULL,
  `Guarantor_Telephone` varchar(255) DEFAULT NULL,
  `Guarantor_Info` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `customer_pic` varchar(255) DEFAULT NULL,
  `customer_pic_ic` varchar(255) DEFAULT NULL,
  `customer_guarantor_pic` varchar(255) DEFAULT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680674204_182_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `online_bankname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `bank_statment_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `registration_date` varchar(255) DEFAULT NULL,
  `hqinitial_funding` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO crm_1680835808_707_branch VALUES("1","A","","2023-04-07","100000");



CREATE TABLE `crm_1680835808_707_customer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) NOT NULL,
  `customer_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `foreigner` varchar(255) DEFAULT NULL,
  `ic` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `passport_photo` varchar(255) DEFAULT NULL,
  `bill_photo` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `CTOS` int(10) DEFAULT NULL,
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_employment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_funds_dividends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `current_date` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `project` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_loan_contract_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) DEFAULT NULL,
  `total_tepi_area` varchar(255) DEFAULT NULL,
  `total_agreement_amount` varchar(255) DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) DEFAULT NULL,
  `payment_period` varchar(255) DEFAULT NULL,
  `one_time_interest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_loan_delinquentloan_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `loan_date` varchar(255) DEFAULT NULL,
  `recovery_amount` varchar(255) DEFAULT NULL,
  `delinquent` varchar(255) DEFAULT NULL,
  `total_loan_balance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `flexid` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `loan_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `loan_amount` int(255) NOT NULL,
  `stamp_duty` int(255) DEFAULT NULL,
  `intrest` varchar(255) DEFAULT NULL,
  `intrest2` int(20) DEFAULT NULL,
  `tenure` int(255) DEFAULT NULL,
  `pokok` int(255) NOT NULL,
  `bunga` int(255) NOT NULL,
  `bunga2` int(20) DEFAULT NULL,
  `isrounding` varchar(255) DEFAULT NULL,
  `refinance_capital` int(255) DEFAULT NULL,
  `default_capital` int(255) DEFAULT NULL,
  `remaining_amount` int(255) NOT NULL,
  `loan_status` int(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `loan_type` int(255) DEFAULT NULL,
  `payday` int(255) DEFAULT NULL,
  `payday2` int(255) DEFAULT NULL,
  `paypokok` int(255) DEFAULT NULL,
  `paybunga` int(255) DEFAULT NULL,
  `paypokok2` int(255) DEFAULT NULL,
  `paybunga2` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_loan_payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `pokok` int(255) DEFAULT NULL,
  `bunga` varchar(255) DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL,
  `pokok2` int(255) NOT NULL,
  `bunga2` int(255) NOT NULL,
  `remaining_amount` varchar(255) DEFAULT NULL,
  `late_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_loan_tepi_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` varchar(255) NOT NULL,
  `tepi_id` varchar(255) NOT NULL,
  `borrow_date` date DEFAULT NULL,
  `tepi_amount` int(255) DEFAULT NULL,
  `received_bunga` int(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_by_refinance` varchar(255) DEFAULT NULL,
  `is_default` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `tepi_status` int(20) DEFAULT NULL,
  `loan_type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` bigint(255) NOT NULL,
  `login_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO crm_1680835808_707_login_log VALUES("1","admin","2","2023-04-07 15:40:31");
INSERT INTO crm_1680835808_707_login_log VALUES("2","admin","2","2023-04-07 15:47:54");
INSERT INTO crm_1680835808_707_login_log VALUES("3","admin","2","2023-04-07 15:52:14");



CREATE TABLE `crm_1680835808_707_operating_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) NOT NULL,
  `date` bigint(255) NOT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `project` varchar(255) NOT NULL,
  `describe` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` text,
  `month` text,
  `amount` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1680835808_707_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1680835808_707_users VALUES("1","superadmin","$2y$10$CEYjK5h0V2.Y3Qarvlhb9.94xw2h3DdepfGsQ7ygnMznuP4XoTtUy","2","super admin","123344","1234567890","2022-08-17 06:11:42");
INSERT INTO crm_1680835808_707_users VALUES("2","staff","$2y$10$vHuSBrsq6OTLdpmQiGuq1OKjWZAqHnw7ieW8dBm3rdOhkwqRvmqV2","3","test staff","123456","123","2022-08-17 06:12:39");
INSERT INTO crm_1680835808_707_users VALUES("3","admin","$2y$10$RnPbSJCGYLNSmJPPGgMTh.MQfbgId8HsddSo4cX41MePsqCqaGgiK","2","admin","123456","123","2022-08-17 06:12:48");
INSERT INTO crm_1680835808_707_users VALUES("4","iii","$2y$10$ggyPjiAfb8XJLooh7zCtYOCjfJLYkg0Fe.fred5nGgpc02GgT69d2","2","adas","345","345","2022-08-17 06:12:50");



CREATE TABLE `crm_1680872610_463_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680872610_463_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680872610_463_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680872610_463_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680872610_463_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680872610_463_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680872610_463_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680872610_463_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680872610_463_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680872610_463_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680872610_463_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680872610_463_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680872610_463_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680872610_463_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680872610_463_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1680872610_463_users VALUES("0","superadmin","$2y$10$RnPbSJCGYLNSmJPPGgMTh.MQfbgId8HsddSo4cX41MePsqCqaGgiK","1","superadmin","123344","0123456789","0","0","0000-00-00 00:00:00");
INSERT INTO crm_1680872610_463_users VALUES("1","admin","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","1","admin","123344","01234567890","-4000","0","2022-11-11 14:44:18");
INSERT INTO crm_1680872610_463_users VALUES("7","lam","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","0","lam","2147483647","0109338967","148586","1","0000-00-00 00:00:00");
INSERT INTO crm_1680872610_463_users VALUES("8","tony","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","0","tony","2147483647","01758957895","19391","1","2022-11-29 03:42:49");
INSERT INTO crm_1680872610_463_users VALUES("9","roy","$2y$10$c.XjikReNpcyJ0sjxumI8.DU3BoLiQOfxkXSyueneiCGIKqJ6.GZG","0","roy","2147483647","01785446461","10080","1","2022-11-29 03:43:19");
INSERT INTO crm_1680872610_463_users VALUES("16","adrian","$2y$10$v1f6OHcMVFoPUaWwJ/7UlOE5HgpV4nq3JIzCHK2PfzRcJz9fmiBQa","0","adrian","2569874","012123456","1025","1","2022-12-14 01:27:06");
INSERT INTO crm_1680872610_463_users VALUES("17","nick","$2y$10$InAAAMP4IQe/gzGmN8F1qe/nuT5HAPS/yqY54s1ofyCsRhJPveuJ.","0","nick","00000","00000","1500","1","2023-02-07 09:21:31");
INSERT INTO crm_1680872610_463_users VALUES("18","jimmy","$2y$10$8VRyZs8.d8juuoDK3hhblOqIVUadx8Spz7z6mJhWVM7dgg9ZPmney","0","jimmy","0","0","3745","1","2023-02-17 07:35:37");
INSERT INTO crm_1680872610_463_users VALUES("22","NL","$2y$10$oto5ZaLOFgfdi3H91gvdJ.e8fvBilKCxEzsj1CpJchY6cEVgufNcC","0","NL","040920100933","01116677499","49225","7","2023-04-03 06:29:57");



CREATE TABLE `crm_1680873458_422_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680874885_659_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680874885_659_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680874885_659_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680874885_659_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680874885_659_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680874885_659_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680874885_659_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680874885_659_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680874885_659_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680874885_659_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680874885_659_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680874885_659_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680874885_659_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1680874885_659_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=777 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1680874885_659_login_log VALUES("773","admin","1","2023-04-10 18:26:59");
INSERT INTO crm_1680874885_659_login_log VALUES("774","admin","1","2023-04-10 18:47:51");
INSERT INTO crm_1680874885_659_login_log VALUES("775","admin","1","2023-04-10 19:22:53");
INSERT INTO crm_1680874885_659_login_log VALUES("776","admin","1","2023-04-10 19:24:11");



CREATE TABLE `crm_1680874885_659_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1680874885_659_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1680874885_659_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1680874885_659_users VALUES("23","admin","$2y$10$snNkCd06YVPhPi7N5T.PmOUepwlIuE.lP4mZE0hrsbbJWRugRd7uK","1","superadmin","12233456789","9636857477","0","0","2023-04-10 10:05:24");



CREATE TABLE `crm_1681127140_706_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127140_706_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127140_706_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127140_706_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127140_706_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127140_706_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127140_706_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127140_706_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127140_706_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127140_706_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127140_706_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127140_706_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127140_706_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127140_706_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127140_706_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127140_706_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127140_706_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127494_91_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127494_91_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127494_91_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127494_91_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127494_91_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127494_91_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127494_91_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127494_91_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127494_91_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127494_91_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127494_91_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127494_91_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127494_91_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127494_91_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127494_91_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127494_91_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127494_91_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127735_75_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127735_75_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127735_75_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127735_75_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127735_75_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127735_75_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127735_75_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127735_75_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127735_75_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127735_75_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127735_75_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127735_75_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127735_75_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681127735_75_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=774 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681127735_75_login_log VALUES("773","admin","1","2023-04-10 19:59:47");



CREATE TABLE `crm_1681127735_75_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681127735_75_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681127735_75_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681127735_75_users VALUES("23","admin","$2y$10$e4xvk2jULwEfjV84pj1CGedolZtRCd4IvZkBrVN8hmwNMwNvcblrO","1","superadmin","","","0","0","2023-04-10 11:58:07");



CREATE TABLE `crm_1681128008_143_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128008_143_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128008_143_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128008_143_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128008_143_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128008_143_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128008_143_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128008_143_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128008_143_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128008_143_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128008_143_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128008_143_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128008_143_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128008_143_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128008_143_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128008_143_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128008_143_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128164_458_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681128164_458_bank_details VALUES("187","111222","","","","","","","");
INSERT INTO crm_1681128164_458_bank_details VALUES("188","222333","","","","","","","");
INSERT INTO crm_1681128164_458_bank_details VALUES("189","333444","","","","","","","");
INSERT INTO crm_1681128164_458_bank_details VALUES("190","1112222","","","","","","","");



CREATE TABLE `crm_1681128164_458_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128164_458_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128164_458_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128164_458_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128164_458_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681128164_458_customer_details VALUES("10","06088","打工印度佬","FALSE","750109045193","","0162806088","","","","","Active","2022-11-17","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("11","90911","世界政府","FALSE","810902055153","","0132390911","","includes/img/90911/upload202212091670577181/WeChat Image_202212091710413.jpg","includes/img/90911/upload202212091670577181/WeChat Image_202212091710412.jpg","","Active","2022-11-29","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("12","71302","吉兰丹网卖","FALSE","840815035768","","0129571302","","","","30% 4x5  24/2/23","Active","2022-11-29","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("13","70960","卖鱼哥","FALSE","910322036237","","0177770960","","","","","Active","2022-11-29","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("15","77764","PERAK WAREHOUSE","FALSE","700318085719","","0167577764","","","","","Active","2022-11-30","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("16","03766","MERSING 餐饮","FALSE","840930015156","","01157503766","","","","","Active","2022-11-30","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("17","88172","批发礼品店","FALSE","891214035674","","0199488172","","","","","Active","2022-11-30","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("18","17708","PETRONAS员工","FALSE","830707086489","","0196917708","","","","","Active","2022-12-01","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("21","83720","物理司机","FALSE","981102087938","","0167883720","","","","","Active","2022-12-05","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("22","50503","粿条仔","FALSE","791220095173","","0123450503","","","","","Active","2022-12-05","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("23","08064","卖金姐","FALSE","840410016358","","0133808064","","","","","Active","2022-12-05","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("24","29860","PN路边摊","FALSE","790916085526","","01112429860","","","","","Active","2022-12-05","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("25","43810","SLG 保安印","FALSE","911029106595","","0163543810","","","","","Active","2022-12-05","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("26","68595","PG马来老师","FALSE","690628105758","","0142368595","","","","","Active","2022-12-07","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("27","13044","SP蛋糕","FALSE","810426025606","","0175413044","","","","","Active","2022-12-07","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("28","02568","阿明哥","FALSE","680704115335","","0149002568","","","","","Active","2022-12-07","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("29","19827","玻璃老师","FALSE","820528025438","","01110519827","","","","","Active","2022-12-07","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("30","67073","SABAH NIPPON","FALSE","910716125371","","01131867073","","","","","Active","2022-12-07","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("31","53518","BALAKONG MAKNAN","FALSE","831225145129","","0122753518","","","","","Active","2022-12-07","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("32","17396","MLK卖吃哥","FALSE","910411045151","","01153017396","","","","","Active","2022-12-07","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("33","55065","KT餐饮业","FALSE","780208065752","","0199055065","","","","","Active","2022-12-07","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("34","60657","MLK卖吃","FALSE","890817235101","","0146060657","","","","","Active","2022-12-08","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("35","99242","PJ工程婆","FALSE","680515075514","","0183599242","","","","","Active","2022-12-08","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("36","26747","小公鸡","FALSE","810306055149","","0196326747","","","","","Active","2022-12-09","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("38","07829","女大狗","FALSE","890929035550","","01158807829","","","","","Active","2022-12-09","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("39","05161","巴生网卖","FALSE","820301105388","","0172305161","","","","","Active","2022-12-09","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("40","44800","PUCHONG运输","FALSE","670506105583","","0163644800","","","","","Active","2022-12-09","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("41","43617","硬水BOSS","FALSE","831217025821","","0123143617","","","","","Active","2022-12-10","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("42","69036","男护士四眼佬","FALSE","851223055451","","0104669036","","","","","Active","2022-12-13","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("43","91050","SRWK果园员工","FALSE","740906135512","","0178591050","","","","","Active","2022-12-14","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("44","68108","CHICKEN WING","FALSE","930911125703","","0178568108","","","","","Active","2022-12-14","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("45","02020","JB CATERING","FALSE","860808235612","","01126302020","","","","","Active","2022-12-15","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("46","78179","印刷衣服","FALSE","750915065375","","0148178179","","","","","Active","2022-12-15","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("47","37804","吉打清洁工","FALSE","980610065140","","0132237804","","","","","Active","2022-12-15","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("48","34235","PERAK 电子厂","FALSE","931228085334","","0135134235","","","","","Active","2022-12-15","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("49","99001","MLK修车老板","FALSE","760316045363","","0176499001","","","","","Active","2022-12-16","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("50","69589","喷射机","FALSE","890828015075","","0174569589","","","","","Active","2022-12-16","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("51","85042","行政政府","FALSE","930929035458","","0169785042","","","","","Active","2022-12-16","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("52","90141","国家体育馆","FALSE","760706145589","","0127890141","","","","4x5 40% 11/1/23","Active","2022-12-16","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("53","56559","F&B打工妹","FALSE","000425120682","","01162356559","","","","","Active","2022-12-16","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("54","62113","校车女神","FALSE","930805086042","","01154062113","","","","","Active","2022-12-16","0","0","0","0","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("55","99016","四眼黑妹","FALSE","991218055152","","01164699016","","","","","Active","2022-12-17","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("56","31229","NASI KUAT 阿嫲","FALSE","761010065040","","0142531229","","","","","Active","2022-12-17","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("57","22174","JENJAROM工厂女","FALSE","711027055214","","01172396738","","","","","Active","2022-12-21","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("58","74215","SHAH ALAM 姐","FALSE","820523055128","","0172674215","","","","","Active","2022-12-21","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("59","93406","阳光炸鸡店","FALSE","651212125550","","0177693406","","","","4x5 35%, 8x4 35% 
3/3/23 ","Active","2022-12-21","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("60","49435","PERAK椰浆饭","FALSE","830918145960","","0175749435","","","","","Active","2022-12-22","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("61","04689","印度托儿所","FALSE","960911016248","","0177804689","","","","","Active","2022-12-23","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("63","14820","自己生意","FALSE","860520495036","","01121514820","","","","","Active","2022-12-24","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("64","62271","青青河边草","FALSE","850709145794","","0146062271","","","","","Active","2022-12-24","0","0","0","0","");
INSERT INTO crm_1681128164_458_customer_details VALUES("65","12246","怡宝工程马","FALSE","820224086485","","0135912246","","","","","Active","2022-12-24","0","0","0","0","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("66","61500","小岛姐","FALSE","860524295496","","01113261500","","","","","Active","2022-12-27","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("67","64184","紧张哥","FALSE","950329125167","","01119364184","","","","","Active","2022-12-27","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("73","07415","马来按摩师","FALSE","930512036586","","01140007415","","","","","Active","2022-12-29","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("74","10040","kepong盖帐佬","FALSE","971104146613","","0183110040","","","","","Active","2022-12-29","0","","","","16");
INSERT INTO crm_1681128164_458_customer_details VALUES("75","52423","sb酒楼","FALSE","790319125606","","0138752423","","","","","Active","2022-12-29","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("76","92408","lorry运输","FALSE","940624086093","","01116592408","","","","","Active","2022-12-29","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("77","32506","住家糕点","FALSE","770720115326","","01139132506","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("78","72079","jb炸香蕉","FALSE","890611015824","","0177672079","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("79","12617","跆拳道教练","FALSE","900326055225","","0162512617","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("80","32660","coconut sir","FALSE","701208106237","","0135232660","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("81","09398","mlk波霸炸鸡","FALSE","960823045487","","0183109398","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("82","92769","电话生意","FALSE","700710045228","","0143092769","","","","35% 5x5 13/2/2023","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("83","null","srk潮男","FALSE","960816135505","","0148796189","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("84","92479","kl眼镜店","FALSE","940311085321","","0129392479","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("85","23673","kukup鱼贩","FALSE","830622016238","","0108423673","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("86","64794","大志餐饮","FALSE","870422055116","","0177864794","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("87","93481","srw霸王车","FALSE","780228135471","","0189193481","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("88","09472","KLT护士","FALSE","860301035064","","01123709472","","","","1x5 40%
3/3/23","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("89","47368","jjr蛋糕男神","FALSE","930608106163","","0132347368","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("90","69598","Commission姐","FALSE","830506125664","","01136669598","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("91","98925","mlk章鱼姐","FALSE","910512045230","","0168398925","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("92","91562","五金店借神","FALSE","980530107822","","0182291562","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("93","63744","Pg lori叔叔","FALSE","730418016267","","0109363744","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("94","29497","sb生意婆","FALSE","941007125354","","0145529497","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("95","95371","perak富婆","FALSE","860524295496","","01136395371","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("96","37736","Jb二手车","FALSE","731209016743","","0167337736","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("97","35831","Subang爱丽丝","FALSE","950926147049","","0176235831","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("98","14561","perlis白姐","FALSE","860910405008","","0174414561","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("99","06018","tomyam姐","FALSE","810603025392","","0174806018","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("100","31571","kl大理石工程","FALSE","680228135537","","0126231571","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("101","0099","lau yeow bin","FALSE","020509060099","","023442113432","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("102","37688","sibu老大","FALSE","891026136347","","01133637688","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("103","32629","JB设计师","FALSE","690630035429","","0137532629","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("104","89310","人猿泰山","FALSE","880915-05-5199","","0162689310","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("105","38967","阿林","FALSE","941217085485","","0109338967","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("106","60148","perlis kuih","FALSE","820929075516","","0135060148","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("107","88480","Trgn天然气","FALSE","700730085138","","0192188480","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("108","5019","tan eng keat","FALSE","911112085019","","01212121212","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("109","55655","披萨连锁店","FALSE","820529055655","","0126687867","","","","","Active","","0","","","","");
INSERT INTO crm_1681128164_458_customer_details VALUES("111","61273","钓鱼佬","FALSE","780518015881","","0123461273","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("112","16915","kdh transport","FALSE","940204075515","","01133116915","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("113","17571","online 卖衣服KL","FALSE","930514085381","","0166917571","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("114","06093","烧炒厨神","FALSE","691010065007","","0138806093","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("115","55305","pj上班族","FALSE","930909146409","","0129055305","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("118","48030","沙滩水果档","FALSE","950708106265","","0102048030","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("119","07639","kdh makanan","FALSE","820329025734","","0175707639","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("120","16285","白姐2.0","FALSE","860723095024","","01111416285","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("121","47123","拉电佬","FALSE","881223566113","","0182447123","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("122","38570","政府工马","FALSE","841119115523","","01162038570","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("123","85678","雪兰莪食堂","FALSE","991123085678","","9999111","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("124","86028","五金二把手","FALSE","890729085449","","0182886028","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("125","95385","00后小妹妹","FALSE","001228121568","","01158495385","","","","","Active","","0","","","","9");
INSERT INTO crm_1681128164_458_customer_details VALUES("126","60894","popiah boss","FALSE","881213116027","","0196260894","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("127","95997","水电单姐","FALSE","931214085288","","01163895997","","","","","Active","","0","","","","9");
INSERT INTO crm_1681128164_458_customer_details VALUES("128","05561","abang aunty","FALSE","780513135876","","0168905561","","","","","Active","","0","","","","9");
INSERT INTO crm_1681128164_458_customer_details VALUES("129","59571","pj保安女","FALSE","751227145464","","01112259571","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("130","75994","jb建筑","FALSE","861123236692","","0177575994","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("131","22514","00后卖吃","FALSE","001111011402","","0187622514","","","","","Active","","0","","","","1");
INSERT INTO crm_1681128164_458_customer_details VALUES("132","23868","食堂帮手","FALSE","830802035612","","0176423868","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("133","33295","tie哥","FALSE","760716105425","","0166833295","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("134","65158","卖菜aunty","FALSE","770508125842","","0146165158","","","","","Active","","0","","","","9");
INSERT INTO crm_1681128164_458_customer_details VALUES("135","71831","装修heng","FALSE","920126145005","","0172871831","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("136","47877","kedai runcit姐","FALSE","820909115488","","0179647877","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("137","54643","森包租婆","FALSE","650909125812","","0128154643","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("138","48512","霹雳印度菜","FALSE","72070185736","","0164548512","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("139","65957","杂货太子女","FALSE","020221140436","","01161165957","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("140","20368","化妆女","FALSE","990629035944","","01112920368","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("141","30039","kl makanan","FALSE","771207145414","","0176530039","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("142","17599","ipoh 酒店","FALSE","660127086459","","0198117599","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("143","73417","kedah卖kuih嫂","FALSE","790331025636","","0194773417","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("144","93571","kdh政府女工","FALSE","680321025084","","0165293571","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("145","31446","万字女","FALSE","980528016518","","01121931446","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("146","74838","kl 糕点","FALSE","770504085900","","0189674838","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("147","84523","霹雳清洁嫂","FALSE","850903085692","","01161584523","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("148","22254","sabah property","FALSE","821121125458","","0167322254","","","","","Active","","0","","","","9");
INSERT INTO crm_1681128164_458_customer_details VALUES("149","09554","00后牙医妹","FALSE","020620130964","","0143509554","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("150","80790","巴生排货哥","FALSE","970207106193","","0104280790","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("151","24785","rawang老师","FALSE","781109055385","","0105665431","0165924785","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("152","53626","服装批发商","FALSE","610428105419","","01119521985/0172953626","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("153","53651","sbh买水婆","FALSE","950723125480","","01136553651","","","","80% 
2x3
7/4/23
 ","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("154","64357","puchong金融机构","FALSE","730728105054","","0189164357","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("155","81038","kl美女","FALSE","970822565092","","0189181038","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("156","32320","ph防盗门","FALSE","790208065399","","0129632320","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("157","77003","jb出租屋","FALSE","610209015835","","0162541478/ 0177877003","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("158","10966","kuching katering","FALSE","621002135438","","0109810966","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("159","00194","okok小姐姐","FALSE","950318126228","","0145100194","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("160","89184","玻璃餐饮","FALSE","840606025205","","0105189184","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("161","71633","槟送餐员","FALSE","901216075123","","0164671633","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("162","92195","家庭主妇","FALSE","810529035348","","0149624358/01173692195","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("163","47949","日本烧酒妹","FALSE","940519126970","","0165087949/0142847949","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("164","62178","klinik姐","FALSE","950415146642","","01136262178","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("165","55876","SMK工厂女","FALSE","890531055076","","01110755876","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("166","37389","网卖妹","FALSE","010331080682","","01124237389","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("168","68601","大学生","FALSE","910922105267","","0136368601","","","","4x7 20%
1x7 10%
18/2/2023","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("169","89161","槟城甜甜圈","FALSE","980112075266","","0163489161","","","","","Active","","0","","","","9");
INSERT INTO crm_1681128164_458_customer_details VALUES("170","81922","aman老师","FALSE","730208136041","","0109781922","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("171","69369","新加坡打工","FALSE","001125030495","","0126569369","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("172","01051","新帐","FALSE","910618006380","","01051","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("173","85033","sunway polis bantuan","FALSE","860208495033","","0137785033","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("174","67294","化妆师姐","FALSE","810121035766","","01114967294","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("175","43586","胡须哥","FALSE","991129125833","","0138343586","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("176","71419","水果黑姐","FALSE","791012086176","","0175071419","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("177","98481","KD burger 婆","FALSE","860421265470","","0142598481","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("178","49030","TK lori佬","FALSE","731230065109","","01161700094/01136249030","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("179","88242","kl保安","FALSE","850516095209","","01173088242","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("180","06158","今晚打老虎","FALSE","821227125675","","0189706158","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("181","18277","srwk糕","FALSE","7710143135236","","01133818277","","","","","Active","","0","","","","22");
INSERT INTO crm_1681128164_458_customer_details VALUES("182","03289","MLK鸟神","FALSE","921127035865","","0164003289","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("183","10925","PMB肥佬","FALSE","940802105585","","0134610925","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("184","01461","STS印度婆","FALSE","840901086158","","0162501461","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("185","56528","klt卖水公","FALSE","900511115429","","0147656528","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("186","38645","srwk肥嗨","FALSE","861109526511","","0128738645","","","","","Active","","0","","","","22");
INSERT INTO crm_1681128164_458_customer_details VALUES("187","43134","卖鱼菜","FALSE","980222036479","","0108843134","","","","","Active","","0","","","","22");
INSERT INTO crm_1681128164_458_customer_details VALUES("188","95466","kch做水喉老","FALSE","961225136455","","0173395466","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("189","05729","selfie 姐","FALSE","021203020056","","0174305729","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("190","20901","sg幼儿园","FALSE","950731105930","","0193820901","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("191","07545","咖喱鱼头","FALSE","750813115263","","0169207545","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("192","53990","hostel佬","FALSE","980618015551","","0129453990","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("193","98689","00后保安","FALSE","020919020575","","0142098689","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("194","39246","pj00后","FALSE","000919100729","","0109839246","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("195","17400","求求哥","FALSE","870915115551","","0174917400","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("196","37164","kajang糕点","FALSE","691030095166","","0183937164","","","","","Active","","0","","","","8");
INSERT INTO crm_1681128164_458_customer_details VALUES("197","93746","奶茶楼","FALSE","900201125898","","0195193746","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("198","85504","顺记福建面","FALSE","911017145343","","01136785504","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("199","64654","MLK88包工头","FALSE","880224045311","","0147164654","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("200","17661","00后ninjavan","FALSE","011114080103","","01116817661","","","","","Active","","0","","","","18");
INSERT INTO crm_1681128164_458_customer_details VALUES("201","97116","PP makanan","FALSE","630429025049","","0174697116","","","","","Active","","0","","","","7");
INSERT INTO crm_1681128164_458_customer_details VALUES("202","111222","aaaaa","FALSE","111","","1111","","","","","Active","","0","","","","32");
INSERT INTO crm_1681128164_458_customer_details VALUES("203","222333","121212","FALSE","22121","","1121212","","","","","Active","","0","","","","32");
INSERT INTO crm_1681128164_458_customer_details VALUES("204","333444","1212","FALSE","1212","","1212","","","","","Active","","0","","","","32");
INSERT INTO crm_1681128164_458_customer_details VALUES("205","1112222","ww1w","FALSE","w1w1w1w1","","w11w111","","","","","Active","","0","","","","31");



CREATE TABLE `crm_1681128164_458_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681128164_458_employment_details VALUES("187","111222","","","","","","0","0","","","","","","");
INSERT INTO crm_1681128164_458_employment_details VALUES("188","222333","","","","","","0","0","","","","","","");
INSERT INTO crm_1681128164_458_employment_details VALUES("189","333444","","","","","","0","0","","","","","","");
INSERT INTO crm_1681128164_458_employment_details VALUES("190","1112222","","","","","","0","0","","","","","","");



CREATE TABLE `crm_1681128164_458_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128164_458_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128164_458_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128164_458_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=904 DEFAULT CHARSET=utf8mb4;

INSERT INTO crm_1681128164_458_loan_details VALUES("16","90911","90911-001","2022-11-28","500","50","0","150","0","4","7","周数","0132390911","8","-1","1","0","2023-01-23","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("17","90911","90911-002","2022-11-28","500","50","0","150","0","4","7","周数","0132390911","7","-1","1","0","2023-01-23","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("18","71302","71302-001","2022-11-28","500","50","0","75","0","4","7","周数","0129571302","8","-1","1","0","2023-01-02","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("19","71302","71302-002","2022-11-28","500","50","0","75","0","4","7","周数","0129571302","7","-1","1","0","2023-01-02","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("20","70960","70960-001","2022-11-28","500","50","0","150","0","4","7","周数","0177770960","9","-1","1","0","2023-01-16","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("21","70960","70960-002","2022-11-28","500","50","0","150","0","4","7","周数","0177770960","7","-1","1","0","2023-01-16","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("24","17708","17708-001","2022-11-30","500","50","0","100","0","4","7","周数","0196917708","8","-1","1","0","2023-01-04","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("25","17708","17708-002","2022-11-30","500","50","0","100","0","4","7","周数","","7","-1","1","0","2023-01-04","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("26","77764","77764-001","2022-11-30","1000","100","0","200","0","4","7","周数","0167577764","8","-1","1","0","2022-12-28","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("27","77764","77764-002","2022-11-30","1000","100","0","200","0","4","7","周数","0167577764","7","-1","1","0","2022-12-28","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("28","03766","03766-001","2022-11-30","500","50","0","150","0","5","7","周数","01157503766","9","-1","1","0","2023-01-11","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("29","03766","03766-002","2022-11-30","500","50","0","150","0","5","7","周数","01157503766","7","-1","1","0","2023-01-11","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("30","88172","88172-001","2022-11-30","3000","300","0","300","0","4","7","周数","0199488172","7","-1","0","2250","2022-12-14","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("31","83720","83720-001","2022-12-01","500","50","0","150","0","4","7","周数","0167883720","9","-1","1","0","2023-01-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("32","83720","83720-002","2022-12-01","500","50","0","150","0","4","7","周数","0167883720","7","-1","1","0","2023-01-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("33","50503","50503-001","2022-12-02","500","50","0","100","50","4","7","周数","0123450503","8","-1","0","0","2022-12-30","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("34","50503","50503-002","2022-12-02","500","50","0","100","50","4","7","周数","0123450503","7","-1","0","0","2022-12-30","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("35","70960","70960-003","2022-12-02","500","50","0","150","0","4","7","周数","0177770960","8","-1","1","0","2023-01-13","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("36","70960","70960-004","2022-12-02","500","50","0","150","0","4","7","周数","0177770960","7","-1","1","0","2023-01-13","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("37","08064","08064-001","2022-12-02","2500","250","0","500","0","5","7","周数","0133808064","7","-1","0","2500","2022-12-09","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("39","29860","29860-001","2022-12-03","750","75","0","225","0","4","7","周数","01112429860","8","-1","0","750","2022-12-10","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("40","29860","29860-002","2022-12-03","750","75","0","225","0","4","7","周数","01112429860","7","-1","0","750","2022-12-10","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("41","71302","71302-003","2022-12-03","500","50","0","75","0","4","7","周数","0129571302","9","-1","1","0","2023-01-07","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("42","71302","71302-004","2022-12-03","500","50","0","75","0","4","7","周数","0129571302","7","-1","1","0","2023-01-07","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("46","06088","06088-001","2022-12-02","500","50","0","100","25","4","7","周数","0162806088","7","-1","1","0","2022-12-16","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("47","68595","68595-001","2022-12-05","400","40","0","105","0","4","7","周数","0142368595","9","-1","1","0","2022-12-26","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("48","68595","68595-002","2022-12-05","400","40","0","105","0","4","7","周数","0142368595","7","-1","1","0","2022-12-26","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("49","43810","43810-001","2022-12-04","250","25","0","75","0","3","10","周数","0163543810","9","-1","0","250","2022-12-14","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("50","43810","43810-002","2022-12-04","250","25","0","75","0","3","10","周数","0163543810","7","-1","0","250","2022-12-14","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("51","13044","13044-001","2022-12-05","750","75","0","175","0","4","7","周数","0175413044","8","-1","0","750","2022-12-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("52","13044","13044-002","2022-12-05","750","75","0","175","0","4","7","周数","0175413044","7","-1","0","750","2022-12-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("53","02568","02568-001","2022-12-05","1500","150","0","600","0","4","7","周数","0149002568","8","-1","1","0","2023-10-16","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("54","02568","02568-002","2022-12-05","1500","150","0","600","0","4","7","周数","0149002568","7","-1","1","0","2023-10-16","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("55","77764","77764-003","2022-12-05","1500","150","0","350","0","4","7","周数","0167577764","9","-1","1","0","2023-01-02","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("56","77764","77764-004","2022-12-05","1500","150","0","350","0","4","7","周数","0167577764","7","-1","1","0","2023-01-02","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("57","19827","19827-001","2022-12-05","1000","100","0","150","0","5","7","周数","01110519827","9","-1","1","0","2023-03-13","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("58","19827","19827-002","2022-12-05","1000","100","0","150","0","5","7","周数","01110519827","7","-1","1","0","2023-03-13","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("59","67073","67073-001","2022-12-05","250","25","0","75","0","4","7","周数","01131867073","8","-1","1","0","2023-01-02","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("60","67073","67073-002","2022-12-05","250","25","0","75","0","4","7","周数","01131867073","7","-1","1","0","2023-01-02","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("61","53518","53518-001","2022-12-05","500","50","0","100","0","5","7","周数","0122753518","8","-1","1","0","2023-01-16","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("62","53518","53518-002","2022-12-05","500","50","0","100","0","5","7","周数","0122753518","7","-1","1","0","2023-01-16","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("63","17396","17396-001","2022-12-05","500","50","0","100","0","4","7","周数","01153017396","8","-1","1","0","2023-01-09","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("64","17396","17396-002","2022-12-05","500","50","0","100","0","4","7","周数","01153017396","7","-1","1","0","2023-01-09","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("65","55065","55065-001","2022-12-06","2500","250","0","650","0","4","7","周数","0199055065","9","-1","0","1875","2022-12-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("66","55065","55065-002","2022-12-06","2500","250","0","650","0","4","7","周数","0199055065","7","-1","0","1875","2022-12-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("67","60657","60657-001","2022-12-07","500","50","0","150","0","4","7","周数","0146060657","8","-1","0","305","2023-01-18","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("69","99242","99242-001","2022-12-07","500","50","0","150","0","4","7","周数","0183599242","7","-1","1","0","2023-02-22","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("70","99242","99242-002","2022-12-07","500","50","0","150","0","4","7","周数","0183599242","8","-1","1","0","2023-02-22","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("71","26747","26747-001","2022-12-08","1000","100","0","400","0","4","7","周数","0196326747","8","-1","0","225","2023-01-26","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("72","26747","26747-002","2022-12-08","1000","100","0","400","0","4","7","周数","0196326747","7","-1","0","225","2023-01-26","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("73","06088","06088-002","2022-12-08","500","50","0","100","0","4","7","周数","0162806088","8","-1","1","0","2023-01-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("74","06088","06088-003","2022-12-08","500","50","0","100","0","4","7","周数","0162806088","7","-1","1","0","2023-01-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("75","17708","17708-003","2022-12-08","500","50","0","100","0","4","7","周数","0196917708","9","-1","1","0","2023-01-19","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("76","17708","17708-004","2022-12-08","500","50","0","100","0","4","7","周数","0196917708","7","-1","1","0","2023-01-19","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("77","68601","68601-001","2022-12-09","2000","200","0","200","0","4","7","周数","0136368601","9","-1","1","0","2023-01-13","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("78","68601","68601-002","2022-12-09","2000","200","0","200","0","4","7","周数","0136368601","7","-1","1","0","2023-01-13","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("80","07829","07829-002","2022-12-09","500","50","0","75","0","4","7","周数","01158807829","7","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("81","05161","05161-001","2022-12-09","760","76","0","194","0","4","7","周数","0172305161","9","-1","1","0","2023-03-03","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("82","05161","05161-002","2022-12-09","740","74","0","181","0","4","7","周数","0172305161","7","-1","1","0","2023-03-03","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("83","44800","44800-001","2022-12-09","2500","250","0","500","0","4","10","周数","0163644800","7","-1","1","0","2023-01-08","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("84","44800","44800-002","2022-12-09","2500","250","0","500","0","4","10","周数","0163644800","8","-1","1","0","2023-01-08","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("85","43617","43617-001","2022-12-10","1000","100","0","200","0","5","7","周数","0123143617","7","-1","1","0","2023-01-14","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("86","43617","43617-002","2022-12-10","1000","100","0","200","0","5","7","周数","0123143617","8","-1","1","0","2023-01-14","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("87","71302","71302-005","2022-12-11","500","50","0","75","0","4","7","周数","0129571302","8","-1","1","0","2023-01-15","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("88","71302","71302-006","2022-12-11","500","50","0","75","0","4","7","周数","0129571302","7","-1","1","0","2023-01-15","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("89","69036","69036-001","2022-12-12","1000","100","0","400","0","4","7","周数","0104669036","9","-1","1","0","2023-02-27","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("90","69036","69036-002","2022-12-12","1000","100","0","400","0","4","7","周数","0104669036","7","-1","1","0","2023-02-27","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("91","91050","91050-001","2022-12-13","1300","130","0","200","0","4","7","周数","0178591050","7","-1","0","1300","2022-12-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("92","68108","68108-001","2022-12-13","500","50","0","150","0","4","7","周数","0178568108","9","-1","0","500","2022-12-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("93","70960","70960-005","2022-12-13","500","50","0","150","0","4","7","周数","0177770960","9","-1","0","225","2023-01-03","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("94","70960","70960-006","2022-12-13","500","50","0","150","0","4","7","周数","0177770960","7","-1","0","225","2023-01-03","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("95","26747","26747-003","2022-12-14","1000","100","0","400","0","4","7","周数","0196326747","9","-1","0","750","2022-12-28","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("96","26747","26747-004","2022-12-14","1000","100","0","400","0","4","7","周数","0196326747","7","-1","0","750","2022-12-28","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("97","02020","02020-001","2022-12-14","500","50","0","100","0","4","7","周数","01126302020","8","-1","1","0","2023-01-25","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("98","02020","02020-002","2022-12-14","500","50","0","150","0","4","7","周数","01126302020","7","-1","1","0","2023-01-25","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("99","78179","78179-001","2022-12-14","500","50","0","150","0","4","7","周数","0148178179","8","-1","1","0","2023-02-08","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("100","78179","78179-002","2022-12-14","500","50","0","150","0","4","7","周数","0148178179","7","-1","1","0","2023-02-08","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("101","71302","71302-007","2022-12-14","750","75","0","113","0","4","7","周数","0129571302","9","-1","1","0","2023-01-18","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("102","71302","71302-008","2022-12-14","750","75","0","112","0","4","7","周数","0129571302","7","-1","1","0","2023-01-18","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("103","37804","37804-001","2022-12-14","500","50","0","170","0","4","7","周数","0132237804","7","-1","0","500","2022-12-21","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("104","34235","34235-001","2022-12-14","1000","100","0","300","0","4","7","周数","0135134235","7","-1","1","0","2023-01-18","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("105","55065","55065-003","2022-12-14","1500","150","0","375","0","4","7","周数","0199055065","8","-1","0","1500","2022-12-21","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("106","55065","55065-004","2022-12-14","1500","150","0","375","0","4","7","周数","0199055065","7","-1","0","1500","2022-12-21","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("107","99001","99001-001","2022-12-15","750","75","0","175","0","4","7","周数","0176499001","8","-1","1","0","2023-01-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("108","99001","99001-002","2022-12-15","750","75","0","175","0","4","7","周数","0176499001","7","-1","1","0","2023-01-12","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("109","69589","69589-001","2022-12-15","500","50","0","50","0","4","7","周数","0174569589","9","-1","1","0","2023-01-19","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("110","69589","69589-002","2022-12-15","500","50","0","50","0","4","7","周数","0174569589","7","-1","1","0","2023-01-19","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("111","60657","60657-002","2022-12-07","500","50","0","150","0","4","7","周数","0146060657","7","-1","0","305","2023-01-18","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("112","17396","17396-003","2022-12-16","500","50","0","150","0","4","7","周数","01153017396","9","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("113","17396","17396-004","2022-12-16","500","50","0","150","0","4","7","周数","01153017396","7","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("114","06088","06088-004","2022-12-16","500","50","0","100","0","4","7","周数","0162806088","7","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("115","85042","85042-001","2022-12-16","500","50","0","100","0","5","7","周数","0169785042","8","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("116","85042","85042-002","2022-12-16","500","50","0","100","0","5","7","周数","0169785042","7","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("117","90141","90141-001","2022-12-16","500","50","0","185","0","4","7","周数","0127890141","7","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("118","56559","56559-001","2022-12-16","500","50","0","150","0","4","7","周数","01162356559","8","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("119","56559","56559-002","2022-12-16","500","50","0","150","0","4","7","周数","01162356559","7","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("120","62113","62113-001","2022-12-16","1000","100","0","150","0","6","7","周数","01154062113","8","-1","1","0","2023-01-27","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("121","50503","50503-003","2022-12-16","500","50","0","100","0","4","7","周数","0123450503","9","-1","0","375","2022-12-30","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("122","50503","50503-004","2022-12-16","500","50","0","100","0","4","7","周数","0123450503","7","-1","0","375","2022-12-30","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("123","07829","07829-003","2022-12-09","500","50","0","75","0","4","7","周数","01158807829","16","-1","1","0","2023-01-20","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("124","99016","99016-001","2022-12-17","300","30","0","70","0","4","7","周数","01164699016","7","-1","0","100","2023-01-14","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("125","99016","99016-002","2022-12-17","300","30","0","70","0","4","7","周数","01164699016","9","-1","0","100","2023-01-07","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("126","31229","31229-001","2022-12-17","250","25","0","75","0","4","7","周数","0142531229","9","-1","0","200","2023-01-07","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("127","31229","31229-002","2022-12-17","250","25","0","75","0","4","7","周数","0142531229","7","-1","0","150","2023-01-07","1","2022-12-20 08:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("128","22174","22174-001","2022-12-20","250","25","0","50","0","4","7","周数","01172396738","7","-1","1","0","2023-01-10","1","2022-12-20 18:20:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("129","22174","22174-002","2022-12-20","250","25","0","50","0","4","7","周数","01172396738","9","-1","1","0","2023-01-10","1","2022-12-20 18:20:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("130","43617","43617-003","2022-12-20","750","75","0","150","0","5","7","周数","0123143617","9","-1","1","0","2023-01-31","1","2022-12-20 18:21:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("131","43617","43617-004","2022-12-20","750","75","0","150","0","5","7","周数","0123143617","7","-1","1","0","2023-01-31","1","2022-12-20 18:21:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("132","03766","03766-003","2022-12-20","500","50","0","150","0","5","7","周数","01157503766","8","-1","1","0","2023-01-31","1","2022-12-20 18:22:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("133","03766","03766-004","2022-12-20","500","50","0","150","0","5","7","周数","01157503766","7","-1","1","0","2023-01-31","1","2022-12-20 18:22:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("134","74215","74215-001","2022-12-13","500","50","0","150","0","4","7","周数","0172674215","16","-1","1","0","2023-02-07","1","2022-12-20 18:24:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("135","93406","93406-001","2022-12-19","1000","100","0","150","0","4","7","周数","0177693406","7","-1","1","0","2023-01-23","1","2022-12-20 18:26:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("136","08064","08064-002","2022-12-02","2500","250","0","500","0","5","7","周数","0133808064","8","-1","0","2500","2022-12-09","1","2022-12-20 19:34:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("137","02020","02020-003","2022-12-21","500","50","0","100","0","4","7","周数","01126302020","9","-1","1","0","2023-01-25","1","2022-12-21 18:29:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("138","02020","02020-004","2022-12-21","500","50","0","100","0","4","7","周数","01126302020","7","-1","1","0","2023-01-25","1","2022-12-21 18:30:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("139","49435","49435-001","2022-12-21","500","50","0","100","0","4","7","周数","0175749435","7","-1","1","0","2023-01-18","1","2022-12-21 18:31:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("140","90141","90141-002","2022-12-21","500","50","0","100","0","4","7","周数","0127890141","9","-1","1","0","2023-01-25","1","2022-12-21 18:32:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("141","90141","90141-003","2022-12-21","500","50","0","100","0","4","7","周数","0127890141","7","-1","1","0","2023-01-25","1","2022-12-21 18:32:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("142","56559","56559-003","2022-12-22","500","50","0","150","0","4","7","周数","01162356559","9","-1","1","0","2023-02-02","1","2022-12-22 20:53:56");
INSERT INTO crm_1681128164_458_loan_details VALUES("143","56559","56559-004","2022-12-22","500","50","0","150","0","4","7","周数","01162356559","7","-1","1","0","2023-02-02","1","2022-12-22 20:54:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("144","04689","04689-001","2022-12-22","500","50","0","185","0","4","7","周数","0177804689","7","-1","0","500","2022-12-29","1","2022-12-22 20:55:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("146","85042","85042-003","2022-12-23","500","50","0","125","0","4","7","周数","0169785042","9","-1","1","0","2023-01-20","1","2022-12-23 16:53:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("147","85042","85042-004","2022-12-23","500","50","0","125","0","4","7","周数","0169785042","7","-1","1","0","2023-01-20","1","2022-12-23 16:54:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("148","14820","14820-001","2022-12-23","500","50","0","100","0","4","7","周数","01121514820","8","-1","0","375","2023-01-06","1","2022-12-23 16:55:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("149","14820","14820-002","2022-12-23","500","50","0","100","0","4","7","周数","01121514820","7","-1","0","375","2023-01-06","1","2022-12-23 16:55:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("150","62271","62271-001","2022-12-23","250","25","0","50","0","3","7","周数","0146062271","9","-1","1","0","2023-01-13","1","2022-12-23 16:56:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("151","62271","62271-002","2022-12-23","250","25","0","50","0","3","7","周数","0146062271","7","-1","1","0","2023-01-13","1","2022-12-23 16:57:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("152","12246","12246-001","2022-12-23","500","50","0","100","0","4","7","周数","0135912246","9","-1","0","375","2023-01-06","1","2022-12-23 16:58:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("153","12246","12246-002","2022-12-23","500","50","0","100","0","4","7","周数","0135912246","7","-1","0","375","2023-01-06","1","2022-12-23 16:58:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("154","17396","17396-005","2022-12-24","1000","100","0","200","0","8","4","周数","01153017396","8","-1","1","0","2023-02-18","1","2022-12-24 20:40:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("155","17396","17396-006","2022-12-24","1000","100","0","200","0","8","4","周数","01153017396","7","-1","1","0","2023-02-18","1","2022-12-24 20:41:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("156","77764","77764-005","2022-12-24","750","75","0","175","0","4","7","周数","0167577764","9","-1","1","0","2023-01-28","1","2022-12-24 20:41:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("157","77764","77764-006","2022-12-24","750","75","0","175","0","4","7","周数","0167577764","7","-1","1","0","2023-01-28","1","2022-12-24 20:42:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("159","22174","22174-003","2022-12-26","500","50","0","100","25","4","7","周数","01172396738","8","-1","0","0","2023-01-30","1","2022-12-26 17:24:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("160","22174","22174-004","2022-12-26","500","50","0","100","25","4","7","周数","01172396738","7","-1","0","0","2023-01-30","1","2022-12-26 17:24:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("161","43617","43617-005","2022-12-26","500","50","0","100","0","4","7","周数","0123143617","16","-1","1","0","2023-01-09","1","2022-12-26 17:28:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("162","43617","43617-006","2022-12-26","500","50","0","100","0","4","7","周数","0123143617","7","-1","1","0","2023-01-09","1","2022-12-26 17:28:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("163","43617","43617-007","2022-12-27","1000","100","0","200","0","5","7","周数","0123143617","8","-1","1","0","2023-01-31","1","2022-12-27 15:49:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("164","43617","43617-008","2022-12-27","1000","100","0","200","0","5","7","周数","0123143617","7","-1","1","0","2023-01-31","1","2022-12-27 15:49:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("165","77764","77764-007","2022-12-27","750","75","0","175","0","4","7","周数","0167577764","8","-1","1","0","2023-01-31","1","2022-12-27 15:50:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("166","77764","77764-008","2022-12-27","750","75","0","175","0","4","7","周数","0167577764","7","-1","1","0","2023-01-31","1","2022-12-27 15:50:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("167","14820","14820-003","2022-12-27","500","50","0","100","0","4","7","周数","01121514820","9","-1","0","500","2023-01-03","1","2022-12-27 15:51:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("168","14820","14820-004","2022-12-27","500","50","0","100","0","4","7","周数","01121514820","7","-1","0","500","2023-01-03","1","2022-12-27 15:51:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("169","62271","62271-003","2022-12-27","250","25","0","50","0","3","7","周数","0146062271","8","-1","0","165","2023-01-10","1","2022-12-27 15:52:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("170","62271","62271-004","2022-12-27","250","25","0","50","0","3","7","周数","0146062271","7","-1","0","165","2023-01-10","1","2022-12-27 15:52:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("171","67073","67073-003","2022-12-27","500","50","0","100","0","4","7","周数","01131867073","8","-1","1","0","2023-02-07","1","2022-12-27 15:53:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("172","67073","67073-004","2022-12-27","500","50","0","100","0","4","7","周数","01131867073","7","-1","1","0","2023-02-07","1","2022-12-27 15:53:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("173","61500","61500-001","2022-12-27","500","50","0","75","0","4","7","周数","01113261500","8","-1","1","0","2023-01-24","1","2022-12-27 15:54:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("174","61500","61500-002","2022-12-27","500","50","0","75","0","4","7","周数","01113261500","7","-1","1","0","2023-01-24","1","2022-12-27 15:55:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("175","90141","90141-004","2022-12-28","500","50","0","125","0","4","7","周数","0127890141","8","-1","1","0","2023-01-25","1","2022-12-28 08:26:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("176","90141","90141-005","2022-12-28","500","50","0","125","0","4","7","周数","0127890141","7","-1","1","0","2023-01-25","1","2022-12-28 08:26:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("177","64184","64184-001","2022-12-28","500","50","0","100","0","5","7","周数","01119364184","9","-1","0","500","2023-01-04","1","2022-12-28 17:19:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("178","49435","49435-002","2022-12-28","500","50","0","100","0","4","7","周数","0175749435","9","-1","1","0","2023-02-22","1","2022-12-28 17:20:23");
INSERT INTO crm_1681128164_458_loan_details VALUES("179","49435","49435-003","2022-12-28","500","50","0","100","0","4","7","周数","0175749435","7","-1","1","0","2023-02-22","1","2022-12-28 17:20:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("180","07415","07415-001","2022-12-28","500","50","0","100","0","4","7","周数","01140007415","7","-1","1","0","2023-01-11","1","2022-12-28 17:22:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("182","52423","52423-001","2022-12-28","500","50","0","75","0","4","7","周数","0138752423","9","-1","1","0","2023-01-11","1","2022-12-28 17:33:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("183","52423","52423-002","2022-12-28","500","50","0","75","0","4","7","周数","0138752423","7","-1","1","0","2023-01-11","1","2022-12-28 17:34:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("185","10040","10040-003","2022-12-28","5000","500","50","750","0","0","0","天数","014+","16","-1","0","5000","2022-12-28","1","2022-12-29 12:12:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("188","06088","06088-005","2022-12-29","500","50","0","100","0","4","7","周数","0162806088","8","-1","1","0","2023-01-26","1","2022-12-29 14:58:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("189","06088","06088-006","2022-12-29","500","50","0","100","0","4","7","周数","0162806088","7","-1","1","0","2023-01-26","1","2022-12-29 14:58:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("190","17708","17708-005","2022-12-29","1000","100","0","200","0","4","7","周数","0196917708","8","-1","1","0","2023-02-09","1","2022-12-29 15:00:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("191","17708","17708-006","2022-12-29","1000","100","0","200","0","4","7","周数","0196917708","7","-1","1","0","2023-02-09","1","2022-12-29 15:01:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("192","92408","92408-001","2022-12-29","250","25","0","75","0","4","7","周数","01116592408","9","-1","0","125","2023-01-19","1","2022-12-30 07:23:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("193","92408","92408-002","2022-12-29","250","25","0","75","0","4","7","周数","01116592408","7","-1","0","125","2023-01-19","1","2022-12-30 07:23:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("194","06088","06088-007","2022-12-30","500","0","0","150","0","4","7","周数","0162806088","9","-1","1","0","2023-01-27","1","2022-12-30 07:28:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("195","06088","06088-008","2022-12-30","500","0","0","150","0","4","7","周数","0162806088","7","-1","1","0","2023-01-27","1","2022-12-30 07:28:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("196","22174","22174-005","2022-12-30","500","0","0","150","0","4","7","周数","01172396738","9","-1","0","375","2023-01-20","1","2022-12-30 07:32:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("197","22174","22174-006","2022-12-30","500","0","0","150","0","4","7","周数","01172396738","7","-1","0","375","2023-01-20","1","2022-12-30 07:33:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("198","53518","53518-003","2022-12-30","1000","0","0","300","0","5","7","周数","0122753518","8","-1","1","0","2023-02-10","1","2022-12-30 07:33:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("199","53518","53518-004","2022-12-30","1000","0","0","300","0","5","7","周数","0122753518","7","-1","1","0","2023-02-10","1","2022-12-30 07:34:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("200","69589","69589-003","2022-12-30","1000","0","0","200","0","4","7","周数","0174569589","8","-1","1","0","2023-02-03","1","2022-12-30 09:56:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("201","69589","69589-004","2022-12-30","1000","0","0","200","0","4","7","周数","0174569589","7","-1","1","0","2023-02-03","1","2022-12-30 09:56:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("202","07415","07415-002","2022-12-31","300","0","0","90","0","4","7","周数","01140007415","8","-1","0","130","2023-02-25","1","2023-01-01 10:11:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("203","07415","07415-003","2022-12-31","900","0","0","320","0","4","7","周数","01140007415","7","-1","0","390","2023-02-25","1","2023-01-01 10:12:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("204","07415","07415-004","2022-12-31","300","0","0","90","0","4","7","周数","01140007415","9","-1","0","130","2023-02-25","1","2023-01-01 11:17:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("205","49435","49435-004","2022-12-31","1500","0","0","500","0","4","7","周数","0175749435","7","-1","1","0","2023-03-25","1","2023-01-01 11:17:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("206","02020","02020-005","2022-12-31","750","0","0","225","0","4","7","周数","01126302020","8","-1","1","0","2023-01-28","1","2023-01-01 11:18:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("207","02020","02020-006","2022-12-31","750","0","0","225","0","4","7","周数","01126302020","7","-1","1","0","2023-01-28","1","2023-01-01 11:18:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("208","56559","56559-005","2022-12-31","500","0","0","200","0","4","7","周数","01162356559","8","-1","1","0","2023-02-11","1","2023-01-01 11:19:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("209","56559","56559-006","2022-12-31","500","0","0","200","0","4","7","周数","01162356559","7","-1","1","0","2023-02-11","1","2023-01-01 11:19:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("211","62271","62271-006","2023-01-01","500","0","0","150","0","3","7","周数","0146062271","9","-1","0","330","2023-01-15","1","2023-01-01 11:20:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("212","62271","62271-007","2023-01-01","500","0","0","150","0","3","7","周数","0146062271","7","-1","0","330","2023-01-15","1","2023-01-01 11:21:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("213","17396","17396-007","2023-01-02","1000","0","0","300","0","8","4","周数","01153017396","9","-1","1","0","2023-02-19","1","2023-01-02 09:47:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("214","17396","17396-008","2023-01-02","1000","0","0","300","0","8","4","周数","01153017396","7","-1","1","0","2023-02-19","1","2023-01-02 09:48:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("215","32506","32506-001","2023-01-02","500","0","0","250","0","5","7","周数","01139132506","9","-1","0","50","2023-03-20","1","2023-01-02 09:51:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("216","32506","32506-002","2023-01-02","500","0","0","250","0","5","7","周数","01139132506","7","-1","0","50","2023-03-20","1","2023-01-02 09:53:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("217","17708","17708-007","2023-01-02","500","0","0","150","0","4","7","周数","0196917708","9","-1","1","0","2023-02-06","1","2023-01-02 09:55:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("218","17708","17708-008","2023-01-02","500","0","0","150","0","4","7","周数","0196917708","7","-1","1","0","2023-02-06","1","2023-01-02 09:56:15");
INSERT INTO crm_1681128164_458_loan_details VALUES("219","72079","72079-001","2023-01-02","500","50","0","205","0","4","7","周数","0177672079","7","-1","0","500","2023-01-09","1","2023-01-02 14:57:56");
INSERT INTO crm_1681128164_458_loan_details VALUES("220","12617","12617-001","2023-01-02","500","0","0","200","0","5","5","周数","0162512617","9","-1","0","450","2023-01-12","1","2023-01-02 14:59:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("221","12617","12617-002","2023-01-02","500","0","0","200","0","5","5","周数","0162512617","7","-1","0","450","2023-01-12","1","2023-01-02 15:00:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("222","71302","71302-009","2023-01-03","750","0","0","200","0","4","7","周数","0129571302","8","-1","1","0","2023-02-14","1","2023-01-03 08:46:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("223","71302","71302-010","2023-01-03","750","0","0","200","0","4","7","周数","0129571302","7","-1","1","0","2023-02-14","1","2023-01-03 08:46:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("224","85042","85042-005","2023-01-03","500","0","0","175","0","5","7","周数","0169785042","8","-1","1","0","2023-02-14","1","2023-01-03 08:47:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("225","85042","85042-006","2023-01-03","500","0","0","175","0","5","7","周数","0169785042","7","-1","1","0","2023-02-14","1","2023-01-03 08:47:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("226","32660","32660-001","2023-01-03","500","0","0","200","0","4","4","周数","0135232660","16","-1","1","0","2023-01-19","1","2023-01-03 08:49:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("227","32660","32660-002","2023-01-03","500","0","0","200","0","4","7","周数","013232660","7","-1","1","0","2023-01-31","1","2023-01-03 08:56:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("228","09398","09398-001","2023-01-03","500","0","0","200","0","4","7","周数","0183109398","7","-1","1","0","2023-01-24","1","2023-01-03 08:58:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("229","92769","92769-001","2023-01-03","500","0","0","125","0","5","7","周数","0143092769","8","-1","1","0","2023-02-14","1","2023-01-03 09:01:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("230","92769","92769-002","2023-01-03","500","0","0","125","0","5","7","周数","0143092769","7","-1","1","0","2023-02-14","1","2023-01-03 09:01:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("231","03766","03766-005","2023-01-03","500","0","0","200","0","5","7","周数","01157503766","9","-1","1","0","2023-02-28","1","2023-01-03 09:02:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("232","03766","03766-006","2023-01-03","500","0","0","200","0","5","7","周数","01157503766","7","-1","1","0","2023-02-28","1","2023-01-03 09:02:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("233","null","null-001","2023-01-03","500","0","0","200","0","4","7","周数","0148796189","9","-1","0","500","2023-01-10","1","2023-01-03 09:27:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("234","null","null-002","2023-01-03","500","0","0","200","0","4","7","周数","0148796189","7","-1","0","500","2023-01-10","1","2023-01-03 09:28:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("235","92479","92479-001","2023-01-03","500","0","0","150","0","4","5","周数","0129392479","16","-1","1","0","2023-01-28","1","2023-01-03 09:35:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("236","92479","92479-002","2023-01-03","500","0","0","150","0","4","5","周数","0129392479","7","-1","1","0","2023-01-28","1","2023-01-03 09:36:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("237","99001","99001-003","2023-01-03","1000","0","0","325","0","4","7","周数","0176499001","8","-1","1","0","2023-02-07","1","2023-01-03 09:37:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("238","99001","99001-004","2023-01-03","1000","0","0","325","0","4","7","周数","0176499001","7","-1","1","0","2023-02-07","1","2023-01-03 09:37:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("239","02020","02020-007","2023-01-03","500","0","0","150","0","4","7","周数","01126302020","16","-1","0","125","2023-01-31","1","2023-01-03 09:38:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("240","02020","02020-008","2023-01-03","500","0","0","150","0","4","7","周数","01126302020","7","-1","0","125","2023-01-31","1","2023-01-03 15:26:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("241","06088","06088-009","2023-01-04","1000","0","0","300","0","4","7","周数","0162806088","7","-1","1","0","2023-02-01","1","2023-01-04 07:36:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("242","23673","23673-001","2023-01-04","500","0","0","100","0","4","7","周数","0108423673","9","-1","0","250","2023-01-25","1","2023-01-04 07:38:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("243","23673","23673-002","2023-01-04","500","0","0","100","0","4","7","周数","0108423673","7","-1","0","250","2023-01-25","1","2023-01-04 07:38:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("244","64794","64794-001","2023-01-04","500","0","0","200","50","4","7","周数","0177864794","8","-1","0","0","2023-02-15","1","2023-01-04 07:41:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("245","64794","64794-002","2023-01-04","500","0","0","200","50","4","7","周数","0177864794","7","-1","0","0","2023-02-15","1","2023-01-04 07:42:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("246","93481","93481-001","2023-01-04","250","0","0","100","0","4","7","周数","0189193481","16","-1","0","124","2023-01-25","1","2023-01-04 07:43:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("247","93481","93481-002","2023-01-04","250","0","0","100","0","4","7","周数","0189193481","7","-1","0","124","2023-01-25","1","2023-01-04 07:44:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("248","09472","09472-001","2023-01-04","250","0","0","100","0","4","7","周数","01123709472","9","-1","1","0","2023-02-01","1","2023-01-04 08:23:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("249","09472","09472-002","2023-01-04","250","0","0","100","0","4","7","周数","01123709472","7","-1","1","0","2023-02-01","1","2023-01-04 08:23:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("250","69589","69589-005","2023-01-04","500","0","0","100","0","4","7","周数","0174569589","9","-1","1","0","2023-02-08","1","2023-01-04 08:24:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("251","69589","69589-006","2023-01-04","500","0","0","100","0","4","7","周数","0174569589","7","-1","1","0","2023-02-08","1","2023-01-04 08:24:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("252","71302","71302-011","2023-01-04","500","0","0","150","0","4","7","周数","0129571302","9","-1","1","0","2023-02-22","1","2023-01-04 09:27:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("253","71302","71302-012","2023-01-04","500","0","0","150","0","4","7","周数","0129571302","7","-1","1","0","2023-02-22","1","2023-01-04 09:27:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("254","47368","47368-001","2023-01-05","2500","0","150","550","0","0","0","天数","0132347368","8","-1","1","0","2023-01-05","1","2023-01-06 15:42:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("255","47368","47368-002","2023-01-05","2500","0","150","550","0","0","0","天数","0132347368","7","-1","1","0","2023-01-05","1","2023-01-06 15:42:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("256","90141","90141-006","2023-01-06","500","0","0","150","0","4","7","周数","0127890141","9","-1","1","0","2023-03-10","1","2023-01-06 15:43:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("257","90141","90141-007","2023-01-06","500","0","0","150","0","4","7","周数","0127890141","7","-1","1","0","2023-03-10","1","2023-01-06 15:43:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("258","69598","69598-001","2023-01-06","250","0","0","100","0","4","7","周数","011366669598","9","-1","1","0","2023-02-10","1","2023-01-06 15:44:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("259","69598","69598-002","2023-01-06","250","0","0","100","0","4","7","周数","01136669598","7","-1","1","0","2023-02-10","1","2023-01-06 15:45:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("260","85042","85042-007","2023-01-06","750","0","0","265","0","4","7","天数","0169785042","9","-1","1","0","2023-02-10","1","2023-01-06 15:48:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("261","85042","85042-008","2023-01-06","750","0","0","265","0","4","7","周数","0169785042","7","-1","1","0","2023-02-10","1","2023-01-06 15:53:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("262","98925","98925-001","2023-01-06","500","0","0","150","0","4","7","周数","0168398925","9","-1","1","0","2023-02-10","1","2023-01-06 15:55:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("263","98925","98925-002","2023-01-06","500","0","0","150","0","4","7","周数","0168398925","7","-1","1","0","2023-02-10","1","2023-01-06 15:55:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("265","63744","63744-001","2023-01-06","1000","0","0","300","0","4","7","周数","0109363744","7","-1","1","0","2023-02-10","1","2023-01-06 16:03:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("266","17396","17396-009","2023-01-06","1000","0","0","300","0","8","4","周数","01153017396","16","-1","0","725","2023-01-26","1","2023-01-06 16:04:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("267","17396","17396-010","2023-01-06","1000","0","0","300","0","8","4","周数","01153017396","7","-1","0","725","2023-01-26","1","2023-01-06 16:04:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("268","91562","91562-001","2023-01-06","1000","0","0","350","100","6","7","周数","0182291562","8","-1","0","0","2023-01-20","1","2023-01-06 16:38:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("269","68601","68601-003","2023-01-07","2500","0","0","500","0","4","7","周数","0136368601","9","-1","1","0","2023-02-18","1","2023-01-07 11:53:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("270","68601","68601-004","2023-01-07","2500","0","0","500","0","4","7","周数","0136368601","7","-1","1","0","2023-02-18","1","2023-01-07 11:54:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("271","29497","29497-001","2023-01-07","1000","0","0","400","0","5","7","周数","0145529497","8","-1","0","400","2023-01-21","1","2023-01-07 12:02:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("272","29497","29497-002","2023-01-07","1000","0","0","400","0","5","7","周数","0145529497","7","-1","0","400","2023-01-21","1","2023-01-07 12:02:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("273","61500","61500-003","2023-01-07","500","0","0","125","0","4","7","周数","01113261500","9","-1","1","0","2023-01-28","1","2023-01-07 12:04:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("274","61500","61500-004","2023-01-07","500","0","0","125","0","4","7","周数","01113261500","7","-1","1","0","2023-01-28","1","2023-01-07 12:04:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("275","95371","95371-001","2023-01-07","500","0","0","100","0","4","7","周数","01136395371","16","-1","1","0","2023-02-11","1","2023-01-07 12:08:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("276","95371","95371-002","2023-01-07","500","0","0","100","0","4","7","周数","01136395371","7","-1","1","0","2023-02-11","1","2023-01-07 12:08:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("277","67073","67073-005","2023-01-07","400","0","0","160","0","5","5","周数","01131867073","8","-1","0","80","2023-01-27","1","2023-01-07 13:52:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("278","67073","67073-006","2023-01-07","400","0","0","160","0","5","5","周数","01131867073","7","-1","0","80","2023-01-27","1","2023-01-07 13:53:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("279","35831","35831-001","2023-01-08","3000","0","0","500","0","0","0","月账","0176235831","16","-1","1","0","2023-01-08","1","2023-01-08 14:50:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("280","23673","23673-003","2023-01-09","500","0","0","100","0","4","7","周数","0108423673","8","-1","0","200","2023-02-06","1","2023-01-09 07:15:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("281","23673","23673-004","2023-01-09","500","0","0","100","0","4","7","周数","0108423673","7","-1","0","200","2023-02-06","1","2023-01-09 07:16:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("282","02020","02020-009","2023-01-09","500","0","0","150","0","4","7","周数","01126302020","9","-1","1","0","2023-02-06","1","2023-01-09 07:18:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("283","02020","02020-010","2023-01-09","500","0","0","150","0","4","7","周数","01126302020","7","-1","1","0","2023-02-06","1","2023-01-09 07:19:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("284","32660","32660-003","2023-01-09","500","0","0","200","0","4","4","周数","0135232660","8","-1","1","0","2023-01-25","1","2023-01-09 07:19:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("285","32660","32660-004","2023-01-09","500","0","0","200","0","4","4","周数","0135232660","7","-1","1","0","2023-01-25","1","2023-01-09 07:21:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("286","09472","09472-003","2023-01-09","250","0","0","100","0","4","7","周数","01123709472","8","-1","1","0","2023-02-06","1","2023-01-09 07:21:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("287","09472","09472-004","2023-01-09","250","0","0","100","0","4","7","周数","01123709472","7","-1","1","0","2023-02-06","1","2023-01-09 07:22:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("288","92479","92479-003","2023-01-09","500","0","0","150","0","4","5","周数","0129392479","8","-1","1","0","2023-02-03","1","2023-01-09 07:22:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("289","92479","92479-004","2023-01-09","500","0","0","150","0","4","5","周数","0129392479","7","-1","1","0","2023-02-03","1","2023-01-09 07:23:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("290","93406","93406-002","2023-01-09","2000","0","0","500","0","8","4","周数","0177693406","7","-1","1","0","2023-02-14","1","2023-01-09 07:24:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("291","43617","43617-009","2023-01-09","1000","0","0","300","0","5","7","周数","0123143617","9","-1","1","0","2023-02-13","1","2023-01-09 07:24:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("292","43617","43617-010","2023-01-09","1000","0","0","300","0","5","7","周数","0123143617","7","-1","1","0","2023-02-13","1","2023-01-09 07:25:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("293","37736","37736-001","2023-01-07","1000","0","0","300","0","4","7","周数","0167337736","7","-1","1","0","2023-02-11","1","2023-01-09 11:16:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("294","56559","56559-007","2023-01-10","500","0","0","200","0","4","7","周数","01162356559","9","-1","0","225","2023-02-07","1","2023-01-10 17:16:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("295","56559","56559-008","2023-01-10","500","0","0","200","0","4","7","周数","01162356559","7","-1","0","225","2023-02-07","1","2023-01-10 17:17:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("296","64794","64794-003","2023-01-10","300","0","0","150","0","4","7","周数","0177864794","16","-1","0","75","2023-01-31","1","2023-01-10 17:17:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("297","64794","64794-004","2023-01-10","300","0","0","150","0","4","7","周数","0177864794","7","-1","0","75","2023-01-31","1","2023-01-10 17:18:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("298","99001","99001-005","2023-01-10","500","0","0","175","0","4","7","周数","0176499001","9","-1","1","0","2023-02-14","1","2023-01-10 17:18:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("299","99001","99001-006","2023-01-10","500","0","0","175","0","4","7","周数","0176499001","7","-1","1","0","2023-02-14","1","2023-01-10 17:19:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("300","90141","90141-008","2023-01-11","1000","0","0","400","0","4","7","周数","0127890141","7","-1","1","0","2023-02-08","1","2023-01-13 04:56:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("301","77764","77764-009","2023-01-11","750","0","0","250","0","4","7","周数","0167577764","9","-1","0","340","2023-02-08","1","2023-01-13 04:56:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("302","77764","77764-010","2023-01-11","750","0","0","250","0","4","7","周数","0167577764","7","-1","0","340","2023-02-08","1","2023-01-13 04:57:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("303","90141","90141-009","2023-01-12","500","0","0","200","0","4","7","周数","0127890141","8","-1","1","0","2023-02-16","1","2023-01-13 04:57:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("304","90141","90141-010","2023-01-12","500","0","0","200","0","4","7","周数","0127890141","7","-1","1","0","2023-02-16","1","2023-01-13 04:57:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("305","68601","68601-005","2023-01-13","2000","0","0","400","0","4","7","周数","0136368601","8","-1","1","0","2023-02-17","1","2023-01-13 04:58:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("306","68601","68601-006","2023-01-13","2000","0","0","400","0","4","7","周数","0136368601","7","-1","1","0","2023-02-17","1","2023-01-13 04:58:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("307","43617","43617-011","2023-01-13","1000","0","0","300","0","5","7","周数","0123143617","8","-1","1","0","2023-02-24","1","2023-01-13 15:01:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("308","43617","43617-012","2023-01-13","1000","0","0","300","0","5","7","周数","0123143617","7","-1","1","0","2023-02-24","1","2023-01-13 15:02:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("309","62113","62113-002","2023-01-13","1000","0","0","300","0","4","7","周数","01154062113","8","-1","1","0","2023-02-10","1","2023-01-13 15:03:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("310","62113","62113-003","2023-01-13","1000","0","0","300","0","4","7","周数","01154062113","7","-1","1","0","2023-02-10","1","2023-01-13 15:03:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("311","69598","69598-003","2023-01-13","500","0","0","200","0","4","7","周数","01136669598","8","-1","0","250","2023-02-03","1","2023-01-13 15:04:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("312","69598","69598-004","2023-01-13","500","0","0","200","0","4","7","周数","01136669598","9","-1","0","250","2023-02-03","1","2023-01-13 15:04:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("313","77764","77764-011","2023-01-14","750","0","0","250","0","4","7","周数","0167577764","8","-1","0","375","2023-02-11","1","2023-01-14 17:43:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("314","77764","77764-012","2023-01-14","750","0","0","250","0","4","7","周数","0167577764","7","-1","0","375","2023-02-11","1","2023-01-14 17:43:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("315","98925","98925-003","2023-01-14","500","0","0","150","0","4","7","周数","0168398925","8","-1","1","0","2023-02-18","1","2023-01-14 17:44:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("316","98925","98925-004","2023-01-14","500","0","0","150","0","4","7","周数","0168398925","7","-1","1","0","2023-02-18","1","2023-01-14 17:44:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("317","14561","14561-001","2023-01-14","1000","0","0","500","0","10","2","周数","0174414561","8","-1","0","150","2023-02-03","1","2023-01-14 17:48:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("318","14561","14561-002","2023-01-14","1000","0","0","500","0","10","2","周数","0174414561","7","-1","0","150","2023-02-03","1","2023-01-14 17:49:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("319","06018","06018-001","2023-01-14","500","0","0","150","0","10","2","周数","0174806018","9","-1","1","0","2023-02-03","1","2023-01-14 17:50:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("320","06018","06018-002","2023-01-14","500","0","0","150","0","10","2","周数","0174806018","7","-1","1","0","2023-02-03","1","2023-01-14 17:51:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("321","09398","09398-002","2023-01-15","1000","0","0","400","0","4","7","周数","0183109398","7","-1","1","0","2023-02-05","1","2023-01-15 13:59:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("322","22174","22174-007","2023-01-15","500","0","0","200","0","4","7","周数","01172396738","8","-1","0","325","2023-02-12","1","2023-01-15 14:00:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("323","22174","22174-008","2023-01-15","500","0","0","200","0","4","7","周数","01172396738","7","-1","0","325","2023-02-12","1","2023-01-15 14:00:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("324","02020","02020-011","2023-01-16","750","0","0","250","0","4","7","周数","01126302020","8","-1","0","562","2023-02-06","1","2023-01-16 15:55:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("325","02020","02020-012","2023-01-16","750","0","0","250","0","4","7","周数","01126302020","7","-1","0","562","2023-02-06","1","2023-01-16 15:55:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("326","06088","06088-010","2023-01-16","500","0","0","150","0","4","7","周数","0162806088","9","-1","1","0","2023-03-06","1","2023-01-16 16:12:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("327","06088","06088-011","2023-01-16","500","0","0","150","0","4","7","周数","0162806088","7","-1","1","0","2023-03-06","1","2023-01-16 16:12:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("328","61500","61500-005","2023-01-16","1000","0","0","250","0","4","7","周数","01113261500","8","-1","1","0","2023-02-20","1","2023-01-16 16:12:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("329","61500","61500-006","2023-01-16","1000","0","0","250","0","4","7","周数","01113261500","7","-1","1","0","2023-02-20","1","2023-01-16 16:13:15");
INSERT INTO crm_1681128164_458_loan_details VALUES("330","31571","31571-001","2023-01-16","2500","0","0","900","0","4","7","周数","0126231571","8","-1","1","0","2023-02-20","1","2023-01-16 16:14:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("331","31571","31571-002","2023-01-16","2500","0","0","900","0","4","7","周数","0126231571","7","-1","1","0","2023-02-20","1","2023-01-16 16:15:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("332","02020","02020-013","2023-01-18","750","0","0","250","0","4","7","周数","01126302020","16","-1","0","370","2023-02-01","1","2023-01-19 16:12:56");
INSERT INTO crm_1681128164_458_loan_details VALUES("333","02020","02020-014","2023-01-18","750","0","0","250","0","4","7","周数","01126302020","7","-1","0","370","2023-02-01","1","2023-01-19 16:13:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("334","61500","61500-007","2023-01-18","500","0","0","125","0","4","7","周数","01113261500","9","-1","1","0","2023-02-22","1","2023-01-19 16:14:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("335","61500","61500-008","2023-01-18","500","0","0","125","0","4","7","周数","01113261500","7","-1","1","0","2023-02-22","1","2023-01-19 16:14:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("336","62113","62113-004","2023-01-18","2000","0","0","500","0","6","7","周数","01154062113","8","-1","0","0","2023-03-08","1","2023-01-19 16:15:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("337","0099","0099-001","2023-01-18","2600","0","0","600","0","4","10","周数","0","7","-1","1","0","2023-02-07","1","2023-01-19 16:20:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("338","06088","06088-012","2023-01-19","500","0","0","150","0","4","7","周数","0162806088","8","-1","1","0","2023-02-23","1","2023-01-19 16:21:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("339","06088","06088-013","2023-01-19","500","0","0","150","0","4","7","周数","0162806088","7","-1","1","0","2023-02-23","1","2023-01-19 16:21:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("340","69589","69589-007","2023-01-19","1000","0","0","200","0","4","7","周数","0174569589","8","-1","1","0","2023-02-23","1","2023-01-19 16:22:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("341","69589","69589-008","2023-01-19","1000","0","0","200","0","4","7","周数","0","7","-1","1","0","2023-02-23","1","2023-01-19 16:22:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("342","56559","56559-009","2023-01-20","500","0","0","250","0","4","7","周数","0","8","-1","0","475","2023-02-03","1","2023-01-22 17:03:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("343","56559","56559-010","2023-01-20","500","0","0","250","0","4","7","周数","1","7","-1","0","475","2023-02-03","1","2023-01-22 17:03:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("344","67073","67073-007","2023-01-20","750","0","0","350","0","6","4","周数","1","8","-1","0","625","2023-01-28","1","2023-01-22 17:04:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("345","67073","67073-008","2023-01-20","750","0","0","350","0","6","4","周数","1","7","-1","0","625","2023-01-28","1","2023-01-22 17:04:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("346","93406","93406-003","2023-01-21","1000","0","0","250","0","4","7","周数","1","9","-1","1","0","2023-03-11","1","2023-01-22 17:05:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("347","93406","93406-004","2023-01-21","1000","0","0","250","0","4","7","周数","1","7","-1","1","0","2023-03-11","1","2023-01-22 17:05:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("348","09472","09472-005","2023-01-23","500","0","0","200","0","4","7","周数","0","8","-1","1","0","2023-02-27","1","2023-01-25 18:54:15");
INSERT INTO crm_1681128164_458_loan_details VALUES("349","09472","09472-006","2023-01-23","500","0","0","200","0","4","7","周数","0","7","-1","1","0","2023-02-27","1","2023-01-25 18:54:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("350","02020","02020-015","2023-01-23","500","0","0","150","0","4","7","周数","0","9","-1","0","425","2023-02-06","1","2023-01-25 18:55:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("351","02020","02020-016","2023-01-23","500","0","0","150","0","4","7","周数","0","7","-1","0","425","2023-02-06","1","2023-01-25 18:55:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("352","03766","03766-007","2023-01-23","500","0","0","200","0","5","7","周数","0","8","-1","1","0","2023-03-27","1","2023-01-25 18:55:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("353","03766","03766-008","2023-01-23","500","0","0","200","0","5","7","周数","0","7","-1","1","0","2023-03-27","1","2023-01-25 18:56:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("354","17708","17708-009","2023-01-24","500","0","0","150","0","4","7","周数","0","9","-1","1","0","2023-02-28","1","2023-01-25 18:56:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("355","17708","17708-010","2023-01-24","500","0","0","150","0","4","7","周数","0","7","-1","1","0","2023-02-28","1","2023-01-25 18:56:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("356","85042","85042-009","2023-01-24","750","0","0","275","0","5","7","周数","0","8","-1","1","0","2023-02-28","1","2023-01-25 18:57:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("357","85042","85042-010","2023-01-24","750","0","0","275","0","5","7","周数","0","7","-1","1","0","2023-02-28","1","2023-01-25 18:57:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("358","92479","92479-005","2023-01-24","500","0","0","150","0","4","5","周数","0","16","-1","1","0","2023-02-13","1","2023-01-25 18:58:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("359","92479","92479-006","2023-01-24","500","0","0","150","0","4","5","周数","0","7","-1","1","0","2023-02-13","1","2023-01-25 18:58:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("360","32660","32660-005","2023-01-24","1000","0","0","500","0","8","3","周数","0","8","-1","0","1000","2023-01-27","1","2023-01-25 18:58:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("361","32660","32660-006","2023-01-24","1000","0","0","500","0","8","3","周数","0","7","-1","0","1000","2023-01-27","1","2023-01-25 18:59:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("362","99001","99001-007","2023-01-24","1000","0","0","325","0","4","7","周数","0","8","-1","1","0","2023-02-07","1","2023-01-25 18:59:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("363","99001","99001-008","2023-01-24","1000","0","0","325","0","4","7","周数","0","7","-1","1","0","2023-02-07","1","2023-01-25 19:00:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("364","17708","17708-011","2023-01-24","1000","0","0","300","0","4","7","周数","0","8","-1","1","0","2023-03-14","1","2023-01-25 19:00:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("365","17708","17708-012","2023-01-24","1000","0","0","300","0","4","7","周数","0","7","-1","1","0","2023-03-14","1","2023-01-25 19:00:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("366","09472","09472-007","2023-01-25","500","0","0","200","0","4","7","周数","0","9","-1","1","0","2023-03-01","1","2023-01-25 19:01:23");
INSERT INTO crm_1681128164_458_loan_details VALUES("367","09472","09472-008","2023-01-25","500","0","0","200","0","4","7","周数","0","7","-1","1","0","2023-03-01","1","2023-01-25 19:01:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("368","43617","43617-013","2023-01-25","1000","0","0","300","0","5","7","周数","0","9","-1","1","0","2023-03-08","1","2023-01-25 19:02:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("369","43617","43617-014","2023-01-25","1000","0","0","300","0","5","7","周数","0","7","-1","1","0","2023-03-08","1","2023-01-25 19:02:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("370","92769","92769-003","2023-01-25","1000","0","0","250","0","5","7","周数","0","8","-1","1","0","2023-03-01","1","2023-01-25 19:02:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("371","92769","92769-004","2023-01-25","1000","0","0","250","0","5","7","周数","0","7","-1","1","0","2023-03-01","1","2023-01-25 19:03:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("372","92479","92479-007","2023-01-25","500","0","0","150","0","4","5","周数","0","8","-1","1","0","2023-02-14","1","2023-01-25 19:03:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("373","92479","92479-008","2023-01-25","500","0","0","150","0","4","5","周数","0","7","-1","1","0","2023-02-14","1","2023-01-25 19:03:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("376","31571","31571-003","2023-01-26","2500","0","0","900","0","4","7","周数","0126231571","8","-1","1","0","2023-03-09","1","2023-01-31 07:10:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("377","31571","31571-004","2023-01-26","2500","0","0","900","0","4","7","周数","0126231571","7","-1","1","0","2023-03-09","1","2023-01-31 07:10:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("378","06088","06088-014","2023-01-26","1000","0","0","300","0","4","7","周数","0162806088","7","-1","1","0","2023-03-02","1","2023-01-31 07:12:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("379","62113","62113-005","2023-01-26","1000","0","0","300","0","4","7","周数","01154062113","8","-1","1","0","2023-02-23","1","2023-01-31 07:14:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("380","62113","62113-006","2023-01-26","1000","0","0","300","0","4","7","周数","01154062113","7","-1","1","0","2023-02-23","1","2023-01-31 07:14:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("381","53518","53518-005","2023-01-26","1000","0","0","300","0","5","7","周数","0122753518","9","-1","1","0","2023-03-09","1","2023-01-31 07:40:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("382","53518","53518-006","2023-01-26","1000","0","0","300","0","5","7","周数","0122753518","7","-1","1","0","2023-03-09","1","2023-01-31 07:41:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("383","69598","69598-005","2023-01-26","250","0","0","100","0","4","7","周数","01136669598","9","-1","0","129","2023-03-02","1","2023-01-31 07:48:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("384","69598","69598-006","2023-01-26","250","0","0","100","0","4","7","周数","01136669598","7","-1","0","129","2023-03-02","1","2023-01-31 07:48:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("385","32660","32660-007","2023-01-26","500","0","0","250","0","4","7","周数","0135232660","9","-1","0","500","2023-02-02","1","2023-01-31 07:49:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("386","32660","32660-008","2023-01-26","500","0","0","250","0","4","7","周数","0135232660","7","-1","0","500","2023-02-02","1","2023-01-31 07:50:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("387","71302","71302-013","2023-01-26","750","0","0","200","0","4","7","周数","0129571302","8","-1","1","0","2023-03-02","1","2023-01-31 07:51:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("388","71302","71302-014","2023-01-26","750","0","0","200","0","4","7","周数","0129571302","7","-1","1","0","2023-03-02","1","2023-01-31 07:51:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("389","98925","98925-005","2023-01-28","500","0","0","150","0","4","7","周数","0168398925","9","-1","1","0","2023-03-11","1","2023-01-31 09:01:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("390","98925","98925-006","2023-01-28","500","0","0","150","0","4","7","周数","0168398925","7","-1","1","0","2023-03-11","1","2023-01-31 09:01:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("391","63744","63744-002","2023-01-28","1500","0","0","400","0","5","7","周数","0109363744","7","-1","1","0","2023-03-04","1","2023-01-31 09:05:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("392","71302","71302-015","2023-01-29","750","0","0","200","0","4","7","周数","0129571302","9","-1","1","0","2023-03-05","1","2023-01-31 09:08:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("393","71302","71302-016","2023-01-29","750","0","0","200","0","4","7","周数","0129571302","7","-1","1","0","2023-03-05","1","2023-01-31 09:09:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("394","92769","92769-005","2023-01-29","500","0","0","150","0","5","7","周数","0143092769","9","-1","1","0","2023-03-05","1","2023-01-31 09:09:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("395","92769","92769-006","2023-01-29","500","0","0","150","0","5","7","周数","0143092769","7","-1","1","0","2023-03-05","1","2023-01-31 09:10:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("396","03766","03766-009","2023-02-01","750","0","0","300","0","5","7","周数","01157503766","9","-1","1","0","2023-05-10","1","2023-02-01 11:05:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("397","03766","03766-010","2023-02-01","750","0","0","300","0","5","7","周数","01157503766","7","-1","1","0","2023-05-10","1","2023-02-01 11:06:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("398","37688","37688-001","2023-02-01","3000","0","0","900","0","4","7","周数","01133637688","7","-1","1","0","2023-03-15","1","2023-02-01 11:09:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("399","32629","32629-001","2023-02-03","500","0","0","125","0","5","7","周数","0137532629","8","-1","1","0","2023-03-17","1","2023-02-03 14:08:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("400","32629","32629-002","2023-02-03","500","0","0","125","0","5","7","周数","0137532629","7","-1","1","0","2023-03-17","1","2023-02-03 14:08:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("401","61500","61500-009","2023-02-03","1000","0","0","250","0","4","7","周数","01113261500","9","-1","1","0","2023-02-24","1","2023-02-03 14:10:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("402","61500","61500-010","2023-02-03","1000","0","0","250","0","4","7","周数","01113261500","7","-1","1","0","2023-02-24","1","2023-02-03 14:10:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("403","06018","06018-003","2023-02-03","500","0","0","150","0","10","2","天数"," 0174806018","9","-1","1","0","2023-02-25","1","2023-02-03 14:11:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("404","06018","06018-004","2023-02-03","500","0","0","150","0","10","2","天数"," 0174806018","7","-1","1","0","2023-02-25","1","2023-02-03 14:12:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("405","89310","89310-001","2023-02-03","250","0","0","100","0","4","7","周数","0162689310","8","-1","0","125","2023-02-17","1","2023-02-03 14:14:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("406","89310","89310-002","2023-02-03","250","0","0","100","0","4","7","周数","0162689310","7","-1","0","125","2023-02-17","1","2023-02-03 14:14:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("410","60148","60148-001","2023-02-04","1000","0","0","500","0","5","7","周数","0","8","-1","0","50","2023-02-25","1","2023-02-05 03:53:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("411","60148","60148-002","2023-02-04","1000","0","0","500","0","5","7","周数","1","7","-1","0","50","2023-02-25","1","2023-02-05 03:53:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("412","37736","37736-002","2023-02-05","1500","0","0","400","0","5","7","周数","0","7","-1","1","0","2023-03-05","1","2023-02-07 05:21:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("413","31571","31571-005","2023-02-06","2500","0","0","900","0","3","10","周数","0","8","-1","1","0","2023-03-18","1","2023-02-07 05:22:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("414","31571","31571-006","2023-02-06","2500","0","0","900","0","3","10","周数","0","7","-1","1","0","2023-03-18","1","2023-02-07 05:23:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("415","88480","88480-001","2023-02-06","3000","0","0","600","0","5","7","周数","0","7","-1","0","1800","2023-02-27","1","2023-02-07 05:25:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("416","53518","53518-007","2023-02-07","1000","0","0","300","0","5","7","周数","0","8","-1","1","0","2023-03-21","1","2023-02-07 16:25:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("417","53518","53518-008","2023-02-07","1000","0","0","300","0","5","7","周数","0","7","-1","1","0","2023-03-21","1","2023-02-07 16:26:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("418","5019","5019-001","2023-02-07","36000","0","0","7200","0","4","7","周数","0","17","-1","0","33750","2023-03-14","1","2023-02-07 16:27:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("419","37688","37688-002","2023-02-09","1500","0","0","500","0","4","7","周数","01133637688","8","-1","1","0","2023-03-09","1","2023-02-10 14:35:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("420","37688","37688-003","2023-02-09","1500","0","0","500","0","4","7","周数","01133637688","7","-1","1","0","2023-03-09","1","2023-02-10 14:35:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("421","93406","93406-005","2023-02-10","2000","0","0","600","0","8","4","周数","0177693406","7","-1","1","0","2023-03-10","1","2023-02-10 14:35:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("422","62113","62113-007","2023-02-10","1000","0","0","300","0","4","7","周数","01154062113","8","-1","1","0","2023-03-17","1","2023-02-10 14:38:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("423","62113","62113-008","2023-02-10","1000","0","0","300","0","4","7","周数","01154062113","7","-1","1","0","2023-03-17","1","2023-02-10 14:38:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("424","92769","92769-007","2023-02-10","500","0","0","175","0","5","7","周数","0143092769","9","-1","1","0","2023-03-24","1","2023-02-10 14:39:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("425","92769","92769-008","2023-02-10","500","0","0","175","0","5","7","周数","0143092769","7","-1","1","0","2023-03-24","1","2023-02-10 14:39:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("426","68601","68601-007","2023-02-11","2500","0","0","500","0","4","7","周数","0136368601","8","-1","1","0","2023-03-18","1","2023-02-11 15:08:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("427","68601","68601-008","2023-02-11","2500","0","0","500","0","4","7","周数","0136368601","7","-1","1","0","2023-03-18","1","2023-02-11 15:09:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("428","09472","09472-009","2023-02-11","500","0","0","250","25","4","7","周数","01123709472","8","-1","0","0","2023-03-04","1","2023-02-11 15:10:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("429","09472","09472-010","2023-02-11","500","0","0","250","25","4","7","周数","01123709472","7","-1","0","0","2023-03-04","1","2023-02-11 15:10:23");
INSERT INTO crm_1681128164_458_loan_details VALUES("430","09472","09472-011","2023-02-11","500","0","0","250","50","4","7","周数","01123709472","9","-1","0","0","2023-03-04","1","2023-02-11 15:10:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("431","09472","09472-012","2023-02-11","500","0","0","250","50","4","7","周数","01123709472","7","-1","0","0","2023-03-04","1","2023-02-11 15:11:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("432","92479","92479-009","2023-02-11","500","0","0","175","0","4","7","周数","0129392479","8","-1","1","0","2023-03-18","1","2023-02-11 15:13:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("433","92479","92479-010","2023-02-11","500","0","0","175","0","4","7","周数","0129392479","7","-1","1","0","2023-03-18","1","2023-02-11 15:13:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("434","55655","55655-001","2023-02-11","1000","0","0","250","0","4","7","周数","0126687867","7","-1","1","0","2023-03-25","1","2023-02-11 15:16:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("435","71302","71302-017","2023-02-13","500","0","0","150","0","4","7","周数","0129571302","8","-1","1","0","2023-03-20","1","2023-02-13 09:24:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("436","71302","71302-018","2023-02-13","500","0","0","150","0","4","7","周数","0129571302","7","-1","1","0","2023-03-20","1","2023-02-13 09:25:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("437","17708","17708-013","2023-02-13","500","0","0","150","0","4","7","周数","0196917708","9","-1","1","0","2023-03-20","1","2023-02-13 09:25:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("438","17708","17708-014","2023-02-13","500","0","0","150","0","4","7","周数","0196917708","7","-1","1","0","2023-03-20","1","2023-02-13 09:25:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("439","85042","85042-011","2023-02-13","750","0","0","275","0","5","7","周数","0169785042","8","-1","1","0","2023-03-27","1","2023-02-13 09:26:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("440","85042","85042-012","2023-02-13","750","0","0","275","0","5","7","周数","0169785042","7","-1","1","0","2023-03-27","1","2023-02-13 09:26:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("441","68601","68601-009","2023-02-13","2500","0","0","500","0","4","7","周数","0136368601","9","-1","1","0","2023-03-27","1","2023-02-13 09:27:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("442","68601","68601-010","2023-02-13","2500","0","0","500","0","4","7","周数","0136368601","7","-1","1","0","2023-03-27","1","2023-02-13 09:27:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("443","92769","92769-009","2023-02-13","1000","0","0","350","0","5","7","周数","0143092769","8","-1","1","0","2023-03-27","1","2023-02-13 09:28:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("444","92769","92769-010","2023-02-13","1000","0","0","350","0","5","7","周数","0143092769","7","-1","1","0","2023-03-27","1","2023-02-13 09:28:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("445","06018","06018-005","2023-02-14","500","0","0","150","0","10","2","周数","0174806018","8","-1","1","0","2023-03-22","1","2023-02-14 03:04:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("446","06018","06018-006","2023-02-14","500","0","0","150","0","10","2","周数","0174806018","7","-1","1","0","2023-03-22","1","2023-02-14 03:05:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("447","92479","92479-011","2023-02-14","500","0","0","175","100","4","7","周数","0129392479","16","-1","0","0","2023-02-21","1","2023-02-15 07:52:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("448","92479","92479-012","2023-02-14","500","0","0","175","100","4","7","周数","0129392479","7","-1","0","0","2023-02-21","1","2023-02-15 07:52:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("449","63744","63744-003","2023-02-14","500","0","0","150","0","5","7","周数","0109363744","8","-1","1","0","2023-03-28","1","2023-02-15 08:22:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("450","63744","63744-004","2023-02-14","500","0","0","150","0","5","7","周数","0109363744","7","-1","1","0","2023-03-28","1","2023-02-15 08:22:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("451","06088","06088-015","2023-02-15","500","0","0","175","0","4","7","周数","0162806088","8","-1","1","0","2023-03-22","1","2023-02-15 08:22:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("452","06088","06088-016","2023-02-15","500","0","0","175","0","4","7","周数","0162806088","7","-1","1","0","2023-03-22","1","2023-02-15 08:23:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("453","06088","06088-017","2023-02-15","500","0","0","175","0","4","7","周数","0162806088","9","-1","1","0","2023-03-15","1","2023-02-15 08:23:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("454","06088","06088-018","2023-02-15","500","0","0","175","0","4","7","周数","0162806088","7","-1","1","0","2023-03-15","1","2023-02-15 08:24:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("455","32629","32629-003","2023-02-15","500","0","0","125","0","5","7","周数","0137532629","9","-1","1","0","2023-03-29","1","2023-02-15 08:24:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("456","32629","32629-004","2023-02-15","500","0","0","125","0","5","7","周数","0137532629","7","-1","1","0","2023-03-29","1","2023-02-15 08:25:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("457","69589","69589-009","2023-02-15","1000","0","0","200","0","4","7","周数","0174569589","9","-1","1","0","2023-03-22","1","2023-02-15 08:25:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("458","69589","69589-010","2023-02-15","1000","0","0","200","0","4","7","周数","0174569589","7","-1","1","0","2023-03-22","1","2023-02-15 08:26:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("459","61273","61273-001","2023-02-14","500","0","0","150","0","4","7","周数","0123461273","8","-1","1","0","2023-03-21","1","2023-02-15 08:47:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("460","61273","61273-002","2023-02-14","500","0","0","150","0","4","7","周数","0123461273","7","-1","1","0","2023-03-21","1","2023-02-15 08:48:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("461","16915","16915-001","2023-02-14","500","0","0","200","0","4","7","周数","01133116915","7","-1","0","375","2023-02-28","1","2023-02-15 08:49:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("462","17571","17571-001","2023-02-14","2000","0","0","600","0","4","7","周数","0166917571","7","-1","1","0","2023-03-14","1","2023-02-15 08:51:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("463","06093","06093-001","2023-02-14","5000","0","300","1000","0","0","0","月账","0138806093","8","-1","0","4500","2023-02-14","1","2023-02-15 08:53:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("464","55305","55305-001","2023-02-15","500","0","0","200","25","4","7","周数","0129055305","9","-1","0","0","2023-03-08","1","2023-02-17 06:50:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("465","55305","55305-002","2023-02-15","500","0","0","200","25","4","7","周数","0129055305","7","-1","0","0","2023-03-08","1","2023-02-17 06:51:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("466","74215","74215-002","2023-02-16","500","0","0","255","0","4","7","周数","0172674215","16","-1","0","125","2023-03-09","1","2023-02-17 06:52:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("467","74215","74215-003","2023-02-16","500","0","0","255","0","4","7","周数","0172674215","7","-1","1","0","2023-03-16","1","2023-02-17 06:52:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("468","71302","71302-019","2023-02-16","500","0","0","150","0","4","7","周数","0129571302","9","-1","1","0","2023-03-23","1","2023-02-17 06:52:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("469","71302","71302-020","2023-02-16","500","0","0","150","0","4","7","周数","0129571302","7","-1","1","0","2023-03-23","1","2023-02-17 06:53:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("470","92479","92479-013","2023-02-16","500","0","0","200","100","4","7","周数","0129392479","9","-1","0","0","2023-02-23","1","2023-02-17 06:53:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("471","92479","92479-014","2023-02-16","500","0","0","200","100","4","7","周数","0129392479","7","-1","0","0","2023-02-23","1","2023-02-17 06:54:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("472","69589","69589-011","2023-02-17","1000","0","0","200","0","4","7","周数","0174569589","8","-1","1","0","2023-03-24","1","2023-02-18 10:52:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("473","69589","69589-012","2023-02-17","1000","0","0","200","0","4","7","周数","0174569589","7","-1","1","0","2023-03-24","1","2023-02-18 10:52:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("475","48030","48030-001","2023-02-17","2000","0","0","600","0","4","7","周数","0102048030","7","-1","0","1400","2023-03-17","1","2023-02-18 10:59:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("476","68601","68601-011","2023-02-17","1500","0","0","150","0","1","7","周数","0136368601","18","-1","1","0","2023-03-03","1","2023-02-18 10:59:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("477","68601","68601-012","2023-02-17","1500","0","0","150","0","1","7","周数","0136368601","7","-1","1","0","2023-03-03","1","2023-02-18 11:00:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("478","93406","93406-006","2023-02-17","1000","0","0","250","0","4","7","周数","0177693406","9","-1","1","0","2023-04-07","1","2023-02-18 11:01:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("479","93406","93406-007","2023-02-17","1000","0","0","250","0","4","7","周数","0177693406","7","-1","1","0","2023-04-07","1","2023-02-18 11:01:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("480","07639","07639-001","2023-02-17","1500","0","0","475","0","3","10","周数","0175707639","8","-1","1","0","2023-03-29","1","2023-02-18 11:07:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("481","07639","07639-002","2023-02-17","1500","0","0","475","0","3","10","周数","0175707639","7","-1","1","0","2023-03-29","1","2023-02-18 11:07:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("482","85042","85042-013","2023-02-17","750","0","0","265","0","4","7","周数","0169785042","9","-1","1","0","2023-03-24","1","2023-02-18 11:07:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("483","85042","85042-014","2023-02-17","750","0","0","265","0","4","7","周数","0169785042","7","-1","1","0","2023-03-24","1","2023-02-18 11:08:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("484","55655","55655-002","2023-02-18","500","0","0","125","0","4","7","周数","0126687867","8","-1","1","0","2023-04-01","1","2023-02-18 11:08:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("485","55655","55655-003","2023-02-18","500","0","0","125","0","4","7","周数","0126687867","7","-1","1","0","2023-04-01","1","2023-02-18 11:09:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("486","98925","98925-007","2023-02-18","250","0","0","35","0","1","7","周数","0168398925","8","-1","1","0","2023-03-04","1","2023-02-18 11:10:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("487","98925","98925-008","2023-02-18","250","0","0","35","0","1","7","周数","0168398925","7","-1","1","0","2023-03-04","1","2023-02-18 11:10:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("488","37736","37736-003","2023-02-18","500","0","0","150","0","5","7","周数","0167337736","8","-1","1","0","2023-04-01","1","2023-02-18 11:11:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("489","37736","37736-004","2023-02-18","500","0","0","150","0","5","7","周数","0167337736","7","-1","1","0","2023-04-01","1","2023-02-18 11:12:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("490","06088","06088-019","2023-02-18","1000","0","0","350","0","4","7","周数","0162806088","7","-1","1","0","2023-03-25","1","2023-02-18 11:12:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("491","16285","16285-001","2023-02-18","1500","0","0","500","0","4","7","周数","01111416285","7","-1","1","0","2023-03-18","1","2023-02-18 11:16:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("492","47123","47123-001","2023-02-18","1500","0","0","500","0","1","7","周数","0182447123","8","-1","0","1500","2023-02-25","1","2023-02-18 16:18:07");
INSERT INTO crm_1681128164_458_loan_details VALUES("493","09472","09472-013","2023-02-18","250","0","0","100","25","1","5","周数","01123709472","18","-1","0","0","2023-03-05","1","2023-02-18 16:27:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("494","09472","09472-014","2023-02-18","250","0","0","100","25","1","5","周数","01123709472","7","-1","0","0","2023-03-05","1","2023-02-18 16:28:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("495","85042","85042-015","2023-02-19","250","0","0","125","0","1","5","周数","0169785042","18","-1","1","0","2023-03-01","1","2023-02-19 07:39:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("496","85042","85042-016","2023-02-19","250","0","0","125","0","1","5","周数","0169785042","7","-1","1","0","2023-03-01","1","2023-02-19 07:39:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("497","37688","37688-004","2023-02-19","1000","0","0","200","0","1","7","周数","01133637688","18","-1","0","1000","2023-06-11","1","2023-02-19 07:39:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("498","37688","37688-005","2023-02-19","1000","0","0","200","0","1","7","周数","01133637688","7","-1","0","1000","2023-06-11","1","2023-02-19 07:40:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("499","38570","38570-001","2023-02-19","500","0","0","150","0","5","7","周数","01162038570","8","-1","1","0","2023-04-02","1","2023-02-19 09:51:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("500","38570","38570-002","2023-02-19","500","0","0","150","0","5","7","周数","01162038570","7","-1","1","0","2023-04-02","1","2023-02-19 09:51:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("501","85678","85678-001","2023-02-19","4000","0","0","1000","0","1","7","周数","9999","7","-1","1","0","2023-03-05","1","2023-02-19 13:08:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("502","44800","44800-003","2023-02-20","2500","0","0","750","0","4","10","周数","0163644800","8","-1","1","0","2023-05-31","1","2023-02-21 05:01:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("503","44800","44800-004","2023-02-20","2500","0","0","750","0","4","10","周数","0163644800","7","-1","1","0","2023-05-31","1","2023-02-21 05:01:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("504","86028","86028-001","2023-02-20","500","0","0","200","0","1","7","周数","0182886028","7","-1","0","500","2023-03-13","1","2023-02-21 05:03:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("505","74215","74215-004","2023-02-20","500","0","0","250","0","4","7","周数","0172674215","16","-1","1","0","2023-03-06","1","2023-02-21 05:05:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("506","31571","31571-007","2023-02-21","2500","0","0","900","125","4","7","周数","0126231571","8","-1","0","0","2023-02-28","1","2023-02-21 05:06:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("507","31571","31571-008","2023-02-21","2500","0","0","900","125","4","7","周数","0126231571","7","-1","0","0","2023-02-28","1","2023-02-21 05:06:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("508","93406","93406-008","2023-02-20","1000","0","0","300","0","4","7","周数","0177693406","18","-1","1","0","2023-04-03","1","2023-02-21 05:35:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("509","93406","93406-009","2023-02-20","1000","0","0","300","0","4","7","周数","0177693406","7","-1","1","0","2023-04-03","1","2023-02-21 05:36:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("510","63744","63744-005","2023-02-21","500","0","0","175","0","5","5","周数","0109363744","18","-1","1","0","2023-03-23","1","2023-02-21 05:37:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("511","63744","63744-006","2023-02-21","500","0","0","175","0","5","5","周数","0109363744","7","-1","1","0","2023-03-23","1","2023-02-21 05:38:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("512","95385","95385-001","2023-02-21","300","0","0","200","0","3","7","周数","01158495385","9","-1","1","0","2023-03-21","1","2023-02-22 04:56:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("513","60894","60894-001","2023-02-21","300","0","0","150","0","3","1","周数","0196260894","9","-1","0","300","2023-02-22","1","2023-02-22 04:57:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("514","53518","53518-009","2023-02-21","1000","0","0","300","0","5","7","周数","0122753518","9","-1","1","0","2023-03-28","1","2023-02-22 05:03:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("515","53518","53518-010","2023-02-21","1000","0","0","300","0","5","7","周数","0122753518","7","-1","1","0","2023-03-28","1","2023-02-22 05:03:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("516","55305","55305-003","2023-02-21","500","0","0","200","25","4","7","周数","0129055305","8","-1","0","0","2023-03-14","1","2023-02-22 05:03:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("517","55305","55305-004","2023-02-21","500","0","0","200","25","4","7","周数","0129055305","7","-1","0","0","2023-03-14","1","2023-02-22 05:04:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("518","95997","95997-001","2023-02-21","500","0","0","250","150","2","5","周数","01163895997","9","-1","0","0","2023-02-26","1","2023-02-22 05:05:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("519","63744","63744-007","2023-02-21","2000","0","0","700","0","5","7","周数","0109363744","7","-1","1","0","2023-04-04","1","2023-02-22 05:06:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("520","05561","05561-001","2023-02-22","200","0","0","150","0","2","5","周数","0168905561","9","-1","1","0","2023-03-09","1","2023-02-22 05:09:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("521","53518","53518-011","2023-02-22","1000","0","0","150","0","1","7","周数","0122753518","18","-1","0","0","2023-03-08","1","2023-02-22 05:09:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("522","53518","53518-012","2023-02-22","1000","0","0","150","0","1","7","周数","0122753518","7","-1","1","0","2023-03-08","1","2023-02-22 05:10:07");
INSERT INTO crm_1681128164_458_loan_details VALUES("523","92479","92479-015","2023-02-22","500","0","0","150","50","1","7","周数","0129392479","18","-1","0","0","2023-03-01","1","2023-02-22 05:11:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("524","92479","92479-016","2023-02-22","500","0","0","150","50","1","7","周数","0129392479","7","-1","0","0","2023-03-01","1","2023-02-22 05:11:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("525","37736","37736-005","2023-02-22","500","0","0","175","0","5","5","周数","0167337736","18","-1","1","0","2023-03-24","1","2023-02-23 05:53:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("526","37736","37736-006","2023-02-22","500","0","0","175","0","5","5","周数","0167337736","7","-1","1","0","2023-03-24","1","2023-02-23 05:53:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("527","17708","17708-015","2023-02-23","1000","0","0","300","0","4","7","周数","0196917708","8","-1","1","0","2023-03-30","1","2023-02-24 09:05:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("528","17708","17708-016","2023-02-23","1000","0","0","300","0","4","7","周数","0196917708","7","-1","1","0","2023-03-30","1","2023-02-24 09:05:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("529","59571","59571-001","2023-02-23","200","0","0","160","0","1","5","周数","01112259571","7","-1","1","0","2023-03-05","1","2023-02-24 09:08:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("530","16285","16285-002","2023-02-23","500","0","0","200","0","4","7","周数","01111416285","9","-1","1","0","2023-03-30","1","2023-02-24 09:08:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("531","16285","16285-003","2023-02-23","500","0","0","200","0","4","7","周数","01111416285","7","-1","1","0","2023-03-30","1","2023-02-24 09:09:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("532","61500","61500-011","2023-02-23","1500","0","0","375","0","4","7","周数","01113261500","8","-1","1","0","2023-03-30","1","2023-02-24 09:10:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("533","61500","61500-012","2023-02-23","1500","0","0","375","0","4","7","周数","01113261500","7","-1","1","0","2023-03-30","1","2023-02-24 09:10:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("534","71302","71302-021","2023-02-24","500","0","0","150","0","4","5","周数","0129571302","18","-1","1","0","2023-03-21","1","2023-02-24 09:52:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("535","71302","71302-022","2023-02-24","500","0","0","150","0","4","5","周数","0129571302","7","-1","1","0","2023-03-21","1","2023-02-24 09:53:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("536","68601","68601-013","2023-02-24","1500","0","0","150","0","1","7","周数","0136368601","18","-1","1","0","2023-03-10","1","2023-02-24 09:53:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("537","68601","68601-014","2023-02-24","1500","0","0","150","0","1","7","周数","0136368601","7","-1","1","0","2023-03-10","1","2023-02-24 09:54:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("538","75994","75994-001","2023-02-24","1000","0","0","150","0","1","7","周数","0177575994","7","-1","1","0","2023-03-24","1","2023-02-24 09:56:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("540","22514","22514-001","2023-02-24","1000","0","0","500","0","4","7","周数","0187622514","7","-1","0","850","2023-03-17","1","2023-02-24 10:01:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("541","62113","62113-009","2023-02-25","2000","0","0","500","0","6","7","周数","01154062113","8","-1","1","0","2023-04-08","1","2023-02-25 11:33:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("542","23868","23868-001","2023-02-25","500","0","0","250","0","4","7","周数","0176423868","7","-1","0","500","2023-03-04","1","2023-02-25 11:35:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("543","92769","92769-011","2023-02-25","1000","0","0","350","0","5","7","周数","0143092769","9","-1","0","400","2023-03-25","1","2023-02-25 11:36:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("544","92769","92769-012","2023-02-25","1000","0","0","350","0","5","7","周数","0143092769","7","-1","0","400","2023-03-25","1","2023-02-25 11:37:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("545","33295","33295-001","2023-02-25","1000","0","0","350","0","4","7","周数","0166833295","8","-1","1","0","2023-04-08","1","2023-02-25 11:48:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("546","61500","61500-013","2023-02-25","1000","0","0","250","0","4","7","周数","01113261500","9","-1","1","0","2023-04-01","1","2023-02-25 11:49:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("547","61500","61500-014","2023-02-25","1000","0","0","250","0","4","7","周数","01113261500","7","-1","1","0","2023-04-01","1","2023-02-25 11:49:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("548","92479","92479-017","2023-02-27","500","0","0","200","100","1","5","周数","0129392479","8","-1","0","0","2023-03-04","1","2023-02-27 08:26:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("549","92479","92479-018","2023-02-27","500","0","0","200","100","1","5","周数","0129392479","7","-1","0","0","2023-03-04","1","2023-02-27 08:26:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("550","65158","65158-001","2023-02-28","300","0","0","250","0","3","3","周数","0146165158","9","-1","0","250","2023-03-06","1","2023-02-28 06:28:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("551","37688","37688-006","2023-02-28","3000","0","0","900","0","4","7","周数","01133637688","7","-1","0","1400","2023-06-27","1","2023-02-28 15:59:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("552","37736","37736-007","2023-02-28","1000","0","0","350","0","5","7","周数","0167337736","7","-1","1","0","2023-04-11","1","2023-02-28 15:59:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("553","71831","71831-001","2023-02-28","1000","0","0","300","0","1","7","周数","0172871831","18","-1","1","0","2023-03-14","1","2023-02-28 16:01:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("554","47877","47877-001","2023-02-28","1000","0","0","300","0","1","7","周数","0179647877","18","-1","0","1000","2023-03-28","1","2023-02-28 16:02:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("555","09472","09472-015","2023-03-01","250","0","0","100","0","1","5","周数","01123709472","18","-1","1","0","2023-03-21","1","2023-03-01 15:07:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("556","09472","09472-016","2023-03-01","250","0","0","100","0","1","5","周数","01123709472","7","-1","0","0","2023-03-21","1","2023-03-01 15:08:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("557","53518","53518-013","2023-03-01","1000","0","0","150","0","1","7","周数","0122753518","18","-1","1","0","2023-03-29","1","2023-03-01 15:08:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("558","53518","53518-014","2023-03-01","1000","0","0","150","0","1","7","周数","0122753518","7","-1","1","0","2023-03-29","1","2023-03-01 15:09:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("559","95385","95385-002","2023-03-01","250","0","0","100","0","4","5","周数","01158495385","9","-1","1","0","2023-03-26","1","2023-03-01 15:09:56");
INSERT INTO crm_1681128164_458_loan_details VALUES("560","95385","95385-003","2023-03-01","250","0","0","100","0","4","5","周数","01158495385","8","-1","1","0","2023-03-26","1","2023-03-01 15:10:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("561","54643","54643-001","2023-03-01","1000","0","0","430","0","4","5","周数","0128154643","8","-1","0","900","2023-03-16","1","2023-03-01 15:12:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("562","48512","48512-001","2023-03-01","1000","0","0","400","0","2","5","周数","0164548512","7","-1","1","0","2023-03-21","1","2023-03-01 15:13:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("563","62113","62113-010","2023-03-02","1000","0","0","300","0","4","7","周数","01154062113","8","-1","1","0","2023-03-30","1","2023-03-02 14:30:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("564","62113","62113-011","2023-03-02","1000","0","0","300","0","4","7","周数","01154062113","7","-1","1","0","2023-03-30","1","2023-03-02 14:30:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("565","65957","65957-001","2023-03-02","500","0","0","290","0","1","7","周数","01161165957","7","-1","0","500","2023-03-09","1","2023-03-02 14:32:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("566","20368","20368-001","2023-03-02","250","0","0","125","0","4","5","周数","01112920368","8","-1","1","-1","2023-04-06","1","2023-03-02 14:33:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("567","20368","20368-002","2023-03-02","250","0","0","125","0","4","5","周数","01112920368","7","-1","1","-1","2023-04-06","1","2023-03-02 14:34:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("568","30039","30039-001","2023-03-02","500","0","0","200","0","4","5","周数","0176530039","8","-1","1","0","2023-03-22","1","2023-03-02 14:35:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("569","30039","30039-002","2023-03-02","500","0","0","200","0","4","5","周数","0176530039","7","-1","1","0","2023-03-22","1","2023-03-02 14:35:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("570","17599","17599-001","2023-03-02","500","0","0","250","0","4","5","周数","0198117599","8","-1","0","105","2023-03-22","1","2023-03-02 14:38:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("571","17599","17599-002","2023-03-02","500","0","0","250","0","4","5","周数","0198117599","7","-1","0","105","2023-03-22","1","2023-03-02 14:38:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("572","37688","37688-007","2023-03-02","1500","0","0","500","0","4","7","周数","01133637688","8","-1","1","0","2023-06-22","1","2023-03-02 14:39:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("573","37688","37688-008","2023-03-02","1500","0","0","500","0","4","7","周数","01133637688","7","-1","1","0","2023-06-22","1","2023-03-02 14:39:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("574","73417","73417-001","2023-03-02","500","0","0","200","0","4","7","周数","0194773417","9","-1","1","0","2023-03-30","1","2023-03-02 14:40:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("575","73417","73417-002","2023-03-02","500","0","0","200","0","4","7","周数","0194773417","7","-1","1","0","2023-03-30","1","2023-03-02 14:41:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("576","93571","93571-001","2023-03-02","500","0","0","250","0","5","4","周数","0165293571","8","-1","1","0","2023-03-26","1","2023-03-02 14:57:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("577","93571","93571-002","2023-03-02","500","0","0","250","0","5","4","周数","0165293571","7","-1","1","0","2023-03-26","1","2023-03-02 14:58:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("578","68601","68601-015","2023-03-03","1500","0","0","150","0","1","7","周数","0136368601","18","-1","1","0","2023-03-17","1","2023-03-03 11:37:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("579","68601","68601-016","2023-03-03","1500","0","0","150","0","1","7","周数","0136368601","7","-1","1","0","2023-03-17","1","2023-03-03 11:37:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("580","31446","31446-001","2023-03-03","500","0","0","200","0","2","6","周数","01121931446","8","-1","1","0","2023-03-21","1","2023-03-03 11:39:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("581","93406","93406-010","2023-03-03","500","0","0","175","0","4","5","周数","0177693406","8","-1","1","0","2023-03-28","1","2023-03-03 11:39:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("582","93406","93406-011","2023-03-03","500","0","0","175","0","4","5","周数","0177693406","7","-1","1","0","2023-03-28","1","2023-03-03 11:40:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("583","74838","74838-001","2023-03-03","500","0","0","200","0","4","5","周数","0189674838","8","-1","1","0","2023-03-23","1","2023-03-03 11:41:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("584","74838","74838-002","2023-03-03","500","0","0","200","0","4","5","周数","0189674838","7","-1","1","0","2023-03-23","1","2023-03-03 11:42:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("585","84523","84523-001","2023-03-04","500","0","0","200","0","4","5","周数","01161584523","9","-1","0","500","2023-03-09","1","2023-03-04 06:14:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("586","84523","84523-002","2023-03-04","500","0","0","200","0","4","5","周数","01161584523","7","-1","0","500","2023-03-09","1","2023-03-04 06:15:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("587","74215","74215-005","2023-03-04","1000","0","0","510","0","4","7","周数","0172674215","7","-1","0","0","2023-04-08","1","2023-03-04 06:16:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("588","22254","22254-001","2023-03-04","1000","0","0","450","0","2","5","周数","0167322254","9","-1","1","0","2023-04-18","1","2023-03-04 06:17:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("589","09554","09554-001","2023-03-04","300","0","0","200","0","3","3","周数","0143509554","8","-1","1","0","2023-03-13","1","2023-03-04 06:19:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("590","53518","53518-015","2023-03-04","1000","0","0","300","0","5","7","周数","0122753518","8","-1","1","0","2023-04-22","1","2023-03-04 06:33:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("591","53518","53518-016","2023-03-04","1000","0","0","300","0","5","7","周数","0122753518","7","-1","1","0","2023-04-22","1","2023-03-04 06:33:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("593","06018","06018-007","2023-03-05","500","0","0","150","0","10","2","周数","0174806018","8","-1","1","0","2023-04-16","1","2023-03-05 08:36:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("594","06018","06018-008","2023-03-05","500","0","0","150","0","10","2","周数","0174806018","7","-1","1","0","2023-04-16","1","2023-03-05 08:37:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("597","80790","80790-001","2023-03-04","300","0","0","120","0","1","7","周数","0104280790","18","-1","1","0","2023-03-18","1","2023-03-05 08:42:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("598","24785","24785-001","2023-03-04","1000","0","0","400","0","2","7","周数","0165924785","18","-1","0","1000","2023-03-18","1","2023-03-05 08:43:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("601","53626","53626-001","2023-03-05","1000","0","0","300","0","1","7","周数","0172953626","18","-1","0","1000","2023-03-12","1","2023-03-05 08:45:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("602","16285","16285-004","2023-03-04","1500","0","0","600","0","4","7","周数","01111416285","7","-1","1","0","2023-04-15","1","2023-03-05 09:25:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("603","16285","16285-005","2023-03-05","500","0","0","150","0","1","7","周数","01111416285","18","-1","0","0","2023-03-19","1","2023-03-05 09:25:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("604","16285","16285-006","2023-03-05","500","0","0","150","0","1","7","周数","01111416285","7","-1","1","0","2023-03-19","1","2023-03-05 09:25:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("605","17708","17708-017","2023-03-05","500","0","0","150","0","4","7","周数","0196917708","9","-1","1","0","2023-04-09","1","2023-03-05 10:13:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("606","17708","17708-018","2023-03-05","500","0","0","150","0","4","7","周数","0196917708","7","-1","1","0","2023-04-09","1","2023-03-05 10:13:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("607","93406","93406-012","2023-03-05","2000","0","0","700","0","8","4","周数","0177693406","7","-1","0","800","2023-03-29","1","2023-03-05 10:13:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("608","53651","53651-001","2023-03-06","300","0","0","150","0","1","5","周数","01136553651","7","-1","1","0","2023-03-16","1","2023-03-06 15:36:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("609","33295","33295-002","2023-03-06","500","0","0","175","0","1","7","周数","0166833295","8","-1","1","0","2023-03-27","1","2023-03-06 15:37:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("610","33295","33295-003","2023-03-06","500","0","0","175","0","1","7","周数","0166833295","7","-1","1","0","2023-03-27","1","2023-03-06 15:39:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("611","17571","17571-002","2023-03-06","2500","0","0","650","0","4","7","周数","0166917571","7","-1","1","0","2023-04-10","1","2023-03-06 15:44:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("612","09472","09472-017","2023-03-06","250","0","0","125","0","1","4","周数","01123709472","8","-1","1","0","2023-03-14","1","2023-03-06 15:45:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("614","09472","09472-018","2023-03-06","250","0","0","125","0","1","4","周数","01123709472","7","-1","1","0","2023-03-14","1","2023-03-06 15:45:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("615","98925","98925-009","2023-03-06","500","0","0","150","0","4","7","周数","0168398925","9","-1","1","0","2023-05-01","1","2023-03-06 15:46:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("616","98925","98925-010","2023-03-06","500","0","0","150","0","4","7","周数","0168398925","7","-1","1","0","2023-05-01","1","2023-03-06 15:46:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("617","64357","64357-001","2023-03-06","1000","0","0","250","0","2","7","周数","0189164357","7","-1","0","500","2023-03-20","1","2023-03-06 15:50:07");
INSERT INTO crm_1681128164_458_loan_details VALUES("618","75994","75994-002","2023-03-06","500","0","0","100","0","1","7","周数","0177575994","18","-1","1","0","2023-03-20","1","2023-03-06 15:51:15");
INSERT INTO crm_1681128164_458_loan_details VALUES("619","75994","75994-003","2023-03-06","500","0","0","100","0","1","7","周数","0177575994","7","-1","1","0","2023-03-20","1","2023-03-06 15:51:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("620","81038","81038-001","2023-03-06","1000","0","0","400","0","1","7","周数","0189181038","18","-1","0","1000","2023-03-13","1","2023-03-06 15:53:23");
INSERT INTO crm_1681128164_458_loan_details VALUES("621","63744","63744-008","2023-03-07","500","0","0","175","0","5","5","周数","0167143744","8","-1","1","0","2023-03-27","1","2023-03-07 09:33:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("622","63744","63744-009","2023-03-07","500","0","0","175","0","5","5","周数","0167143744","7","-1","1","0","2023-03-27","1","2023-03-07 09:33:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("623","32629","32629-005","2023-03-07","500","0","0","125","0","5","5","周数","0137532629","8","-1","1","0","2023-04-06","1","2023-03-07 09:33:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("624","32629","32629-006","2023-03-07","500","0","0","125","0","5","5","周数","0137532629","7","-1","1","0","2023-04-06","1","2023-03-07 09:34:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("625","95385","95385-004","2023-03-07","250","0","0","100","0","4","5","周数","01158495385","7","-1","1","0","2023-03-27","1","2023-03-07 13:09:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("626","95385","95385-005","2023-03-07","250","0","0","100","0","4","5","周数","01158495385","9","-1","1","0","2023-03-27","1","2023-03-07 13:09:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("627","06088","06088-020","2023-03-08","500","0","0","175","0","4","7","周数","0162806088","9","-1","1","0","2023-04-05","1","2023-03-08 15:00:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("628","06088","06088-021","2023-03-08","500","0","0","175","0","4","7","周数","0162806088","7","-1","1","0","2023-04-05","1","2023-03-08 15:01:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("629","85042","85042-017","2023-03-09","750","0","0","275","0","5","7","周数","0169785042","8","-1","1","0","2023-04-20","1","2023-03-09 06:52:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("630","85042","85042-018","2023-03-09","750","0","0","275","0","5","7","周数","0169785042","7","-1","1","0","2023-04-20","1","2023-03-09 06:52:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("631","48512","48512-002","2023-03-09","500","0","0","200","0","2","5","周数","0164548512","8","-1","1","0","2023-04-03","1","2023-03-09 06:53:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("632","48512","48512-003","2023-03-09","500","0","0","200","0","2","5","周数","0164548512","7","-1","1","0","2023-04-03","1","2023-03-09 06:53:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("633","73417","73417-003","2023-03-09","500","0","0","200","0","4","5","周数","0194773417","8","-1","1","0","2023-03-29","1","2023-03-09 06:54:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("634","73417","73417-004","2023-03-09","500","0","0","200","0","4","5","周数","0194773417","7","-1","1","0","2023-03-29","1","2023-03-09 06:54:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("635","95385","95385-006","2023-03-09","500","0","0","200","0","4","5","周数","01158495385","9","-1","1","0","2023-04-03","1","2023-03-09 09:22:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("637","48512","48512-004","2023-03-09","1000","0","0","400","0","2","5","周数","0164548512","7","-1","1","0","2023-03-24","1","2023-03-09 16:08:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("638","31446","31446-002","2023-03-10","250","0","0","125","0","1","5","周数","01121931446","18","-1","1","0","2023-03-20","1","2023-03-10 09:09:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("639","31446","31446-003","2023-03-10","250","0","0","125","0","1","5","周数","01121931446","8","-1","1","0","2023-03-20","1","2023-03-10 09:09:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("640","74838","74838-003","2023-03-10","500","0","0","200","0","4","5","周数","0189674838","18","-1","1","0","2023-04-04","1","2023-03-10 09:10:23");
INSERT INTO crm_1681128164_458_loan_details VALUES("641","74838","74838-004","2023-03-10","500","0","0","200","0","4","5","周数","0189674838","7","-1","1","0","2023-04-04","1","2023-03-10 09:10:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("642","62113","62113-012","2023-03-10","500","0","0","200","0","4","5","周数","01154062113","18","-1","1","0","2023-03-30","1","2023-03-10 09:24:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("643","62113","62113-013","2023-03-10","500","0","0","200","0","4","5","周数","01154062113","8","-1","1","0","2023-03-30","1","2023-03-10 09:24:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("644","16285","16285-007","2023-03-11","500","0","0","200","0","4","7","周数","01111416285","9","-1","1","0","2023-04-15","1","2023-03-11 15:53:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("645","16285","16285-008","2023-03-11","500","0","0","200","0","4","7","周数","01111416285","7","-1","1","0","2023-04-15","1","2023-03-11 15:53:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("646","62113","62113-014","2023-03-11","500","0","0","200","0","4","5","周数","01154062113","18","-1","1","0","2023-03-31","1","2023-03-11 16:01:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("648","16285","16285-009","2023-03-12","500","0","0","150","0","1","7","周数","01111416285","18","-1","1","0","2023-03-26","1","2023-03-12 07:39:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("649","16285","16285-010","2023-03-12","500","0","0","150","0","1","7","周数","01111416285","7","-1","1","0","2023-03-26","1","2023-03-12 07:39:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("650","55655","55655-004","2023-03-12","1000","0","0","250","0","4","7","周数","0126687867","7","-1","0","250","2023-04-16","1","2023-03-12 07:40:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("653","06088","06088-022","2023-03-12","1000","0","0","350","0","4","7","周数","0162806088","7","-1","1","0","2023-04-09","1","2023-03-12 14:04:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("654","71831","71831-002","2023-03-12","1000","0","0","450","0","4","5","周数","0172871831","18","-1","0","500","2023-03-22","1","2023-03-12 14:04:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("655","71831","71831-003","2023-03-12","1000","0","0","450","0","4","5","周数","0172871831","7","-1","0","500","2023-03-22","1","2023-03-12 14:06:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("656","62113","62113-016","2023-03-11","500","0","0","200","0","4","5","周数","01154062113","8","-1","1","0","2023-03-31","1","2023-03-12 14:12:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("657","68601","68601-017","2023-03-13","2500","0","0","500","0","4","7","周数","0136368601","9","-1","1","0","2023-04-17","1","2023-03-13 12:01:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("658","68601","68601-018","2023-03-13","2500","0","0","500","0","4","7","周数","0136368601","7","-1","1","0","2023-04-17","1","2023-03-13 12:01:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("659","32320","32320-001","2023-03-13","2000","0","0","550","0","4","7","天数","0129632320","7","-1","1","0","2023-05-29","1","2023-03-13 12:04:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("660","85042","85042-019","2023-03-13","750","0","0","275","0","4","7","周数","0169785042","9","-1","1","0","2023-04-17","1","2023-03-13 12:07:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("661","85042","85042-020","2023-03-13","750","0","0","275","0","4","7","周数","0169785042","7","-1","1","0","2023-04-17","1","2023-03-13 12:08:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("662","77003","77003-001","2023-03-13","500","0","0","250","0","1","3","周数","0162541478","7","-1","1","0","2023-03-19","1","2023-03-13 12:09:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("663","10966","10966-001","2023-03-13","300","0","0","150","0","1","4","周数","0109810966","7","-1","0","0","2023-03-21","1","2023-03-13 12:12:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("664","37736","37736-008","2023-03-13","500","0","0","200","0","5","7","周数","0167337736","8","-1","1","0","2023-04-24","1","2023-03-13 12:19:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("665","37736","37736-009","2023-03-13","500","0","0","200","0","5","7","周数","0167337736","7","-1","1","0","2023-04-24","1","2023-03-13 12:19:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("666","48512","48512-005","2023-03-13","1000","0","0","400","0","2","5","周数","0164548512","7","-1","0","1000","2023-03-18","1","2023-03-13 12:23:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("667","00194","00194-001","2023-03-14","300","0","0","200","0","2","3","周数","0145100194","8","-1","0","300","2023-03-17","1","2023-03-14 10:45:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("668","53518","53518-017","2023-03-14","1000","0","0","300","0","5","7","周数","0122753518","9","-1","0","400","2023-04-11","1","2023-03-14 10:45:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("669","53518","53518-018","2023-03-14","1000","0","0","300","0","5","7","周数","0122753518","7","-1","0","400","2023-04-11","1","2023-03-14 10:46:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("670","10966","10966-002","2023-03-14","300","0","0","150","0","1","4","周数","0109810966","7","-1","1","0","2023-03-22","1","2023-03-14 10:47:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("671","38570","38570-003","2023-03-14","500","0","0","150","0","5","5","周数","01162038570","8","-1","1","0","2023-04-13","1","2023-03-14 10:48:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("672","38570","38570-004","2023-03-14","500","0","0","150","0","5","5","周数","01162038570","7","-1","1","0","2023-04-13","1","2023-03-14 10:48:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("673","74215","74215-006","2023-03-15","1000","0","0","400","0","4","5","周数","0172674215","9","-1","1","0","2023-04-09","1","2023-03-15 15:41:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("674","10966","10966-003","2023-03-15","1000","0","0","300","0","4","5","周数","0109810966","7","-1","1","0","2023-04-09","1","2023-03-15 15:42:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("675","53651","53651-002","2023-03-15","250","0","0","125","0","4","5","周数","01136553651","9","-1","1","0","2023-04-09","1","2023-03-15 15:42:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("676","53651","53651-003","2023-03-15","250","0","0","125","0","4","5","周数","01136553651","7","-1","1","0","2023-04-09","1","2023-03-15 15:43:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("677","89184","89184-001","2023-03-16","1000","0","0","500","0","4","5","周数","0105189184","7","-1","1","0","2023-04-10","1","2023-03-16 10:15:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("678","71633","71633-001","2023-03-16","1000","0","0","350","0","1","7","周数","0164671633","8","-1","0","1000","2023-03-23","1","2023-03-16 10:19:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("679","31571","31571-009","2023-03-16","5000","0","0","1800","0","4","7","周数","0126231571","7","-1","1","0","2023-04-13","1","2023-03-16 10:20:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("680","31571","31571-010","2023-03-16","5000","0","0","1800","0","4","7","周数","0126231571","8","-1","1","0","2023-04-20","1","2023-03-16 10:20:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("681","06088","06088-023","2023-03-17","500","0","0","175","0","4","7","周数","0162806088","8","-1","1","0","2023-04-14","1","2023-03-17 13:59:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("682","06088","06088-024","2023-03-17","500","0","0","175","0","4","7","周数","0162806088","7","-1","1","0","2023-04-14","1","2023-03-17 14:01:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("683","17708","17708-019","2023-03-17","1000","0","0","300","0","4","7","周数","0196917708","8","-1","0","250","2023-04-14","1","2023-03-17 14:01:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("684","17708","17708-020","2023-03-17","1000","0","0","300","0","4","7","周数","0196917708","7","-1","0","250","2023-04-14","1","2023-03-17 14:02:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("685","38570","38570-005","2023-03-17","500","0","0","200","0","5","5","周数","01162038570","9","-1","0","50","2023-04-11","1","2023-03-17 14:03:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("686","38570","38570-006","2023-03-17","500","0","0","200","0","5","5","周数","01162038570","7","-1","0","50","2023-04-11","1","2023-03-17 14:03:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("687","62113","62113-017","2023-03-17","1000","0","0","400","0","4","5","周数","01154062113","8","-1","0","200","2023-04-11","1","2023-03-17 14:05:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("688","62113","62113-018","2023-03-17","1000","0","0","400","0","4","5","周数","01154062113","7","-1","0","200","2023-04-11","1","2023-03-17 14:05:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("689","31571","31571-011","2023-03-17","2500","0","0","900","0","4","7","周数","0126231571","7","-1","1","0","2023-04-28","1","2023-03-17 14:06:15");
INSERT INTO crm_1681128164_458_loan_details VALUES("690","31571","31571-012","2023-03-17","2500","0","0","900","0","4","7","周数","0126231571","9","-1","1","0","2023-04-14","1","2023-03-17 14:06:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("691","92195","92195-001","2023-03-17","500","0","0","250","0","2","3","周数","01173692195","7","-1","1","0","2023-03-26","1","2023-03-17 14:35:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("692","74838","74838-005","2023-03-17","500","0","0","225","0","4","5","周数","0189674838","9","-1","1","0","2023-04-11","1","2023-03-17 14:35:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("693","74838","74838-006","2023-03-17","500","0","0","225","0","4","5","周数","0189674838","7","-1","1","0","2023-04-11","1","2023-03-17 14:36:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("694","74838","74838-007","2023-03-17","500","0","0","225","0","4","5","周数","0189674838","8","-1","1","0","2023-04-11","1","2023-03-17 14:36:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("695","74838","74838-008","2023-03-17","500","0","0","225","0","4","5","周数","0189674838","7","-1","1","0","2023-04-11","1","2023-03-17 14:36:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("696","47949","47949-001","2023-03-18","500","0","0","250","0","2","5","周数","0142847949","7","-1","0","50","2023-04-02","1","2023-03-18 08:39:07");
INSERT INTO crm_1681128164_458_loan_details VALUES("697","69589","69589-013","2023-03-18","1000","0","0","200","0","4","7","周数","0174569589","9","-1","0","250","2023-04-15","1","2023-03-18 08:39:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("698","69589","69589-014","2023-03-18","1000","0","0","200","0","4","7","周数","0174569589","7","-1","0","250","2023-04-15","1","2023-03-18 08:39:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("701","33295","33295-004","2023-03-18","500","0","0","200","0","1","5","周数","0166833295","18","-1","0","500","2023-03-28","1","2023-03-19 08:28:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("702","33295","33295-005","2023-03-18","500","0","0","200","0","1","5","周数","0166833295","8","-1","0","500","2023-03-28","1","2023-03-19 08:29:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("703","93406","93406-013","2023-03-18","1000","0","0","400","0","4","5","周数","0177693406","18","-1","0","250","2023-04-12","1","2023-03-19 08:32:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("704","93406","93406-014","2023-03-18","1000","0","0","400","0","4","5","周数","0177693406","7","-1","0","250","2023-04-12","1","2023-03-19 08:33:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("705","71302","71302-023","2023-03-18","750","0","0","200","0","5","5","周数","0129571302","18","-1","1","0","2023-04-27","1","2023-03-19 08:34:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("706","71302","71302-024","2023-03-18","750","0","0","200","0","5","5","周数","0129571302","7","-1","1","0","2023-04-27","1","2023-03-19 08:34:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("707","62178","62178-001","2023-03-19","1500","0","0","600","0","4","5","周数","01136262178","8","-1","1","0","2023-04-08","1","2023-03-19 15:28:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("708","16285","16285-011","2023-03-19","500","0","0","150","0","1","7","周数","01111416285","18","-1","1","0","2023-04-02","1","2023-03-19 15:39:14");
INSERT INTO crm_1681128164_458_loan_details VALUES("709","16285","16285-012","2023-03-19","500","0","0","150","0","1","7","周数","01111416285","7","-1","1","0","2023-04-02","1","2023-03-19 15:39:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("710","32320","32320-002","2023-03-20","750","0","0","250","0","4","6","周数","0129632320","9","-1","1","0","2023-05-07","1","2023-03-20 15:42:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("711","32320","32320-003","2023-03-20","750","0","0","250","0","4","6","周数","0129632320","7","-1","1","0","2023-05-07","1","2023-03-20 15:43:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("712","55876","55876-001","2023-03-20","600","0","0","300","0","3","5","周数","01110755876","7","-1","1","0","2023-04-14","1","2023-03-20 15:50:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("713","16285","16285-013","2023-03-20","1500","0","0","600","0","4","5","周数","01111416285","7","-1","1","0","2023-04-19","1","2023-03-20 15:52:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("714","17571","17571-003","2023-03-20","750","0","0","225","0","4","7","周数","0166917571","18","-1","1","0","2023-04-24","1","2023-03-20 15:53:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("715","17571","17571-004","2023-03-20","750","0","0","225","0","4","7","周数","0166917571","7","-1","1","0","2023-04-17","1","2023-03-20 15:54:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("716","53651","53651-004","2023-03-21","500","0","0","275","0","4","5","周数","01136553651","8","-1","1","0","2023-04-10","1","2023-03-21 13:06:02");
INSERT INTO crm_1681128164_458_loan_details VALUES("717","53651","53651-005","2023-03-21","500","0","0","275","0","4","5","周数","01136553651","7","-1","1","0","2023-04-10","1","2023-03-21 13:06:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("718","69589","69589-015","2023-03-21","1000","0","0","200","0","4","7","周数","0174569589","8","-1","0","500","2023-04-11","1","2023-03-21 13:06:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("719","69589","69589-016","2023-03-21","1000","0","0","200","0","4","7","周数","0174569589","7","-1","0","500","2023-04-11","1","2023-03-21 13:07:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("720","37389","37389-001","2023-03-21","500","0","0","250","0","1","5","周数","01124237389","7","-1","1","0","2023-04-15","1","2023-03-21 13:09:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("721","68601","68601-019","2023-03-21","2500","0","0","625","0","4","7","周数","0136368601","8","-1","0","625","2023-04-18","1","2023-03-21 13:09:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("722","68601","68601-020","2023-03-21","2500","0","0","625","0","4","7","周数","0136368601","7","-1","0","625","2023-04-18","1","2023-03-21 13:09:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("723","68601","68601-021","2023-03-21","1500","0","0","150","0","1","7","周数","0136368601","18","-1","1","0","2023-04-04","1","2023-03-21 13:10:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("724","68601","68601-022","2023-03-21","1500","0","0","150","0","1","7","周数","0136368601","7","-1","1","0","2023-04-04","1","2023-03-21 13:22:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("728","74215","74215-007","2023-03-22","1000","0","0","400","0","4","5","周数","0172674215","8","-1","1","0","2023-04-11","1","2023-03-22 09:37:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("729","89184","89184-002","2023-03-22","500","0","0","200","0","4","5","周数","0105189184","7","-1","1","0","2023-04-06","1","2023-03-22 09:39:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("730","89184","89184-003","2023-03-22","500","0","0","200","0","4","5","天数","0105189184","9","-1","1","0","2023-04-06","1","2023-03-22 09:40:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("731","17708","17708-021","2023-03-24","750","0","0","250","0","4","5","周数","0196917708","9","-1","0","186","2023-04-13","1","2023-03-25 05:16:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("732","17708","17708-022","2023-03-24","750","0","0","250","0","4","5","周数","0196917708","7","-1","0","186","2023-04-13","1","2023-03-25 05:16:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("733","62178","62178-002","2023-03-24","500","0","0","200","0","4","5","周数","0113626218","8","-1","1","0","2023-04-13","1","2023-03-25 05:17:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("734","62113","62113-019","2023-03-24","750","0","0","300","0","4","5","周数","01154062113","9","-1","0","374","2023-04-18","1","2023-03-25 05:29:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("735","62113","62113-020","2023-03-24","750","0","0","300","0","4","5","周数","01154062113","8","-1","0","374","2023-04-18","1","2023-03-25 05:29:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("736","89161","89161-001","2023-03-24","300","0","0","200","0","3","5","周数","0163489161","9","-1","1","0","2023-04-08","1","2023-03-25 05:30:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("737","81922","81922-001","2023-03-25","500","0","0","200","0","2","5","周数","0109781922","7","-1","1","0","2023-04-04","1","2023-03-25 11:37:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("738","33295","33295-006","2023-03-25","500","0","0","200","0","1","5","周数","0166833295","8","-1","0","500","2023-03-30","1","2023-03-25 15:10:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("739","33295","33295-007","2023-03-25","500","0","0","200","0","1","5","周数","0166833295","7","-1","0","500","2023-03-30","1","2023-03-25 15:10:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("740","06018","06018-009","2023-03-26","500","0","0","150","0","10","2","周数","0174806018","8","-1","1","0","2023-04-09","1","2023-03-26 15:48:32");
INSERT INTO crm_1681128164_458_loan_details VALUES("741","06018","06018-010","2023-03-26","500","0","0","150","0","10","2","周数","0174806018","7","-1","1","0","2023-04-09","1","2023-03-26 15:48:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("742","69369","69369-001","2023-03-26","1500","0","0","600","0","4","7","周数","0126569369","7","-1","0","750","2023-04-16","1","2023-03-26 15:50:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("743","01051","01051-001","2023-03-26","1800","0","0","500","0","4","10","周数","01051","7","-1","0","1350","2023-04-15","1","2023-03-26 15:52:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("744","43617","43617-015","2023-03-26","1500","0","0","500","0","5","5","周数","0123143617","9","-1","1","0","2023-04-15","1","2023-03-26 15:53:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("745","43617","43617-016","2023-03-26","1500","0","0","500","0","5","5","周数","0123143617","7","-1","1","0","2023-04-15","1","2023-03-26 15:54:09");
INSERT INTO crm_1681128164_458_loan_details VALUES("746","85033","85033-001","2023-03-26","500","0","0","200","0","1","4","周数","0137785033","18","-1","1","0","2023-04-03","1","2023-03-26 15:55:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("747","85042","85042-021","2023-03-27","750","0","0","275","0","4","5","周数","0169785042","9","-1","0","187","2023-04-11","1","2023-03-27 04:23:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("748","85042","85042-022","2023-03-27","750","0","0","275","0","4","5","周数","0169785042","7","-1","0","187","2023-04-11","1","2023-03-27 04:24:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("749","62113","62113-021","2023-03-27","1000","0","0","500","0","4","5","周数","01154062113","18","-1","0","250","2023-04-21","1","2023-03-27 05:00:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("750","62113","62113-022","2023-03-27","1000","0","0","500","0","4","5","周数","01154062113","8","-1","0","250","2023-04-21","1","2023-03-27 05:00:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("751","67294","67294-001","2023-03-27","500","0","0","250","0","3","4","周数","01114967294","7","-1","0","300","2023-04-04","1","2023-03-27 05:54:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("752","89184","89184-004","2023-03-27","500","0","0","200","0","4","5","周数","0105189184","8","-1","0","225","2023-04-16","1","2023-03-27 10:24:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("753","89184","89184-005","2023-03-27","500","0","0","200","0","4","5","周数","0105189184","7","-1","0","225","2023-04-16","1","2023-03-27 10:24:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("754","62178","62178-003","2023-03-24","500","0","0","200","0","4","5","周数","01136262178","7","-1","1","0","2023-04-13","1","2023-03-28 05:46:48");
INSERT INTO crm_1681128164_458_loan_details VALUES("755","74215","74215-008","2023-03-28","1000","0","0","400","0","4","5","周数","0172674215","7","-1","1","0","2023-04-17","1","2023-03-28 10:55:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("756","47949","47949-002","2023-03-28","250","0","0","100","0","4","5","周数","0142847949","8","-1","1","0","2023-04-17","1","2023-03-28 10:58:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("757","47949","47949-003","2023-03-28","250","0","0","100","0","4","5","周数","0142847949","7","-1","1","0","2023-04-17","1","2023-03-28 11:05:07");
INSERT INTO crm_1681128164_458_loan_details VALUES("758","16285","16285-014","2023-03-28","500","0","0","150","0","1","7","周数","01111416285","18","-1","0","500","2023-04-18","1","2023-03-28 15:50:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("759","16285","16285-015","2023-03-28","500","0","0","150","0","1","7","周数","01111416285","7","-1","0","500","2023-04-18","1","2023-03-28 15:50:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("760","68601","68601-023","2023-03-29","1500","0","0","150","0","1","7","周数","0136368601","18","-1","1","0","2023-04-12","1","2023-03-29 04:52:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("761","68601","68601-024","2023-03-29","1500","0","0","150","0","1","7","周数","0136368601","7","-1","1","0","2023-04-12","1","2023-03-29 04:52:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("762","06088","06088-025","2023-03-29","500","0","0","175","0","4","7","周数","0162806088","9","-1","0","250","2023-04-26","1","2023-03-29 04:53:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("763","06088","06088-026","2023-03-29","500","0","0","175","0","4","7","周数","0162806088","7","-1","0","250","2023-04-26","1","2023-03-29 04:53:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("764","43586","43586-001","2023-03-29","300","0","0","200","0","2","3","周数","0138343586","8","-1","0","300","2023-04-01","1","2023-03-29 04:55:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("765","71419","71419-001","2023-03-29","500","0","0","250","0","3","4","周数","0175071419","7","-1","0","500","2023-04-02","1","2023-03-29 08:45:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("766","17571","17571-005","2023-03-29","2000","0","0","600","0","4","7","周数","0166917571","7","-1","0","1000","2023-04-19","1","2023-03-29 13:23:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("767","62178","62178-004","2023-03-30","750","0","0","300","0","4","5","周数","01136262178","8","-1","0","562","2023-04-29","1","2023-03-30 03:45:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("768","62178","62178-005","2023-03-30","750","0","0","300","0","4","5","周数","01136262178","9","-1","0","562","2023-04-29","1","2023-03-30 03:45:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("769","98481","98481-001","2023-03-30","1000","0","0","400","0","4","5","周数","0142598481","8","-1","1","0","2023-04-19","1","2023-03-30 15:03:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("770","49030","49030-001","2023-03-30","500","0","0","250","0","2","3","周数","01161700094/01136249030","7","-1","1","0","2023-04-08","1","2023-03-30 15:05:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("771","81922","81922-002","2023-03-30","1000","0","0","300","0","4","5","周数","0109781922","7","-1","1","0","2023-04-19","1","2023-03-30 15:05:56");
INSERT INTO crm_1681128164_458_loan_details VALUES("772","89184","89184-006","2023-03-30","1000","0","0","400","0","4","5","周数","0105189184","7","-1","0","500","2023-04-14","1","2023-03-30 15:06:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("773","89161","89161-002","2023-03-28","250","0","0","150","0","4","5","周数","0163489161","9","-1","1","0","2023-04-17","1","2023-03-31 05:50:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("774","89161","89161-003","2023-03-28","250","0","0","150","0","4","5","周数","0163489161","7","-1","1","0","2023-04-17","1","2023-03-31 05:50:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("775","37389","37389-002","2023-03-31","250","0","0","125","0","5","1","周数","01124237389","7","-1","1","0","2023-04-03","1","2023-04-02 12:57:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("776","37389","37389-003","2023-03-31","250","0","0","125","0","5","1","周数","01124237389","9","-1","1","0","2023-04-03","1","2023-04-02 12:58:21");
INSERT INTO crm_1681128164_458_loan_details VALUES("777","16285","16285-016","2023-04-01","750","0","0","300","0","4","5","周数","01111416285","9","-1","0","302","2023-05-01","1","2023-04-02 12:58:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("778","16285","16285-017","2023-04-01","750","0","0","300","0","4","5","周数","01111416285","7","-1","0","302","2023-05-01","1","2023-04-02 12:59:18");
INSERT INTO crm_1681128164_458_loan_details VALUES("779","06088","06088-027","2023-04-01","1000","0","0","350","0","4","7","周数","0162806088","7","-1","0","1000","2023-04-08","1","2023-04-02 13:00:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("780","81922","81922-003","2023-04-01","250","0","0","100","0","4","5","周数","0109781922","9","-1","0","124","2023-04-16","1","2023-04-02 13:02:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("781","81922","81922-004","2023-04-01","250","0","0","100","0","4","5","周数","0109781922","7","-1","0","124","2023-04-16","1","2023-04-02 13:02:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("782","89184","89184-007","2023-04-01","750","0","0","300","0","4","5","周数","0105189184","9","-1","0","562","2023-04-16","1","2023-04-02 13:09:30");
INSERT INTO crm_1681128164_458_loan_details VALUES("784","69369","69369-002","2023-04-01","750","0","0","300","0","4","7","周数","0126569369","8","-1","0","562","2023-04-15","1","2023-04-02 13:10:24");
INSERT INTO crm_1681128164_458_loan_details VALUES("785","69369","69369-003","2023-04-01","750","0","0","300","0","4","7","周数","0126569369","7","-1","0","562","2023-04-15","1","2023-04-02 13:10:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("788","88242","88242-001","2023-03-31","300","0","0","120","0","1","7","周数","01173088242","18","-1","1","0","2023-04-14","1","2023-04-02 13:15:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("789","53651","53651-006","2023-04-01","500","0","0","250","0","4","4","周数","01136553651","18","-1","1","0","2023-04-13","1","2023-04-02 13:17:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("790","53651","53651-007","2023-04-01","500","0","0","250","0","4","4","周数","01136553651","7","-1","1","0","2023-04-13","1","2023-04-02 13:17:23");
INSERT INTO crm_1681128164_458_loan_details VALUES("791","89184","89184-008","2023-04-01","750","0","0","300","0","4","5","周数","0105189184","7","-1","0","562","2023-04-16","1","2023-04-02 13:56:35");
INSERT INTO crm_1681128164_458_loan_details VALUES("792","85042","85042-023","2023-04-03","750","0","0","300","0","4","6","周数","0169785042","8","-1","0","562","2023-04-15","1","2023-04-03 08:41:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("793","85042","85042-024","2023-04-03","750","0","0","300","0","4","6","周数","0169785042","7","-1","0","562","2023-04-15","1","2023-04-03 08:41:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("794","89161","89161-004","2023-04-03","500","0","0","200","0","4","5","周数","0163489161","9","-1","0","500","2023-04-08","1","2023-04-03 08:42:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("795","74215","74215-009","2023-04-03","1500","0","0","600","0","4","5","周数","0172674215","9","-1","0","750","2023-04-18","1","2023-04-03 08:43:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("796","63744","63744-010","2023-04-03","500","0","0","175","0","5","5","周数","0109363744","8","-1","0","400","2023-04-13","1","2023-04-03 08:43:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("797","63744","63744-011","2023-04-03","500","0","0","175","0","5","5","周数","0109363744","7","-1","0","400","2023-04-13","1","2023-04-03 08:44:10");
INSERT INTO crm_1681128164_458_loan_details VALUES("798","53651","53651-008","2023-04-03","500","0","0","275","0","4","4","周数","01136553651","8","-1","1","0","2023-04-19","1","2023-04-03 11:24:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("799","53651","53651-009","2023-04-03","500","0","0","275","0","4","4","周数","01136553651","7","-1","1","0","2023-04-19","1","2023-04-03 11:25:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("800","06158","06158-001","2023-04-04","1000","0","0","500","0","3","5","周数","0189706158","7","-1","0","1000","2023-04-09","1","2023-04-04 09:02:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("801","06158","06158-002","2023-04-04","1000","0","0","500","0","3","5","周数","0189706158","9","-1","0","1000","2023-04-09","1","2023-04-04 09:02:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("802","74838","74838-009","2023-04-04","500","0","0","225","0","4","5","周数","0189674838","7","-1","0","375","2023-04-14","1","2023-04-04 09:03:07");
INSERT INTO crm_1681128164_458_loan_details VALUES("803","74838","74838-010","2023-04-04","500","0","0","225","0","4","5","周数","0189674838","9","-1","0","375","2023-04-14","1","2023-04-04 09:03:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("804","62178","62178-006","2023-04-04","1500","0","0","600","0","4","5","周数","01136262178","8","-1","0","1050","2023-04-29","1","2023-04-04 09:04:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("805","16285","16285-018","2023-04-04","1500","0","0","600","0","4","5","周数","01111416285","7","-1","0","1125","2023-04-19","1","2023-04-04 09:04:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("806","09472","09472-019","2023-04-04","250","0","0","125","0","1","5","周数","01123709472","22","-1","0","200","2023-04-14","1","2023-04-04 09:06:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("807","09472","09472-020","2023-04-04","250","0","0","125","0","1","5","周数","01123709472","7","-1","0","200","2023-04-14","1","2023-04-04 09:06:33");
INSERT INTO crm_1681128164_458_loan_details VALUES("808","18277","18277-001","2023-04-04","500","0","0","200","0","1","5","周数","01133818277","22","-1","1","0","2023-04-19","1","2023-04-04 09:09:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("809","74215","74215-010","2023-04-04","1500","0","0","600","0","4","5","周数","0172674215","8","-1","0","1125","2023-04-14","1","2023-04-04 09:19:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("810","07829","07829-004","2023-04-05","500","0","0","250","0","4","4","周数","01158807829","7","-1","0","315","2023-04-17","1","2023-04-05 11:40:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("811","07829","07829-005","2023-04-05","500","0","0","250","0","4","4","周数","01158807829","22","-1","0","315","2023-04-17","1","2023-04-05 11:41:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("813","74838","74838-011","2023-04-05","500","0","0","250","0","4","5","周数","0189674838","8","-1","0","375","2023-04-15","1","2023-04-05 11:42:16");
INSERT INTO crm_1681128164_458_loan_details VALUES("814","74838","74838-012","2023-04-05","500","0","0","250","0","4","5","周数","0189674838","7","-1","0","375","2023-04-15","1","2023-04-05 11:42:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("815","31571","31571-013","2023-04-05","5000","0","0","2000","0","4","7","周数","0126231571","7","-1","0","5000","2023-04-12","1","2023-04-05 11:43:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("816","62178","62178-007","2023-04-05","500","0","0","250","0","1","5","周数","01146262178","18","-1","1","0","2023-04-20","1","2023-04-05 11:48:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("817","62178","62178-008","2023-04-05","500","0","0","250","0","1","5","周数","01146262178","8","-1","1","0","2023-04-20","1","2023-04-05 11:49:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("818","03289","03289-001","2023-04-06","500","0","0","175","0","4","5","周数","0164003289","8","-1","0","375","2023-04-16","1","2023-04-06 10:28:26");
INSERT INTO crm_1681128164_458_loan_details VALUES("819","03289","03289-002","2023-04-06","500","0","0","175","0","4","5","周数","0164003289","7","-1","0","375","2023-04-16","1","2023-04-06 10:28:44");
INSERT INTO crm_1681128164_458_loan_details VALUES("820","53651","53651-010","2023-04-06","250","0","0","175","0","4","4","周数","01136553651","9","-1","1","0","2023-04-18","1","2023-04-06 10:33:17");
INSERT INTO crm_1681128164_458_loan_details VALUES("821","53651","53651-011","2023-04-06","250","0","0","175","0","4","4","周数","01136553651","7","-1","1","0","2023-04-18","1","2023-04-06 10:34:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("822","47368","47368-003","2023-04-06","750","0","0","225","0","1","7","周数","0132347368/01120765698","8","-1","0","750","2023-04-13","1","2023-04-06 10:34:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("823","47368","47368-004","2023-04-06","750","0","0","225","0","1","7","周数","0132347368","7","-1","0","750","2023-04-13","1","2023-04-06 10:35:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("824","53651","53651-012","2023-04-06","500","0","0","400","0","2","3","周数","01136553651","22","-1","1","0","2023-04-18","1","2023-04-06 10:36:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("825","53651","53651-013","2023-04-06","500","0","0","400","0","2","3","周数","01136553651","7","-1","1","0","2023-04-18","1","2023-04-06 10:36:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("826","10925","10925-001","2023-04-06","500","0","0","350","0","2","2","周数","0134610925","7","-1","0","350","2023-04-10","1","2023-04-06 10:38:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("827","31571","31571-014","2023-04-06","5000","0","0","2000","0","4","7","周数","0126231571","8","-1","0","5000","2023-04-13","1","2023-04-06 10:38:51");
INSERT INTO crm_1681128164_458_loan_details VALUES("828","74215","74215-011","2023-04-06","1000","0","0","500","0","4","5","周数","0172674215","18","-1","0","750","2023-04-16","1","2023-04-06 17:42:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("829","88242","88242-002","2023-04-06","150","0","0","50","0","1","1","周数","01173088242","18","-1","1","0","2023-04-08","1","2023-04-06 17:43:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("830","01461","01461-001","2023-04-05","1500","0","0","600","0","20","0","周数","0162501461","8","-1","0","1200","2023-04-05","1","2023-04-07 03:47:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("831","06088","06088-028","2023-04-07","500","0","0","175","0","4","7","周数","0162806088","8","-1","0","500","2023-04-14","1","2023-04-07 09:12:37");
INSERT INTO crm_1681128164_458_loan_details VALUES("832","06088","06088-029","2023-04-07","500","0","0","175","0","4","7","周数","0162806088","7","-1","0","500","2023-04-14","1","2023-04-07 09:12:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("833","09472","09472-021","2023-04-07","250","0","0","125","0","1","5","周数","01123709472","8","-1","0","250","2023-04-12","1","2023-04-07 09:28:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("834","09472","09472-022","2023-04-07","250","0","0","125","0","1","5","周数","01123709472","7","-1","0","250","2023-04-12","1","2023-04-07 09:28:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("835","62178","62178-009","2023-04-07","500","0","0","250","0","1","5","周数","01136262178","8","-1","1","0","2023-04-17","1","2023-04-07 09:28:43");
INSERT INTO crm_1681128164_458_loan_details VALUES("836","62178","62178-010","2023-04-07","500","0","0","250","0","1","5","周数","01136262178","7","-1","1","0","2023-04-17","1","2023-04-07 09:29:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("837","31571","31571-015","2023-04-07","2500","0","0","1000","0","4","7","周数","0126231571","9","-1","0","2500","2023-04-14","1","2023-04-07 09:29:39");
INSERT INTO crm_1681128164_458_loan_details VALUES("838","31571","31571-016","2023-04-07","2500","0","0","1000","0","4","7","周数","0126231571","7","-1","0","2500","2023-04-14","1","2023-04-07 09:29:55");
INSERT INTO crm_1681128164_458_loan_details VALUES("839","56528","56528-001","2023-04-07","500","0","0","300","0","2","5","周数","0147656528","7","-1","0","500","2023-04-12","1","2023-04-07 09:31:23");
INSERT INTO crm_1681128164_458_loan_details VALUES("841","38645","38645-001","2023-04-07","500","0","0","250","0","2","3","周数","0128738645","22","-1","1","0","2023-04-13","1","2023-04-07 10:01:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("842","53651","53651-014","2023-04-07","500","0","0","400","0","2","3","周数","01136553651","18","-1","1","0","2023-04-19","1","2023-04-07 10:01:38");
INSERT INTO crm_1681128164_458_loan_details VALUES("843","53651","53651-015","2023-04-07","500","0","0","400","0","2","3","周数","01136553651","7","-1","1","0","2023-04-19","1","2023-04-07 10:01:56");
INSERT INTO crm_1681128164_458_loan_details VALUES("844","88242","88242-003","2023-04-07","300","0","0","120","0","2","7","周数","01173088242","18","-1","0","300","2023-04-14","1","2023-04-07 10:02:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("845","85033","85033-002","2023-04-07","500","0","0","150","70","1","7","周数","0137785033","18","-1","0","0","2023-04-14","1","2023-04-07 12:23:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("846","43134","43134-001","2023-04-08","500","0","0","250","0","1","5","周数","0108843134","22","-1","0","500","2023-04-13","1","2023-04-08 07:47:45");
INSERT INTO crm_1681128164_458_loan_details VALUES("847","95466","95466-001","2023-04-08","1000","0","0","500","0","4","4","周数","0173395466","7","-1","0","1000","2023-04-12","1","2023-04-08 07:49:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("848","18277","18277-002","2023-04-08","500","0","0","275","0","2","5","周数","01133818277","7","-1","0","375","2023-04-18","1","2023-04-08 07:49:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("849","18277","18277-003","2023-04-08","500","0","0","275","0","2","5","周数","01133818277","22","-1","0","375","2023-04-18","1","2023-04-08 07:50:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("850","43617","43617-017","2023-04-08","1500","0","0","500","0","5","5","周数","0123143617","7","-1","0","1500","2023-04-13","1","2023-04-08 07:50:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("851","43617","43617-018","2023-04-08","1500","0","0","500","0","5","5","周数","0123143617","22","-1","0","1500","2023-04-13","1","2023-04-08 07:50:59");
INSERT INTO crm_1681128164_458_loan_details VALUES("852","05729","05729-001","2023-04-08","500","0","0","270","0","1","3","周数","0174305729","8","-1","1","0","2023-04-14","1","2023-04-08 08:04:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("853","20901","20901-001","2023-04-08","2000","200","0","800","0","2","7","周数","0193820901","18","-1","0","2000","2023-04-15","1","2023-04-08 08:07:06");
INSERT INTO crm_1681128164_458_loan_details VALUES("854","07545","07545-001","2023-04-08","10000","1000","0","1500","0","1","10","周数","0169207545","18","-1","0","10000","2023-04-18","1","2023-04-08 08:09:52");
INSERT INTO crm_1681128164_458_loan_details VALUES("855","69369","69369-004","2023-04-08","750","0","0","300","0","4","5","周数","0126569369","7","-1","0","750","2023-04-13","1","2023-04-08 08:46:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("856","69369","69369-005","2023-04-08","750","0","0","300","0","4","5","周数","0126569369","9","-1","0","750","2023-04-13","1","2023-04-08 08:47:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("857","98481","98481-002","2023-04-08","500","0","0","250","0","4","5","周数","0142598481","7","-1","0","375","2023-04-18","1","2023-04-08 10:09:28");
INSERT INTO crm_1681128164_458_loan_details VALUES("858","98481","98481-003","2023-04-08","500","0","0","250","0","4","5","周数","0142598481","8","-1","0","375","2023-04-18","1","2023-04-08 10:09:47");
INSERT INTO crm_1681128164_458_loan_details VALUES("859","81922","81922-005","2023-04-08","500","0","0","250","0","4","5","周数","0109781922","8","-1","0","500","2023-04-13","1","2023-04-08 13:20:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("860","81922","81922-006","2023-04-08","500","0","0","250","0","4","5","周数","0109781922","7","-1","0","500","2023-04-13","1","2023-04-08 13:20:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("861","17571","17571-006","2023-04-08","1000","0","0","312","0","4","7","周数","0166917571","18","-1","0","1000","2023-04-15","1","2023-04-08 13:22:31");
INSERT INTO crm_1681128164_458_loan_details VALUES("862","17571","17571-007","2023-04-08","1000","0","0","312","0","4","7","周数","0166917571","7","-1","0","1000","2023-04-15","1","2023-04-08 13:22:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("863","53990","53990-001","2023-04-08","300","0","0","180","0","1","5","周数","0129453990","18","-1","0","300","2023-04-13","1","2023-04-08 13:40:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("864","88242","88242-004","2023-04-09","200","0","0","80","0","1","7","周数","01173088242","18","-1","0","200","2023-04-16","1","2023-04-09 08:25:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("865","98689","98689-001","2023-04-09","500","0","0","250","0","1","7","周数","0142098689","18","-1","1","0","2023-04-23","1","2023-04-09 15:08:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("866","98689","98689-002","2023-04-09","250","0","0","125","0","1","7","周数","0142098689","18","-1","0","250","2023-04-16","1","2023-04-09 15:08:36");
INSERT INTO crm_1681128164_458_loan_details VALUES("867","98689","98689-003","2023-04-09","250","0","0","125","0","1","7","周数","0142098689","9","-1","0","250","2023-04-16","1","2023-04-09 15:08:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("868","74838","74838-013","2023-04-04","500","0","0","225","0","4","5","周数","0189674838","18","-1","0","375","2023-04-14","1","2023-04-09 15:10:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("869","74838","74838-014","2023-04-04","500","0","0","225","0","4","5","周数","0189674838","7","-1","0","375","2023-04-14","1","2023-04-09 15:10:49");
INSERT INTO crm_1681128164_458_loan_details VALUES("870","39246","39246-001","2023-04-10","500","0","0","255","0","1","1","周数","0109839246","18","-1","1","0","2023-04-12","1","2023-04-10 10:39:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("871","53651","53651-016","2023-04-10","500","0","0","400","0","2","3","周数","01136553651","8","-1","1","0","2023-04-16","1","2023-04-10 10:39:50");
INSERT INTO crm_1681128164_458_loan_details VALUES("872","53651","53651-017","2023-04-10","500","0","0","400","0","2","3","周数","01136553651","7","-1","1","0","2023-04-16","1","2023-04-10 10:40:12");
INSERT INTO crm_1681128164_458_loan_details VALUES("873","06018","06018-011","2023-04-10","1000","0","0","300","0","10","2","周数","0174806018","8","-1","0","1000","2023-04-12","1","2023-04-10 10:43:01");
INSERT INTO crm_1681128164_458_loan_details VALUES("874","06018","06018-012","2023-04-10","1000","0","0","300","0","10","2","周数","0174806018","7","-1","0","1000","2023-04-12","1","2023-04-10 10:43:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("875","37164","37164-001","2023-04-10","1000","0","0","400","0","4","4","周数","0183937164","8","-1","0","1000","2023-04-14","1","2023-04-10 10:44:54");
INSERT INTO crm_1681128164_458_loan_details VALUES("876","93746","93746-001","2023-04-10","500","0","0","300","0","4","3","周数","0195193746","7","-1","0","500","2023-04-13","1","2023-04-10 10:46:11");
INSERT INTO crm_1681128164_458_loan_details VALUES("877","43617","43617-019","2023-04-10","1500","0","0","500","0","5","5","周数","0123143617","7","-1","0","1500","2023-04-15","1","2023-04-10 10:46:41");
INSERT INTO crm_1681128164_458_loan_details VALUES("878","43617","43617-020","2023-04-10","1500","0","0","500","0","5","5","周数","0123143617","9","-1","0","1500","2023-04-15","1","2023-04-10 10:47:03");
INSERT INTO crm_1681128164_458_loan_details VALUES("879","85504","85504-001","2023-04-10","2500","0","0","1000","0","4","7","周数","01136785504","7","-1","0","2500","2023-04-17","1","2023-04-10 13:06:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("880","07829","07829-006","2023-04-11","500","0","0","250","0","4","4","周数","01158807829","7","-1","0","500","2023-04-15","1","2023-04-11 06:42:58");
INSERT INTO crm_1681128164_458_loan_details VALUES("881","07829","07829-007","2023-04-11","500","0","0","250","0","4","4","周数","01158807829","9","-1","0","500","2023-04-15","1","2023-04-11 06:43:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("882","64654","64654-001","2023-04-11","500","0","0","250","0","4","5","周数","0147164654","8","-1","0","500","2023-04-16","1","2023-04-11 06:47:20");
INSERT INTO crm_1681128164_458_loan_details VALUES("883","64654","64654-002","2023-04-11","500","0","0","250","0","4","5","周数","0147164654","7","-1","0","500","2023-04-16","1","2023-04-11 06:47:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("884","38645","38645-002","2023-04-11","250","0","0","150","0","2","3","周数","0128738645","7","-1","0","250","2023-04-14","1","2023-04-11 06:48:27");
INSERT INTO crm_1681128164_458_loan_details VALUES("885","38645","38645-003","2023-04-11","250","0","0","150","0","2","3","周数","0128738645","22","-1","0","250","2023-04-14","1","2023-04-11 06:48:46");
INSERT INTO crm_1681128164_458_loan_details VALUES("886","53651","53651-018","2023-04-11","500","0","0","400","0","2","3","周数","01136553651","18","-1","1","0","2023-04-17","1","2023-04-11 06:49:25");
INSERT INTO crm_1681128164_458_loan_details VALUES("887","53651","53651-019","2023-04-11","500","0","0","400","0","2","3","周数","01136553651","7","-1","1","0","2023-04-17","1","2023-04-11 06:49:42");
INSERT INTO crm_1681128164_458_loan_details VALUES("888","17661","17661-001","2023-04-11","500","0","0","270","0","1","1","周数","01116817661","18","-1","1","0","2023-04-13","1","2023-04-11 09:07:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("889","97116","97116-001","2023-04-11","250","0","0","100","0","4","5","周数","0174697116","8","-1","0","250","2023-04-16","1","2023-04-11 09:09:08");
INSERT INTO crm_1681128164_458_loan_details VALUES("890","97116","97116-002","2023-04-11","250","0","0","100","0","4","5","周数","0174697116","7","-1","0","250","2023-04-16","1","2023-04-11 09:09:29");
INSERT INTO crm_1681128164_458_loan_details VALUES("891","16285","16285-019","2023-04-11","500","0","0","250","0","4","5","周数","01111416285","7","-1","0","500","2023-04-16","1","2023-04-11 09:10:00");
INSERT INTO crm_1681128164_458_loan_details VALUES("892","16285","16285-020","2023-04-11","500","0","0","250","0","4","5","周数","01111416285","22","-1","0","500","2023-04-16","1","2023-04-11 09:10:22");
INSERT INTO crm_1681128164_458_loan_details VALUES("893","98481","98481-004","2023-04-11","1000","0","0","500","0","4","4","周数","0142598481","8","-1","0","1000","2023-04-15","1","2023-04-11 09:11:40");
INSERT INTO crm_1681128164_458_loan_details VALUES("894","74215","74215-012","2023-04-11","2000","0","0","1000","0","4","5","周数","0172674215","7","-1","0","2000","2023-04-16","1","2023-04-11 09:12:05");
INSERT INTO crm_1681128164_458_loan_details VALUES("897","53651","53651-020","2023-04-11","500","0","0","400","0","2","3","周数","01136553651","7","-1","0","500","2023-04-14","1","2023-04-11 11:58:34");
INSERT INTO crm_1681128164_458_loan_details VALUES("898","53651","53651-021","2023-04-11","500","0","0","400","0","2","3","周数","01136553651","9","-1","0","500","2023-04-14","1","2023-04-11 11:58:53");
INSERT INTO crm_1681128164_458_loan_details VALUES("899","17400","17400-001","2023-04-10","500","0","0","250","0","4","5","周数","0174917400","8","-1","0","500","2023-04-15","1","2023-04-11 14:58:13");
INSERT INTO crm_1681128164_458_loan_details VALUES("900","39246","39246-002","2023-04-12","300","0","0","132","0","1","5","周数","0109839246","7","-1","0","300","2023-04-17","1","2023-04-12 12:06:57");
INSERT INTO crm_1681128164_458_loan_details VALUES("901","39246","39246-003","2023-04-12","300","0","0","133","0","1","5","周数","0109839246","18","-1","0","300","2023-04-17","1","2023-04-12 12:07:19");
INSERT INTO crm_1681128164_458_loan_details VALUES("902","98481","98481-005","2023-04-12","500","0","0","335","0","4","4","周数","0142598481","8","-1","0","500","2023-04-16","1","2023-04-12 12:08:04");
INSERT INTO crm_1681128164_458_loan_details VALUES("903","98481","98481-006","2023-04-12","500","0","0","335","0","4","4","周数","0142598481","22","-1","0","500","2023-04-16","1","2023-04-12 12:08:22");



CREATE TABLE `crm_1681128164_458_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3028 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681128164_458_loan_payment_details VALUES("44","71302-001","71302-001-1","2022-12-02","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("45","71302-002","71302-002-1","2022-12-02","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("46","70960-001","70960-001-1","2022-12-01","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("47","70960-002","70960-002-1","2022-12-01","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("48","90911-001","90911-001-1","2022-12-04","","40","0","","","","","460","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("49","90911-002","90911-002-1","2022-12-04","","40","0","","","","","460","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("50","77764-001","77764-001-1","2022-12-05","","250","0","","","","","750","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("51","77764-002","77764-002-1","2022-12-05","","250","0","","","","","750","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("52","90911-001","90911-001-2","2022-12-06","","50","0","","","","","410","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("53","90911-002","90911-002-2","2022-12-06","","50","0","","","","","410","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("54","17708-001","17708-001-1","2022-12-06","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("55","70960-001","70960-001-2","2022-12-06","","30","0","","","","","345","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("56","17708-002","17708-002-1","2022-12-06","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("57","70960-002","70960-002-2","2022-12-06","","30","0","","","","","345","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("58","88172-001","88172-001-1","2022-12-05","","750","0","","","","","2250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("59","70960-003","70960-003-1","2022-12-07","","50","0","","","","","450","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("60","70960-004","70960-004-1","2022-12-07","","50","0","","","","","450","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("61","71302-001","71302-001-2","2022-12-07","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("62","71302-002","71302-002-2","2022-12-07","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("63","06088-001","06088-001-1","2022-12-07","","475","0","","","","","25","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("64","03766-002","03766-002-1","2022-12-07","","115","0","","","","","385","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("65","03766-001","03766-001-1","2022-12-07","","115","0","","","","","385","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("66","71302-003","71302-003-1","2022-12-08","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("67","71302-004","71302-004-1","2022-12-08","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("68","83720-001","83720-001-1","2022-12-08","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("69","83720-002","83720-002-1","2022-12-08","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("70","70960-001","70960-001-3","2022-12-09","","125","0","","","","","220","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("71","70960-002","70960-002-3","2022-12-09","","125","0","","","","","220","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("72","90911-001","90911-001-3","2022-12-09","","25","0","","","","","385","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("73","77764-001","77764-001-2","2022-12-09","","250","0","","","","","500","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("74","50503-001","50503-001-1","2022-12-09","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("75","67073-001","67073-001-1","2022-12-09","","125","0","","","","","125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("76","53518-001","53518-001-1","2022-12-09","","100","0","","","","","400","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("77","90911-002","90911-002-3","2022-12-09","","25","0","","","","","385","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("78","77764-002","77764-002-2","2022-12-09","","250","0","","","","","500","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("79","50503-002","50503-002-1","2022-12-09","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("80","67073-002","67073-002-1","2022-12-09","","125","0","","","","","125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("81","53518-002","53518-002-1","2022-12-09","","100","0","","","","","400","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("82","70960-001","70960-001-4","2022-12-10","","125","0","","","","","95","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("83","68595-001","68595-001-1","2022-12-10","","95","0","","","","","305","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("84","77764-003","77764-003-1","2022-12-11","","375","0","","","","","1125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("85","90911-001","90911-001-4","2022-12-11","","385","615","","","","","-615","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("86","71302-005","71302-005-1","2022-12-16","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("87","17396-001","17396-001-1","2022-12-11","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("88","70960-002","70960-002-4","2022-12-11","","125","0","","","","","95","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("89","68595-002","68595-002-1","2022-12-11","","95","0","","","","","305","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("90","77764-004","77764-004-1","2022-12-11","","375","0","","","","","1125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("91","90911-002","90911-002-4","2022-12-11","","385","615","","","","","-615","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("92","71302-006","71302-006-1","2022-12-16","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("93","17396-002","17396-002-1","2022-12-11","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("94","70960-003","70960-003-2","2022-12-12","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("95","60657-001","60657-001-1","2022-12-12","","75","0","","","","","425","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("96","70960-003","70960-003-3","2022-12-15","","125","0","","","","","325","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("97","70960-004","70960-004-2","2022-12-12","","125","0","","","","","325","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("98","55065-001","55065-001-1","2022-12-12","","625","0","","","","","1875","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("99","55065-002","55065-002-1","2022-12-12","","625","0","","","","","1875","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("101","70960-001","70960-001-5","2022-12-13","","95","30","","","","","-30","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("102","71302-003","71302-003-2","2022-12-13","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("103","02568-001","02568-001-1","2022-12-13","","25","0","","","","","1475","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("104","26747-001","26747-001-1","2022-12-13","","250","0","","","","","750","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("105","17708-001","17708-001-2","2022-12-13","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("106","70960-002","70960-002-5","2022-12-13","","95","30","","","","","-30","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("107","71302-004","71302-004-2","2022-12-13","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("108","02568-002","02568-002-1","2022-12-13","","25","0","","","","","1475","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("109","26747-002","26747-002-1","2022-12-13","","250","0","","","","","750","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("110","17708-002","17708-002-2","2022-12-13","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("111","03766-001","03766-001-2","2022-12-14","","115","0","","","","","270","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("112","03766-002","03766-002-2","2022-12-14","","115","0","","","","","270","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("113","71302-003","71302-003-3","2022-12-14","","125","0","","","","","125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("114","60657-001","60657-001-2","2022-12-14","","50","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("115","02568-001","02568-001-2","2022-12-14","","200","0","","","","","1275","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("116","53518-001","53518-001-2","2022-12-14","","100","0","","","","","300","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("117","71302-004","71302-004-3","2022-12-14","","125","0","","","","","125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("119","02568-002","02568-002-2","2022-12-14","","200","0","","","","","1275","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("120","53518-002","53518-002-2","2022-12-14","","100","0","","","","","300","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("121","17708-003","17708-003-1","2022-12-15","","50","0","","","","","450","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("122","77764-003","77764-003-2","2022-12-15","","200","0","","","","","925","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("123","70960-004","70960-004-3","2022-12-15","","125","0","","","","","200","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("124","43617-001","43617-001-1","2022-12-15","","200","0","","","","","800","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("125","71302-002","71302-002-3","2022-12-15","","125","0","","","","","125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("127","17708-002","17708-002-3","2022-12-20","","125","0","","","","","200","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("128","77764-002","77764-002-3","2022-12-17","","500","0","","","","","300","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("130","43617-002","43617-002-1","2022-12-15","","200","0","","","","","800","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("131","71302-001","71302-001-3","2022-12-15","","125","0","","","","","125","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("132","17396-001","17396-001-2","2022-12-15","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("133","17396-002","17396-002-2","2022-12-15","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("134","06088-002","06088-002-1","2022-12-15","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("137","60657-002","60657-002-1","2022-12-14","","50","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("138","06088-003","06088-003-1","2022-12-15","","125","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("139","68601-001","68601-001-1","2022-12-16","","500","0","","","","","1500","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("140","05161-001","05161-001-1","2022-12-16","","50","0","","","","","710","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("141","17708-003","17708-003-2","2022-12-16","","75","0","","","","","375","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("142","71302-005","71302-005-2","2022-12-24","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("143","50503-001","50503-001-2","2022-12-16","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("144","68601-002","68601-002-1","2022-12-16","","500","0","","","","","1500","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("145","05161-002","05161-002-1","2022-12-16","","50","0","","","","","690","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("146","17708-004","17708-004-1","2022-12-15","","50","0","","","","","425","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("147","71302-006","71302-006-2","2022-12-24","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("148","50503-002","50503-002-2","2022-12-16","","125","0","","","","","250","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("149","07829-003","07829-003-1","2022-12-16","","65","0","","","","","435","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("150","77764-003","77764-003-3","2022-12-17","","925","0","","","","","0","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("151","77764-001","77764-001-3","2022-12-17","","500","0","","","","","0","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("152","77764-004","77764-004-2","2022-12-15","","200","0","","","","","200","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("153","68595-001","68595-001-2","2022-12-18","","305","0","","","","","0","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("154","60657-001","60657-001-3","2022-12-15","","25","0","","","","","350","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("155","02568-001","02568-001-3","2022-12-18","","100","0","","","","","1175","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("156","26747-001","26747-001-2","2022-12-18","","250","0","","","","","500","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("157","60657-002","60657-002-2","2022-12-15","","25","0","","","","","350","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("158","02568-002","02568-002-3","2022-12-18","","100","0","","","","","1175","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("159","26747-002","26747-002-2","2022-12-18","","250","0","","","","","500","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("160","68595-002","68595-002-2","2022-12-18","","305","0","","","","","0","2022-12-20 08:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("161","69589-001","69589-001-1","2022-12-20","","125","0","","","","","375","2022-12-20 18:27:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("162","05161-001","05161-001-2","2022-12-20","","50","0","","","","","660","2022-12-20 18:27:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("163","83720-001","83720-001-2","2022-12-20","","125","0","","","","","250","2022-12-20 18:27:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("164","02568-001","02568-001-4","2022-12-20","","100","0","","","","","1075","2022-12-20 18:28:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("165","78179-001","78179-001-1","2022-12-20","","135","0","","","","","365","2022-12-20 18:28:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("166","99001-001","99001-001-1","2022-12-20","","188","0","","","","","562","2022-12-20 18:28:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("167","85042-001","85042-001-1","2022-12-20","","100","0","","","","","400","2022-12-20 18:28:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("168","56559-001","56559-001-1","2022-12-20","","125","0","","","","","375","2022-12-20 18:28:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("169","17708-001","17708-001-3","2022-12-20","","125","0","","","","","125","2022-12-20 18:29:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("170","44800-002","44800-002-1","2022-12-20","","625","0","","","","","1875","2022-12-20 18:29:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("171","02568-002","02568-002-4","2022-12-20","","100","0","","","","","1075","2022-12-20 18:29:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("172","78179-002","78179-002-1","2022-12-20","","135","0","","","","","365","2022-12-20 18:29:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("173","99001-002","99001-002-1","2022-12-20","","188","0","","","","","563","2022-12-20 18:30:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("174","85042-002","85042-002-1","2022-12-20","","100","0","","","","","400","2022-12-20 18:30:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("175","56559-002","56559-002-1","2022-12-20","","125","0","","","","","375","2022-12-20 18:30:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("177","44800-001","44800-001-1","2022-12-20","","625","0","","","","","1875","2022-12-20 18:31:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("178","69589-002","69589-002-1","2022-12-20","","125","0","","","","","375","2022-12-20 18:31:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("179","05161-002","05161-002-2","2022-12-20","","50","0","","","","","640","2022-12-20 18:32:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("180","83720-002","83720-002-2","2022-12-20","","125","0","","","","","250","2022-12-20 18:32:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("181","60657-002","60657-002-3","2022-12-12","","75","0","","","","","275","2022-12-20 18:48:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("182","77764-004","77764-004-3","2022-12-17","","925","0","","","","","0","2022-12-20 19:04:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("183","60657-001","60657-001-4","2022-12-18","","25","0","","","","","325","2022-12-20 19:05:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("184","60657-002","60657-002-4","2022-12-18","","25","0","","","","","325","2022-12-20 19:06:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("185","19827-001","19827-001-1","2022-12-19","","150","0","","","","","850","2022-12-20 19:08:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("186","26747-003","26747-003-1","2022-12-19","","250","0","","","","","750","2022-12-20 19:08:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("187","67073-001","67073-001-2","2022-12-19","","63","0","","","","","62","2022-12-20 19:08:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("188","43617-002","43617-002-2","2022-12-19","","200","0","","","","","600","2022-12-20 19:08:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("189","53518-001","53518-001-3","2022-12-19","","100","0","","","","","200","2022-12-20 19:09:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("190","02020-001","02020-001-1","2022-12-19","","125","0","","","","","375","2022-12-20 19:09:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("191","67073-002","67073-002-2","2022-12-19","","63","0","","","","","62","2022-12-20 19:09:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("192","43617-001","43617-001-2","2022-12-19","","200","0","","","","","600","2022-12-20 19:10:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("193","53518-002","53518-002-3","2022-12-19","","100","0","","","","","200","2022-12-20 19:10:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("194","02020-002","02020-002-1","2022-12-19","","125","0","","","","","375","2022-12-20 19:10:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("195","19827-002","19827-002-1","2022-12-19","","150","0","","","","","850","2022-12-20 19:11:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("196","26747-004","26747-004-1","2022-12-19","","250","0","","","","","750","2022-12-20 19:11:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("197","34235-001","34235-001-1","2022-12-19","","200","0","","","","","800","2022-12-20 19:11:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("198","74215-001","74215-001-1","2022-12-19","","38","0","","","","","462","2022-12-20 19:12:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("200","17708-004","17708-004-2","2022-12-16","","75","0","","","","","375","2022-12-20 19:23:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("201","70960-003","70960-003-4","2022-12-21","","125","0","","","","","75","2022-12-21 18:32:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("202","17396-001","17396-001-3","2022-12-21","","125","0","","","","","125","2022-12-21 18:33:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("203","05161-001","05161-001-3","2022-12-21","","50","0","","","","","610","2022-12-21 18:33:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("204","17396-003","17396-003-1","2022-12-21","","125","0","","","","","375","2022-12-21 18:33:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("205","70960-005","70960-005-1","2022-12-21","","125","0","","","","","375","2022-12-21 18:34:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("206","05161-002","05161-002-3","2022-12-21","","50","0","","","","","590","2022-12-21 18:34:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("207","17396-002","17396-002-3","2022-12-21","","125","0","","","","","125","2022-12-21 18:34:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("208","70960-004","70960-004-4","2022-12-21","","125","0","","","","","75","2022-12-21 18:35:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("209","17396-004","17396-004-1","2022-12-21","","125","0","","","","","375","2022-12-21 18:35:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("210","90141-001","90141-001-1","2022-12-21","","125","0","","","","","375","2022-12-21 18:35:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("211","70960-006","70960-006-1","2022-12-21","","125","0","","","","","375","2022-12-21 18:38:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("212","06088-002","06088-002-2","2022-12-22","","125","0","","","","","250","2022-12-22 20:56:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("213","43617-002","43617-002-3","2022-12-22","","200","0","","","","","400","2022-12-22 20:56:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("214","99242-002","99242-002-1","2022-12-22","","125","0","","","","","375","2022-12-22 20:56:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("216","43617-001","43617-001-3","2022-12-22","","200","0","","","","","400","2022-12-22 20:57:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("217","99242-001","99242-001-1","2022-12-22","","125","0","","","","","375","2022-12-22 20:57:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("218","69036-002","69036-002-1","2022-12-22","","125","0","","","","","875","2022-12-22 20:57:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("219","69036-001","69036-001-1","2022-12-22","","125","0","","","","","875","2022-12-22 20:58:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("222","71302-007","71302-007-1","2022-12-23","","188","0","","","","","625","2022-12-23 16:59:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("224","05161-001","05161-001-4","2022-12-23","","50","0","","","","","560","2022-12-23 16:59:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("225","50503-003","50503-003-1","2022-12-23","","125","0","","","","","375","2022-12-23 16:59:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("226","03766-001","03766-001-3","2022-12-23","","65","0","","","","","205","2022-12-23 17:00:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("227","68601-001","68601-001-2","2022-12-23","","500","0","","","","","1000","2022-12-23 17:00:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("228","02568-001","02568-001-5","2022-12-23","","150","0","","","","","925","2022-12-23 17:00:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("229","62113-001","62113-001-1","2022-12-23","","200","0","","","","","800","2022-12-23 17:00:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("230","71302-003","71302-003-4","2022-12-23","","125","0","","","","","0","2022-12-23 17:01:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("231","71302-004","71302-004-4","2022-12-23","","125","0","","","","","0","2022-12-23 17:01:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("232","71302-008","71302-008-1","2022-12-23","","188","0","","","","","562","2022-12-23 17:02:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("233","05161-002","05161-002-4","2022-12-23","","50","0","","","","","540","2022-12-23 17:02:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("234","50503-004","50503-004-1","2022-12-23","","125","0","","","","","375","2022-12-23 17:02:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("235","03766-002","03766-002-3","2022-12-23","","65","0","","","","","205","2022-12-23 17:02:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("236","02568-002","02568-002-5","2022-12-23","","150","0","","","","","925","2022-12-23 17:03:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("237","93406-001","93406-001-1","2022-12-23","","250","0","","","","","750","2022-12-23 17:03:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("238","06088-004","06088-004-1","2022-12-23","","125","0","","","","","375","2022-12-23 17:03:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("239","68601-002","68601-002-2","2022-12-23","","500","0","","","","","1000","2022-12-23 17:04:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("240","06088-003","06088-003-2","2022-12-22","","125","0","","","","","250","2022-12-24 07:45:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("243","71302-007","71302-007-2","2022-12-24","","188","0","","","","","374","2022-12-24 20:43:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("244","71302-008","71302-008-2","2022-12-24","","188","0","","","","","374","2022-12-24 20:43:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("245","99242-002","99242-002-2","2022-12-24","","100","0","","","","","275","2022-12-24 20:44:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("246","99242-001","99242-001-2","2022-12-24","","100","0","","","","","275","2022-12-24 20:44:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("247","17396-001","17396-001-4","2022-12-24","","125","0","","","","","0","2022-12-24 20:45:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("248","17396-002","17396-002-4","2022-12-24","","125","0","","","","","0","2022-12-24 20:45:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("249","26747-001","26747-001-3","2022-12-24","","125","0","","","","","375","2022-12-24 20:46:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("250","26747-002","26747-002-3","2022-12-24","","125","0","","","","","375","2022-12-24 20:46:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("251","67073-001","67073-001-3","2022-12-24","","62","1","","","","","-1","2022-12-24 20:46:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("252","67073-002","67073-002-3","2022-12-24","","62","1","","","","","-1","2022-12-24 20:46:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("253","53518-001","53518-001-4","2022-12-24","","100","0","","","","","100","2022-12-24 20:47:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("254","53518-002","53518-002-4","2022-12-24","","100","0","","","","","100","2022-12-24 20:47:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("255","02020-001","02020-001-2","2022-12-24","","50","0","","","","","325","2022-12-24 20:48:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("256","02020-002","02020-002-2","2022-12-24","","50","0","","","","","325","2022-12-24 20:48:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("257","43617-003","43617-003-1","2022-12-24","","150","0","","","","","600","2022-12-24 20:48:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("258","43617-004","43617-004-1","2022-12-24","","150","0","","","","","600","2022-12-24 20:48:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("259","70960-005","70960-005-2","2022-12-24","","150","0","","","","","225","2022-12-24 20:49:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("260","70960-006","70960-006-2","2022-12-24","","150","0","","","","","225","2022-12-24 20:49:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("261","70960-003","70960-003-5","2022-12-24","","75","50","","","","","-50","2022-12-24 20:52:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("262","70960-004","70960-004-5","2022-12-24","","75","50","","","","","-50","2022-12-24 20:52:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("263","78179-001","78179-001-2","2022-12-25","","125","0","","","","","240","2022-12-25 16:53:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("264","78179-002","78179-002-2","2022-12-25","","125","0","","","","","240","2022-12-25 16:53:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("265","85042-001","85042-001-2","2022-12-25","","100","0","","","","","300","2022-12-25 16:53:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("266","85042-002","85042-002-2","2022-12-25","","100","0","","","","","300","2022-12-25 16:53:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("267","26747-001","26747-001-4","2022-12-25","","50","0","","","","","325","2022-12-25 16:55:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("268","26747-002","26747-002-4","2022-12-25","","50","0","","","","","325","2022-12-25 16:55:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("269","22174-001","22174-001-1","2022-12-25","","63","0","","","","","125","2022-12-25 17:08:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("270","71302-001","71302-001-4","2022-12-11","","125","0","","","","","0","2022-12-26 12:27:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("271","71302-002","71302-002-4","2022-12-11","","125","0","","","","","0","2022-12-26 12:27:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("272","22174-002","22174-002-1","2022-12-26","","63","0","","","","","187","2022-12-26 17:05:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("273","03766-001","03766-001-4","2022-12-26","","50","0","","","","","155","2022-12-26 17:06:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("274","03766-002","03766-002-4","2022-12-26","","50","0","","","","","155","2022-12-26 17:06:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("275","69589-001","69589-001-2","2022-12-26","","125","0","","","","","250","2022-12-26 17:06:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("276","69589-002","69589-002-2","2022-12-26","","125","0","","","","","250","2022-12-26 17:06:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("277","02020-003","02020-003-1","2022-12-26","","125","0","","","","","375","2022-12-26 17:07:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("278","02020-004","02020-004-1","2022-12-26","","125","0","","","","","375","2022-12-26 17:07:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("279","05161-001","05161-001-5","2022-12-26","","15","0","","","","","545","2022-12-26 17:07:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("280","05161-002","05161-002-5","2022-12-26","","15","0","","","","","525","2022-12-26 17:07:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("281","56559-003","56559-003-1","2022-12-26","","50","0","","","","","450","2022-12-26 17:07:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("282","56559-004","56559-004-1","2022-12-26","","50","0","","","","","450","2022-12-26 17:08:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("283","71302-005","71302-005-3","2022-12-26","","125","0","","","","","125","2022-12-26 17:12:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("284","71302-006","71302-006-3","2022-12-26","","125","0","","","","","125","2022-12-26 17:12:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("285","02568-001","02568-001-6","2022-12-26","","175","0","","","","","750","2022-12-26 17:18:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("286","02568-002","02568-002-6","2022-12-26","","175","0","","","","","750","2022-12-26 17:18:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("287","02020-001","02020-001-3","2022-12-26","","75","0","","","","","250","2022-12-26 17:18:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("288","02020-002","02020-002-3","2022-12-26","","75","0","","","","","250","2022-12-26 17:18:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("289","56559-001","56559-001-2","2022-12-26","","50","0","","","","","325","2022-12-26 17:19:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("290","56559-002","56559-002-2","2022-12-26","","50","0","","","","","325","2022-12-26 17:19:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("291","90141-001","90141-001-2","2022-12-26","","125","0","","","","","250","2022-12-26 17:20:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("292","49435-001","49435-001-1","2022-12-26","","125","0","","","","","375","2022-12-26 17:21:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("293","74215-001","74215-001-2","2022-12-26","","38","0","","","","","424","2022-12-26 17:30:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("294","07829-003","07829-003-2","2022-12-26","","65","0","","","","","370","2022-12-26 17:31:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("295","17396-003","17396-003-2","2022-12-27","","125","0","","","","","250","2022-12-27 15:55:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("296","17396-004","17396-004-2","2022-12-27","","125","0","","","","","250","2022-12-27 15:55:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("297","62271-001","62271-001-1","2022-12-27","","85","0","","","","","165","2022-12-27 15:55:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("298","62271-002","62271-002-1","2022-12-27","","85","0","","","","","165","2022-12-27 15:55:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("299","85042-003","85042-003-1","2022-12-27","","125","0","","","","","375","2022-12-27 15:55:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("300","85042-004","85042-004-1","2022-12-27","","125","0","","","","","375","2022-12-27 15:56:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("301","77764-005","77764-005-1","2022-12-27","","188","0","","","","","562","2022-12-27 15:56:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("302","77764-006","77764-006-1","2022-12-27","","188","0","","","","","562","2022-12-27 15:56:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("303","56559-003","56559-003-2","2022-12-27","","75","0","","","","","325","2022-12-27 15:56:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("304","56559-004","56559-004-2","2022-12-27","","75","0","","","","","325","2022-12-27 15:56:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("305","14820-001","14820-001-1","2022-12-27","","125","0","","","","","375","2022-12-27 15:57:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("306","14820-002","14820-002-1","2022-12-27","","125","0","","","","","375","2022-12-27 15:57:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("307","17708-001","17708-001-4","2022-12-27","","125","0","","","","","0","2022-12-27 15:57:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("308","17708-002","17708-002-4","2022-12-27","","125","0","","","","","0","2022-12-27 15:57:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("309","60657-001","60657-001-5","2022-12-27","","20","0","","","","","305","2022-12-27 15:57:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("310","60657-002","60657-002-5","2022-12-27","","20","0","","","","","305","2022-12-27 15:57:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("311","03766-003","03766-003-1","2022-12-27","","115","0","","","","","385","2022-12-27 15:57:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("312","03766-004","03766-004-1","2022-12-27","","115","0","","","","","385","2022-12-27 15:57:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("313","26747-001","26747-001-5","2022-12-27","","50","0","","","","","275","2022-12-27 15:58:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("314","26747-002","26747-002-5","2022-12-27","","50","0","","","","","275","2022-12-27 15:58:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("315","43617-002","43617-002-4","2022-12-27","","400","0","","","","","0","2022-12-27 15:58:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("316","43617-001","43617-001-4","2022-12-27","","400","0","","","","","0","2022-12-27 15:58:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("317","17396-005","17396-005-1","2022-12-27","","125","0","","","","","875","2022-12-27 15:58:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("318","17396-006","17396-006-1","2022-12-27","","125","0","","","","","875","2022-12-27 15:58:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("319","56559-001","56559-001-3","2022-12-27","","75","0","","","","","250","2022-12-27 15:58:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("320","56559-002","56559-002-3","2022-12-27","","75","0","","","","","250","2022-12-27 15:59:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("321","12246-001","12246-001-1","2022-12-27","","125","0","","","","","375","2022-12-27 16:00:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("322","12246-002","12246-002-1","2022-12-27","","125","0","","","","","375","2022-12-27 16:00:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("323","90141-002","90141-002-1","2022-12-28","","125","0","","","","","375","2022-12-28 17:34:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("324","90141-003","90141-003-1","2022-12-28","","125","0","","","","","375","2022-12-28 17:34:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("325","05161-001","05161-001-6","2022-12-28","","100","0","","","","","445","2022-12-28 17:35:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("326","05161-002","05161-002-6","2022-12-28","","100","0","","","","","425","2022-12-28 17:35:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("327","17708-003","17708-003-3","2022-12-28","","125","0","","","","","250","2022-12-28 17:36:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("328","17708-004","17708-004-3","2022-12-28","","125","0","","","","","250","2022-12-28 17:36:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("329","43617-003","43617-003-2","2022-12-28","","150","0","","","","","450","2022-12-28 17:36:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("330","43617-004","43617-004-2","2022-12-28","","150","0","","","","","450","2022-12-28 17:36:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("331","22174-002","22174-002-2","2022-12-28","","187","1","","","","","-1","2022-12-28 17:37:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("332","22174-001","22174-001-2","2022-12-28","","187","1","","","","","-1","2022-12-28 17:37:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("333","44800-002","44800-002-2","2022-12-28","","1875","0","","","","","0","2022-12-28 17:39:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("334","44800-001","44800-001-2","2022-12-28","","1875","0","","","","","0","2022-12-28 17:39:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("335","02568-001","02568-001-7","2022-12-28","","100","0","","","","","650","2022-12-28 17:39:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("336","02568-002","02568-002-7","2022-12-28","","100","0","","","","","650","2022-12-28 17:39:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("337","93406-001","93406-001-2","2022-12-28","","230","0","","","","","520","2022-12-28 17:40:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("350","26747-001","26747-001-6","2022-12-29","","50","0","","","","","225","2022-12-30 07:34:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("351","26747-002","26747-002-6","2022-12-29","","50","0","","","","","225","2022-12-30 07:34:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("352","02020-001","02020-001-4","2022-12-29","","125","0","","","","","125","2022-12-30 07:35:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("353","02020-002","02020-002-4","2022-12-29","","125","0","","","","","125","2022-12-30 07:35:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("354","06088-005","06088-005-1","2023-01-05","","125","0","","","","","375","2022-12-30 07:38:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("355","06088-006","06088-006-1","2023-01-05","","125","0","","","","","375","2022-12-30 07:38:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("356","50503-001","50503-001-3","2022-12-29","","200","0","","","","","50","2022-12-30 07:39:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("357","50503-002","50503-002-3","2022-12-29","","200","0","","","","","50","2022-12-30 07:39:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("358","53518-001","53518-001-5","2022-12-29","","100","0","","","","","0","2022-12-30 07:39:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("359","53518-002","53518-002-5","2022-12-29","","100","0","","","","","0","2022-12-30 07:40:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("360","62113-001","62113-001-2","2022-12-29","","200","0","","","","","600","2022-12-30 07:40:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("361","02568-001","02568-001-8","2022-12-29","","50","0","","","","","600","2022-12-30 07:40:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("362","02568-002","02568-002-8","2022-12-29","","50","0","","","","","600","2022-12-30 07:40:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("363","70960-001","70960-001-6","2022-12-29","","0","250","","","","","-280","2022-12-30 07:41:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("364","70960-002","70960-002-6","2022-12-29","","0","250","","","","","-280","2022-12-30 07:41:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("365","71302-007","71302-007-3","2022-12-29","","188","0","","","","","186","2022-12-30 07:41:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("366","71302-008","71302-008-3","2022-12-29","","188","0","","","","","186","2022-12-30 07:41:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("367","69036-001","69036-001-2","2022-12-29","","125","0","","","","","750","2022-12-30 07:45:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("368","69036-002","69036-002-2","2022-12-29","","125","0","","","","","750","2022-12-30 07:45:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("369","17708-003","17708-003-4","2022-12-29","","125","0","","","","","125","2022-12-30 07:48:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("370","17708-004","17708-004-4","2022-12-29","","125","0","","","","","125","2022-12-30 07:48:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("371","19827-001","19827-001-2","2022-12-29","","75","0","","","","","775","2022-12-30 07:48:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("372","19827-002","19827-002-2","2022-12-29","","75","0","","","","","775","2022-12-30 07:48:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("373","68601-001","68601-001-3","2022-12-30","","500","0","","","","","500","2022-12-30 15:50:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("374","68601-002","68601-002-3","2022-12-30","","500","0","","","","","500","2022-12-30 15:50:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("375","69589-001","69589-001-3","2022-12-30","","125","0","","","","","125","2022-12-30 15:51:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("376","69589-002","69589-002-3","2022-12-30","","125","0","","","","","125","2022-12-30 15:51:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("377","02020-003","02020-003-2","2022-12-30","","125","0","","","","","250","2022-12-30 15:51:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("378","02020-004","02020-004-2","2022-12-30","","125","0","","","","","250","2022-12-30 15:51:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("379","62271-003","62271-003-1","2022-12-30","","85","0","","","","","165","2022-12-30 15:51:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("380","62271-004","62271-004-1","2022-12-30","","85","0","","","","","165","2022-12-30 15:51:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("381","85042-001","85042-001-3","2022-12-30","","100","0","","","","","200","2022-12-30 15:52:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("382","85042-002","85042-002-3","2022-12-30","","100","0","","","","","200","2022-12-30 15:52:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("383","06088-004","06088-004-2","2022-12-30","","125","0","","","","","250","2022-12-30 15:53:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("384","49435-001","49435-001-2","2022-12-30","","130","0","","","","","245","2022-12-30 15:53:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("385","83720-001","83720-001-3","2022-12-31","","50","0","","","","","200","2023-01-01 11:29:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("386","83720-002","83720-002-3","2022-12-31","","50","0","","","","","200","2023-01-01 11:29:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("387","56559-003","56559-003-3","2022-12-31","","125","0","","","","","250","2023-01-01 11:30:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("388","56559-004","56559-004-3","2022-12-31","","125","0","","","","","250","2023-01-01 11:30:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("389","90141-002","90141-002-2","2022-12-31","","125","0","","","","","250","2023-01-01 11:30:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("390","90141-003","90141-003-2","2022-12-31","","125","0","","","","","250","2023-01-01 11:30:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("391","99001-001","99001-001-2","2022-12-31","","188","0","","","","","374","2023-01-01 11:30:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("393","99001-002","99001-002-2","2022-12-31","","188","0","","","","","374","2023-01-01 11:31:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("394","43617-007","43617-007-1","2022-12-31","","200","0","","","","","800","2023-01-01 11:31:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("395","43617-008","43617-008-1","2022-12-31","","200","0","","","","","800","2023-01-01 11:31:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("396","22174-003","22174-003-1","2022-12-31","","125","0","","","","","375","2023-01-01 11:32:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("397","22174-004","22174-004-1","2022-12-31","","125","0","","","","","375","2023-01-01 11:32:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("398","77764-007","77764-007-1","2022-12-31","","188","0","","","","","562","2023-01-01 11:32:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("399","77764-008","77764-008-1","2022-12-31","","188","0","","","","","562","2023-01-01 11:32:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("400","71302-005","71302-005-4","2022-12-31","","125","0","","","","","0","2023-01-01 11:33:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("401","71302-006","71302-006-4","2022-12-31","","125","0","","","","","0","2023-01-01 11:33:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("402","02020-001","02020-001-5","2022-12-31","","125","0","","","","","0","2023-01-01 11:33:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("403","02020-002","02020-002-5","2022-12-31","","125","0","","","","","0","2023-01-01 11:33:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("404","56559-001","56559-001-4","2022-12-31","","250","0","","","","","0","2023-01-01 11:34:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("405","56559-002","56559-002-4","2022-12-31","","250","0","","","","","0","2023-01-01 11:34:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("406","49435-001","49435-001-3","2022-12-31","","245","5","","","","","-5","2023-01-01 11:36:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("407","07415-001","07415-001-1","2022-12-31","","500","0","","","","","0","2023-01-01 11:37:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("408","90141-001","90141-001-3","2022-12-31","","125","0","","","","","125","2023-01-01 11:38:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("409","05161-001","05161-001-7","2023-01-01","","50","0","","","","","395","2023-01-01 15:39:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("410","05161-002","05161-002-7","2023-01-01","","50","0","","","","","375","2023-01-01 15:39:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("411","17396-003","17396-003-3","2023-01-01","","125","0","","","","","125","2023-01-01 15:41:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("412","17396-004","17396-004-3","2023-01-01","","125","0","","","","","125","2023-01-01 15:41:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("413","43617-003","43617-003-3","2023-01-01","","150","0","","","","","300","2023-01-01 15:41:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("414","43617-004","43617-004-3","2023-01-01","","150","0","","","","","300","2023-01-01 15:41:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("415","85042-003","85042-003-2","2023-01-01","","125","0","","","","","250","2023-01-01 15:41:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("416","85042-004","85042-004-2","2023-01-01","","125","0","","","","","250","2023-01-01 15:41:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("417","62271-001","62271-001-2","2023-01-01","","165","0","","","","","0","2023-01-01 15:42:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("418","62271-002","62271-002-2","2023-01-01","","165","0","","","","","0","2023-01-01 15:42:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("419","43617-005","43617-005-1","2023-01-01","","500","0","","","","","0","2023-01-01 15:42:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("420","43617-006","43617-006-1","2023-01-01","","500","0","","","","","0","2023-01-01 15:42:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("421","67073-003","67073-003-1","2023-01-01","","100","0","","","","","400","2023-01-01 15:42:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("422","67073-004","67073-004-1","2023-01-01","","100","0","","","","","400","2023-01-01 15:43:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("423","17396-003","17396-003-4","2023-01-02","","125","0","","","","","0","2023-01-02 15:02:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("424","17396-004","17396-004-4","2023-01-02","","125","0","","","","","0","2023-01-02 15:02:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("425","17708-007","17708-007-1","2023-01-07","","100","0","","","","","375","2023-01-02 15:03:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("426","17708-008","17708-008-1","2023-01-07","","100","0","","","","","375","2023-01-02 15:03:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("427","17396-005","17396-005-2","2023-01-02","","125","0","","","","","750","2023-01-02 15:03:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("428","17396-006","17396-006-2","2023-01-02","","125","0","","","","","750","2023-01-02 15:03:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("429","78179-001","78179-001-3","2023-01-02","","50","0","","","","","190","2023-01-02 15:03:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("430","78179-002","78179-002-3","2023-01-02","","50","0","","","","","190","2023-01-02 15:03:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("431","07829-002","07829-002-1","2023-01-02","","65","0","","","","","435","2023-01-02 15:04:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("433","93406-001","93406-001-3","2023-01-02","","250","0","","","","","270","2023-01-02 15:04:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("434","90141-005","90141-005-1","2023-01-02","","125","0","","","","","375","2023-01-02 15:05:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("435","99016-001","99016-001-1","2023-01-02","","150","0","","","","","150","2023-01-02 15:06:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("437","90141-004","90141-004-1","2023-01-02","","125","0","","","","","375","2023-01-02 15:13:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("438","61500-001","61500-001-1","2023-01-03","","125","0","","","","","375","2023-01-03 15:27:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("439","61500-002","61500-002-1","2023-01-03","","125","0","","","","","375","2023-01-03 15:27:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("442","99001-001","99001-001-3","2023-01-03","","374","1","","","","","-1","2023-01-03 15:27:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("443","99001-002","99001-002-3","2023-01-03","","374","1","","","","","-1","2023-01-03 15:27:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("444","02568-001","02568-001-9","2023-01-03","","125","0","","","","","475","2023-01-03 15:27:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("445","02568-002","02568-002-9","2023-01-03","","125","0","","","","","475","2023-01-03 15:27:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("446","78179-001","78179-001-4","2023-01-03","","50","0","","","","","140","2023-01-03 15:28:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("447","78179-002","78179-002-4","2023-01-03","","50","0","","","","","140","2023-01-03 15:28:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("448","85042-001","85042-001-4","2023-01-03","","200","0","","","","","0","2023-01-03 15:28:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("449","85042-002","85042-002-4","2023-01-03","","200","0","","","","","0","2023-01-03 15:28:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("450","03766-003","03766-003-2","2023-01-03","","115","0","","","","","270","2023-01-03 15:29:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("451","03766-004","03766-004-2","2023-01-03","","115","0","","","","","270","2023-01-03 15:29:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("452","77764-007","77764-007-2","2023-01-03","","188","0","","","","","374","2023-01-03 15:29:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("453","77764-008","77764-008-2","2023-01-03","","188","0","","","","","374","2023-01-03 15:29:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("454","19827-001","19827-001-3","2023-01-03","","25","0","","","","","750","2023-01-03 15:30:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("455","19827-002","19827-002-3","2023-01-03","","25","0","","","","","750","2023-01-03 15:30:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("456","77764-005","77764-005-2","2023-01-03","","188","0","","","","","374","2023-01-03 15:30:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("457","77764-006","77764-006-2","2023-01-03","","188","0","","","","","374","2023-01-03 15:30:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("458","03766-001","03766-001-5","2023-01-03","","155","30","","","","","-33","2023-01-03 15:31:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("459","03766-002","03766-002-5","2023-01-03","","155","75","","","","","-33","2023-01-03 15:31:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("460","71302-007","71302-007-4","2023-01-03","","186","2","","","","","-2","2023-01-03 15:31:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("461","71302-008","71302-008-4","2023-01-03","","186","2","","","","","-2","2023-01-03 15:31:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("462","62271-006","62271-006-1","2023-01-03","","170","0","","","","","330","2023-01-03 15:32:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("463","62271-007","62271-007-1","2023-01-03","","170","0","","","","","330","2023-01-03 15:32:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("464","74215-001","74215-001-3","2023-01-03","","38","0","","","","","386","2023-01-03 15:32:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("465","17396-005","17396-005-3","2023-01-04","","125","0","","","","","625","2023-01-04 15:45:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("466","17396-006","17396-006-3","2023-01-04","","125","0","","","","","625","2023-01-04 15:45:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("467","53518-003","53518-003-1","2023-01-04","","200","0","","","","","800","2023-01-04 15:45:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("468","53518-004","53518-004-1","2023-01-04","","200","0","","","","","800","2023-01-04 15:45:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("469","17708-005","17708-005-1","2023-01-04","","250","0","","","","","750","2023-01-04 15:45:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("470","17708-006","17708-006-1","2023-01-04","","250","0","","","","","750","2023-01-04 15:46:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("471","78179-002","78179-002-5","2023-01-04","","25","0","","","","","115","2023-01-04 15:46:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("472","78179-001","78179-001-5","2023-01-04","","25","0","","","","","115","2023-01-04 15:46:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("475","69589-003","69589-003-1","2023-01-04","","250","0","","","","","750","2023-01-04 15:47:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("476","69589-004","69589-004-1","2023-01-04","","250","0","","","","","750","2023-01-04 15:47:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("477","43617-007","43617-007-2","2023-01-04","","200","0","","","","","600","2023-01-04 15:48:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("478","43617-008","43617-008-2","2023-01-04","","200","0","","","","","600","2023-01-04 15:48:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("479","02568-002","02568-002-10","2023-01-04","","100","0","","","","","375","2023-01-04 15:48:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("480","02568-001","02568-001-10","2023-01-04","","100","0","","","","","375","2023-01-04 15:48:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("481","92408-002","92408-002-1","2023-01-04","","75","0","","","","","175","2023-01-04 15:48:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("482","92408-001","92408-001-1","2023-01-04","","75","0","","","","","175","2023-01-04 15:48:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("483","02020-003","02020-003-3","2023-01-04","","125","0","","","","","125","2023-01-04 15:49:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("484","02020-004","02020-004-3","2023-01-04","","125","0","","","","","125","2023-01-04 15:49:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("485","52423-002","52423-002-1","2023-01-04","","500","250","","","","","-250","2023-01-04 15:49:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("486","52423-001","52423-001-1","2023-01-04","","500","250","","","","","-250","2023-01-04 15:49:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("487","49435-002","49435-002-1","2023-01-04","","50","0","","","","","450","2023-01-04 15:49:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("488","49435-003","49435-003-1","2023-01-04","","50","0","","","","","450","2023-01-04 15:50:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("489","69589-001","69589-001-4","2023-01-04","","125","0","","","","","0","2023-01-04 15:50:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("490","69589-002","69589-002-4","2023-01-04","","125","0","","","","","0","2023-01-04 15:50:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("491","69036-002","69036-002-3","2023-01-04","","125","0","","","","","625","2023-01-04 15:50:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("492","69036-001","69036-001-3","2023-01-04","","125","0","","","","","625","2023-01-04 15:50:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("494","49435-004","49435-004-1","2023-01-04","","100","0","","","","","1400","2023-01-04 15:53:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("495","17396-007","17396-007-1","2023-01-05","","125","0","","","","","875","2023-01-06 16:05:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("496","17396-008","17396-008-1","2023-01-05","","125","0","","","","","875","2023-01-06 16:05:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("497","43617-003","43617-003-4","2023-01-05","","150","0","","","","","150","2023-01-06 16:06:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("498","43617-004","43617-004-4","2023-01-05","","150","0","","","","","150","2023-01-06 16:06:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("499","06088-007","06088-007-1","2023-01-05","","125","0","","","","","375","2023-01-06 16:06:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("500","06088-008","06088-008-1","2023-01-05","","125","0","","","","","375","2023-01-06 16:06:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("501","49435-002","49435-002-2","2023-01-05","","75","0","","","","","375","2023-01-06 16:07:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("502","49435-003","49435-003-2","2023-01-05","","75","0","","","","","375","2023-01-06 16:07:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("505","90141-002","90141-002-3","2023-01-05","","125","0","","","","","125","2023-01-06 16:08:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("506","90141-003","90141-003-3","2023-01-05","","125","0","","","","","125","2023-01-06 16:08:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("507","02568-001","02568-001-10","2023-01-05","","200","0","","","","","175","2023-01-06 16:08:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("508","02568-002","02568-002-10","2023-01-05","","200","0","","","","","175","2023-01-06 16:08:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("511","90141-001","90141-001-4","2023-01-05","","125","0","","","","","0","2023-01-06 16:10:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("512","49435-004","49435-004-2","2023-01-05","","110","0","","","","","1290","2023-01-06 16:10:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("513","68601-002","68601-002-4","2023-01-06","","500","0","","","","","0","2023-01-06 16:11:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("514","68601-001","68601-001-4","2023-01-06","","500","0","","","","","0","2023-01-06 16:11:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("515","90141-002","90141-002-4","2023-01-06","","125","0","","","","","0","2023-01-06 16:12:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("516","90141-003","90141-003-4","2023-01-06","","125","0","","","","","0","2023-01-06 16:12:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("517","85042-003","85042-003-3","2023-01-06","","250","0","","","","","0","2023-01-06 16:12:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("518","85042-004","85042-004-3","2023-01-06","","250","0","","","","","0","2023-01-06 16:12:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("519","12617-002","12617-002-1","2023-01-06","","50","0","","","","","450","2023-01-06 16:13:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("520","12617-001","12617-001-1","2023-01-06","","50","0","","","","","450","2023-01-06 16:13:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("521","83720-002","83720-002-4","2023-01-06","","100","0","","","","","100","2023-01-06 16:13:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("522","83720-001","83720-001-4","2023-01-06","","100","0","","","","","100","2023-01-06 16:13:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("523","56559-003","56559-003-4","2023-01-06","","125","0","","","","","125","2023-01-06 16:16:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("524","56559-004","56559-004-4","2023-01-06","","125","0","","","","","125","2023-01-06 16:16:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("525","07415-004","07415-004-1","2023-01-06","","20","0","","","","","280","2023-01-06 16:17:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("527","32506-002","32506-002-1","2023-01-06","","50","0","","","","","450","2023-01-06 16:17:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("528","32506-001","32506-001-1","2023-01-06","","50","0","","","","","450","2023-01-06 16:17:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("529","02020-005","02020-005-1","2023-01-06","","188","0","","","","","550","2023-01-06 16:20:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("530","02020-006","02020-006-1","2023-01-06","","188","0","","","","","550","2023-01-06 16:20:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("531","62113-001","62113-001-3","2023-01-06","","200","0","","","","","400","2023-01-06 16:21:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("532","67073-003","67073-003-2","2023-01-06","","100","0","","","","","300","2023-01-06 16:21:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("533","67073-004","67073-004-2","2023-01-06","","100","0","","","","","300","2023-01-06 16:21:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("534","56559-005","56559-005-1","2023-01-06","","125","0","","","","","375","2023-01-06 16:22:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("535","56559-006","56559-006-1","2023-01-06","","125","0","","","","","375","2023-01-06 16:22:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("536","07415-002","07415-002-1","2023-01-06","","20","0","","","","","280","2023-01-06 16:22:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("537","07415-003","07415-003-1","2023-01-06","","60","0","","","","","840","2023-01-06 16:25:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("538","49435-004","49435-004-3","2023-01-06","","120","0","","","","","1170","2023-01-06 16:26:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("539","17708-007","17708-007-2","2023-01-13","","125","0","","","","","275","2023-01-07 12:12:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("540","17708-008","17708-008-2","2023-01-13","","125","0","","","","","275","2023-01-07 12:12:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("541","49435-002","49435-002-3","2023-01-07","","30","0","","","","","345","2023-01-07 12:17:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("542","49435-003","49435-003-3","2023-01-07","","30","0","","","","","345","2023-01-07 12:17:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("543","05161-001","05161-001-8","2023-01-07","","188","0","","","","","207","2023-01-07 12:17:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("544","05161-002","05161-002-8","2023-01-07","","188","0","","","","","187","2023-01-07 12:18:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("545","85042-005","85042-005-1","2023-01-07","","100","0","","","","","400","2023-01-07 12:45:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("546","85042-006","85042-006-1","2023-01-07","","100","0","","","","","400","2023-01-07 12:45:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("547","92769-002","92769-002-1","2023-01-07","","100","0","","","","","400","2023-01-07 12:45:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("548","92769-001","92769-001-1","2023-01-07","","100","0","","","","","400","2023-01-07 12:45:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("549","22174-003","22174-003-2","2023-01-07","","100","0","","","","","275","2023-01-07 12:46:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("550","22174-004","22174-004-2","2023-01-07","","100","0","","","","","275","2023-01-07 12:46:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("551","71302-009","71302-009-1","2023-01-07","","188","0","","","","","562","2023-01-07 12:48:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("552","71302-010","71302-010-1","2023-01-07","","188","0","","","","","562","2023-01-07 12:48:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("553","90141-004","90141-004-2","2023-01-07","","125","0","","","","","250","2023-01-07 12:49:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("554","90141-005","90141-005-2","2023-01-07","","125","0","","","","","250","2023-01-07 12:49:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("555","93406-001","93406-001-4","2023-01-07","","270","0","","","","","0","2023-01-07 12:55:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("556","49435-004","49435-004-4","2023-01-07","","45","0","","","","","1125","2023-01-07 12:56:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("557","92408-002","92408-002-2","2023-01-08","","50","0","","","","","125","2023-01-08 14:51:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("558","92408-001","92408-001-2","2023-01-08","","50","0","","","","","125","2023-01-08 14:51:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("559","49435-002","49435-002-4","2023-01-08","","35","0","","","","","310","2023-01-08 14:51:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("560","49435-003","49435-003-4","2023-01-08","","35","0","","","","","310","2023-01-08 14:51:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("561","77764-005","77764-005-3","2023-01-08","","188","0","","","","","186","2023-01-08 14:51:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("562","77764-006","77764-006-3","2023-01-08","","188","0","","","","","186","2023-01-08 14:51:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("563","09472-002","09472-002-1","2023-01-08","","63","0","","","","","187","2023-01-08 14:52:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("564","09472-001","09472-001-1","2023-01-08","","63","0","","","","","187","2023-01-08 14:52:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("565","23673-001","23673-001-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:54:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("566","23673-002","23673-002-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:54:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("567","69589-005","69589-005-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:54:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("568","69589-006","69589-006-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:54:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("569","07415-004","07415-004-2","2023-01-08","","20","0","","","","","260","2023-01-08 14:54:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("570","02568-002","02568-002-10","2023-01-08","","0","100","","","","","75","2023-01-08 14:55:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("571","02568-001","02568-001-10","2023-01-08","","0","100","","","","","75","2023-01-08 14:55:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("573","99001-003","99001-003-1","2023-01-08","","250","0","","","","","750","2023-01-08 14:55:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("574","99001-004","99001-004-1","2023-01-08","","250","0","","","","","750","2023-01-08 14:55:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("575","17396-005","17396-005-4","2023-01-08","","125","0","","","","","500","2023-01-08 14:55:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("576","17396-006","17396-006-4","2023-01-08","","125","0","","","","","500","2023-01-08 14:56:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("577","07415-002","07415-002-2","2023-01-08","","20","0","","","","","260","2023-01-08 14:56:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("578","74215-001","74215-001-4","2023-01-08","","38","0","","","","","348","2023-01-08 14:56:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("579","32660-001","32660-001-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:56:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("580","02020-007","02020-007-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:56:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("581","92479-001","92479-001-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:57:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("582","07415-003","07415-003-2","2023-01-08","","60","0","","","","","780","2023-01-08 14:58:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("583","32660-002","32660-002-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:58:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("584","02020-008","02020-008-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:58:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("585","92479-002","92479-002-1","2023-01-08","","125","0","","","","","375","2023-01-08 14:59:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("586","43617-007","43617-007-3","2023-01-09","","200","0","","","","","400","2023-01-09 15:05:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("587","43617-008","43617-008-3","2023-01-09","","200","0","","","","","400","2023-01-09 15:05:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("588","69589-003","69589-003-2","2023-01-09","","250","0","","","","","500","2023-01-09 15:05:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("589","69589-004","69589-004-2","2023-01-09","","250","0","","","","","500","2023-01-09 15:05:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("590","53518-003","53518-003-2","2023-01-09","","200","0","","","","","600","2023-01-09 15:06:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("591","53518-004","53518-004-2","2023-01-09","","200","0","","","","","600","2023-01-09 15:06:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("592","64794-002","64794-002-1","2023-01-09","","175","0","","","","","325","2023-01-09 15:06:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("593","64794-001","64794-001-1","2023-01-09","","175","0","","","","","325","2023-01-09 15:06:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("594","56559-005","56559-005-2","2023-01-09","","125","0","","","","","250","2023-01-09 15:06:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("595","56559-006","56559-006-2","2023-01-09","","125","0","","","","","250","2023-01-09 15:06:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("596","02020-003","02020-003-4","2023-01-09","","125","0","","","","","0","2023-01-09 15:06:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("597","02020-004","02020-004-4","2023-01-09","","125","0","","","","","0","2023-01-09 15:06:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("598","43617-003","43617-003-5","2023-01-09","","150","0","","","","","0","2023-01-09 15:07:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("599","43617-004","43617-004-5","2023-01-09","","150","0","","","","","0","2023-01-09 15:07:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("600","71302-011","71302-011-1","2023-01-09","","125","0","","","","","375","2023-01-09 15:07:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("601","71302-012","71302-012-1","2023-01-09","","125","0","","","","","375","2023-01-09 15:07:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("602","83720-002","83720-002-5","2023-01-09","","100","50","","","","","-50","2023-01-09 15:07:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("603","83720-001","83720-001-5","2023-01-09","","100","50","","","","","-50","2023-01-09 15:07:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("604","06088-004","06088-004-3","2023-01-09","","125","0","","","","","125","2023-01-09 15:08:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("605","09398-001","09398-001-1","2023-01-09","","250","0","","","","","250","2023-01-09 15:08:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("606","06088-004","06088-004-4","2023-01-04","","125","0","","","","","0","2023-01-10 08:00:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("607","06088-002","06088-002-3","2022-12-29","","125","0","","","","","125","2023-01-10 16:50:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("608","06088-003","06088-003-3","2022-12-29","","125","0","","","","","125","2023-01-10 16:50:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("609","06088-002","06088-002-4","2023-01-04","","125","0","","","","","0","2023-01-10 16:52:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("610","06088-003","06088-003-4","2023-01-04","","125","0","","","","","0","2023-01-10 16:52:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("611","02568-002","02568-002-10","2023-01-10","","0","100","","","","","-25","2023-01-10 16:53:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("612","02568-001","02568-001-10","2023-01-10","","0","100","","","","","-25","2023-01-10 16:53:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("613","77764-007","77764-007-3","2023-01-10","","188","0","","","","","186","2023-01-10 16:54:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("614","77764-008","77764-008-3","2023-01-10","","188","0","","","","","186","2023-01-10 16:54:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("615","61500-001","61500-001-2","2023-01-10","","125","0","","","","","250","2023-01-10 16:54:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("616","61500-002","61500-002-2","2023-01-10","","125","0","","","","","250","2023-01-10 16:54:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("617","07415-002","07415-002-3","2023-01-10","","30","0","","","","","230","2023-01-10 16:55:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("618","78179-001","78179-001-6","2023-01-10","","50","0","","","","","65","2023-01-10 16:55:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("619","03766-005","03766-005-1","2023-01-10","","100","0","","","","","400","2023-01-10 16:56:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("620","56559-003","56559-003-5","2023-01-10","","125","0","","","","","0","2023-01-10 16:59:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("621","85042-007","85042-007-1","2023-01-10","","188","0","","","","","562","2023-01-10 16:59:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("622","90141-006","90141-006-1","2023-01-10","","125","0","","","","","375","2023-01-10 16:59:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("623","69598-001","69598-001-1","2023-01-10","","75","0","","","","","175","2023-01-10 17:00:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("624","49435-002","49435-002-5","2023-01-10","","25","0","","","","","285","2023-01-10 17:00:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("625","05161-001","05161-001-9","2023-01-10","","150","0","","","","","57","2023-01-10 17:01:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("626","07415-004","07415-004-3","2023-01-10","","30","0","","","","","230","2023-01-10 17:01:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("627","07415-003","07415-003-3","2023-01-10","","90","0","","","","","690","2023-01-10 17:02:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("628","78179-002","78179-002-6","2023-01-10","","50","0","","","","","65","2023-01-10 17:02:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("629","03766-006","03766-006-1","2023-01-10","","100","0","","","","","400","2023-01-10 17:03:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("630","56559-004","56559-004-5","2023-01-10","","125","0","","","","","0","2023-01-10 17:03:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("631","85042-008","85042-008-1","2023-01-10","","188","0","","","","","562","2023-01-10 17:04:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("632","90141-007","90141-007-1","2023-01-10","","125","0","","","","","375","2023-01-10 17:04:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("633","69598-002","69598-002-1","2023-01-10","","75","0","","","","","125","2023-01-10 17:04:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("634","49435-003","49435-003-5","2023-01-10","","25","0","","","","","285","2023-01-10 17:05:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("635","05161-002","05161-002-9","2023-01-10","","150","0","","","","","37","2023-01-10 17:05:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("636","49435-004","49435-004-5","2023-01-10","","50","0","","","","","1075","2023-01-10 17:05:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("637","06088-009","06088-009-1","2023-01-10","","250","0","","","","","750","2023-01-10 17:06:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("638","07829-002","07829-002-2","2023-01-10","","65","0","","","","","370","2023-01-10 17:06:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("639","93481-002","93481-002-1","2023-01-10","","63","0","","","","","187","2023-01-10 17:06:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("640","93481-001","93481-001-1","2023-01-10","","63","0","","","","","187","2023-01-10 17:06:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("641","03766-003","03766-003-3","2023-01-11","","115","0","","","","","155","2023-01-13 05:01:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("642","03766-004","03766-004-3","2023-01-11","","115","0","","","","","155","2023-01-13 05:01:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("643","22174-003","22174-003-3","2023-01-11","","125","0","","","","","150","2023-01-13 05:02:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("644","22174-004","22174-004-3","2023-01-11","","125","0","","","","","150","2023-01-13 05:02:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("645","78179-002","78179-002-7","2023-01-11","","65","10","","","","","-10","2023-01-13 05:02:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("646","78179-001","78179-001-7","2023-01-11","","65","10","","","","","-10","2023-01-13 05:02:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("647","07415-002","07415-002-4","2023-01-11","","20","0","","","","","210","2023-01-13 05:03:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("650","05161-001","05161-001-10","2023-01-11","","57","68","","","","","-68","2023-01-13 05:03:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("651","17396-007","17396-007-2","2023-01-11","","125","0","","","","","750","2023-01-13 05:04:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("652","17396-008","17396-008-2","2023-01-11","","125","0","","","","","750","2023-01-13 05:04:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("653","06088-007","06088-007-2","2023-01-11","","125","0","","","","","250","2023-01-13 05:04:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("654","06088-008","06088-008-2","2023-01-11","","125","0","","","","","250","2023-01-13 05:04:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("655","77764-005","77764-005-4","2023-01-11","","186","2","","","","","-2","2023-01-13 05:05:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("656","77764-006","77764-006-4","2023-01-11","","186","2","","","","","-2","2023-01-13 05:05:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("657","03766-005","03766-005-2","2023-01-11","","15","0","","","","","385","2023-01-13 05:05:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("658","03766-006","03766-006-2","2023-01-11","","15","0","","","","","385","2023-01-13 05:05:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("659","07415-004","07415-004-4","2023-01-11","","20","0","","","","","210","2023-01-13 05:05:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("660","05161-002","05161-002-10","2023-01-11","","37","88","","","","","-88","2023-01-13 05:06:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("661","49435-004","49435-004-6","2023-01-11","","50","0","","","","","1025","2023-01-13 05:08:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("662","07415-003","07415-003-4","2023-01-11","","60","0","","","","","630","2023-01-13 05:08:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("663","17396-009","17396-009-1","2023-01-12","","125","0","","","","","875","2023-01-13 05:09:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("664","32660-001","32660-001-2","2023-01-12","","125","0","","","","","250","2023-01-13 05:09:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("665","69036-001","69036-001-4","2023-01-13","","125","0","","","","","500","2023-01-13 15:05:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("666","69036-002","69036-002-4","2023-01-13","","125","0","","","","","500","2023-01-13 15:05:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("667","32506-002","32506-002-2","2023-01-13","","50","0","","","","","400","2023-01-13 15:05:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("668","32506-001","32506-001-2","2023-01-13","","50","0","","","","","400","2023-01-13 15:05:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("669","61500-003","61500-003-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:06:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("670","61500-004","61500-004-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:06:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("671","17708-007","17708-007-3","2023-01-17","","125","0","","","","","150","2023-01-13 15:06:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("672","17708-008","17708-008-3","2023-01-17","","125","0","","","","","150","2023-01-13 15:06:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("673","02020-009","02020-009-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:06:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("674","02020-010","02020-010-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:06:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("675","43617-009","43617-009-1","2023-01-13","","200","0","","","","","800","2023-01-13 15:07:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("676","43617-010","43617-010-1","2023-01-13","","200","0","","","","","800","2023-01-13 15:07:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("677","49435-002","49435-002-6","2023-01-13","","75","0","","","","","210","2023-01-13 15:07:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("678","49435-003","49435-003-6","2023-01-13","","75","0","","","","","210","2023-01-13 15:07:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("679","98925-002","98925-002-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:07:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("680","98925-001","98925-001-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:07:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("681","09472-001","09472-001-2","2023-01-13","","63","0","","","","","124","2023-01-13 15:10:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("682","09472-002","09472-002-2","2023-01-13","","63","0","","","","","124","2023-01-13 15:10:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("683","17708-005","17708-005-2","2023-01-13","","250","0","","","","","500","2023-01-13 15:11:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("684","17708-006","17708-006-2","2023-01-13","","250","0","","","","","500","2023-01-13 15:11:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("685","67073-003","67073-003-3","2023-01-13","","100","0","","","","","200","2023-01-13 15:11:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("686","67073-004","67073-004-3","2023-01-13","","100","0","","","","","200","2023-01-13 15:11:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("687","67073-005","67073-005-1","2023-01-13","","160","0","","","","","240","2023-01-13 15:12:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("688","67073-006","67073-006-1","2023-01-13","","160","0","","","","","240","2023-01-13 15:12:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("689","85042-005","85042-005-2","2023-01-13","","100","0","","","","","300","2023-01-13 15:12:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("690","85042-006","85042-006-2","2023-01-13","","100","0","","","","","300","2023-01-13 15:12:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("691","92769-001","92769-001-2","2023-01-13","","100","0","","","","","300","2023-01-13 15:12:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("692","92769-002","92769-002-2","2023-01-13","","100","0","","","","","300","2023-01-13 15:12:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("693","32660-003","32660-003-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:12:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("694","32660-004","32660-004-1","2023-01-13","","125","0","","","","","375","2023-01-13 15:12:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("695","02020-005","02020-005-2","2023-01-13","","188","0","","","","","374","2023-01-13 15:13:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("696","02020-006","02020-006-2","2023-01-13","","188","0","","","","","374","2023-01-13 15:13:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("697","90141-004","90141-004-3","2023-01-13","","250","0","","","","","0","2023-01-13 15:13:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("698","90141-005","90141-005-3","2023-01-13","","250","0","","","","","0","2023-01-13 15:13:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("699","71302-009","71302-009-2","2023-01-13","","188","0","","","","","374","2023-01-13 15:13:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("700","71302-010","71302-010-2","2023-01-13","","188","0","","","","","374","2023-01-13 15:13:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("701","06088-005","06088-005-2","2023-01-13","","125","0","","","","","250","2023-01-13 15:14:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("702","06088-006","06088-006-2","2023-01-13","","125","0","","","","","250","2023-01-13 15:14:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("703","43617-007","43617-007-4","2023-01-13","","400","0","","","","","0","2023-01-13 15:14:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("704","43617-008","43617-008-4","2023-01-13","","400","0","","","","","0","2023-01-13 15:14:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("705","62113-001","62113-001-4","2023-01-13","","200","0","","","","","200","2023-01-13 15:14:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("706","09472-003","09472-003-1","2023-01-13","","63","0","","","","","187","2023-01-13 15:15:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("707","09472-004","09472-004-1","2023-01-13","","63","0","","","","","187","2023-01-13 15:15:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("708","63744-001","63744-001-1","2023-01-13","","250","0","","","","","750","2023-01-13 15:15:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("709","49435-004","49435-004-7","2023-01-13","","200","0","","","","","825","2023-01-13 15:19:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("710","23673-001","23673-001-2","2023-01-14","","125","0","","","","","250","2023-01-14 17:51:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("711","23673-002","23673-002-2","2023-01-14","","125","0","","","","","250","2023-01-14 17:51:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("712","09472-001","09472-001-3","2023-01-14","","124","1","","","","","-1","2023-01-14 17:51:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("713","09472-002","09472-002-3","2023-01-14","","124","1","","","","","-1","2023-01-14 17:51:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("714","71302-011","71302-011-2","2023-01-14","","125","0","","","","","250","2023-01-14 17:52:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("715","71302-012","71302-012-2","2023-01-14","","125","0","","","","","250","2023-01-14 17:52:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("716","07415-004","07415-004-5","2023-01-14","","40","0","","","","","170","2023-01-14 17:52:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("717","68601-003","68601-003-1","2023-01-14","","500","0","","","","","2000","2023-01-14 17:53:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("718","68601-004","68601-004-1","2023-01-14","","500","0","","","","","2000","2023-01-14 17:53:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("719","22174-005","22174-005-1","2023-01-14","","75","0","","","","","425","2023-01-14 17:53:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("720","22174-006","22174-006-1","2023-01-14","","75","0","","","","","425","2023-01-14 17:53:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("721","99001-003","99001-003-2","2023-01-14","","250","0","","","","","500","2023-01-14 17:54:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("722","99001-004","99001-004-2","2023-01-14","","250","0","","","","","500","2023-01-14 17:54:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("723","23673-003","23673-003-1","2023-01-14","","125","0","","","","","375","2023-01-14 17:56:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("724","23673-004","23673-004-1","2023-01-14","","125","0","","","","","375","2023-01-14 17:56:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("725","02568-002","02568-002-10","2023-01-14","","175","0","","","","","-200","2023-01-14 17:56:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("726","02568-001","02568-001-10","2023-01-14","","175","0","","","","","-200","2023-01-14 17:56:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("727","07415-002","07415-002-5","2023-01-14","","40","0","","","","","170","2023-01-14 17:56:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("728","92479-003","92479-003-1","2023-01-14","","125","0","","","","","375","2023-01-14 17:57:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("729","92479-004","92479-004-1","2023-01-14","","125","0","","","","","375","2023-01-14 17:57:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("730","77764-007","77764-007-4","2023-01-14","","186","2","","","","","-2","2023-01-14 17:57:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("731","77764-008","77764-008-4","2023-01-14","","186","2","","","","","-2","2023-01-14 17:57:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("732","53518-003","53518-003-3","2023-01-14","","200","0","","","","","400","2023-01-14 17:58:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("733","53518-004","53518-004-3","2023-01-14","","200","0","","","","","400","2023-01-14 17:58:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("734","93406-002","93406-002-1","2023-01-14","","250","0","","","","","1750","2023-01-14 17:58:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("735","37736-001","37736-001-1","2023-01-14","","250","0","","","","","750","2023-01-14 17:58:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("736","34235-001","34235-001-2","2023-01-14","","400","0","","","","","400","2023-01-14 17:59:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("737","07415-003","07415-003-5","2023-01-14","","120","0","","","","","510","2023-01-14 17:59:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("738","32506-001","32506-001-3","2023-01-15","","100","0","","","","","300","2023-01-15 14:03:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("739","32506-002","32506-002-3","2023-01-15","","100","0","","","","","300","2023-01-15 14:03:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("740","85042-007","85042-007-2","2023-01-15","","188","0","","","","","374","2023-01-15 14:03:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("741","85042-008","85042-008-2","2023-01-15","","188","0","","","","","374","2023-01-15 14:03:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("742","69598-001","69598-001-2","2023-01-15","","63","0","","","","","112","2023-01-15 14:03:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("743","69598-002","69598-002-2","2023-01-15","","63","0","","","","","112","2023-01-15 14:04:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("744","69589-003","69589-003-3","2023-01-15","","250","0","","","","","250","2023-01-15 14:04:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("745","69589-004","69589-004-3","2023-01-15","","250","0","","","","","250","2023-01-15 14:04:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("746","22174-003","22174-003-4","2023-01-15","","125","0","","","","","25","2023-01-15 14:04:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("747","22174-004","22174-004-4","2023-01-15","","125","0","","","","","25","2023-01-15 14:04:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("748","02568-001","02568-001-10","2023-01-15","","0","100","","","","","-300","2023-01-15 14:05:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("749","02568-002","02568-002-10","2023-01-15","","0","100","","","","","-300","2023-01-15 14:05:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("750","09398-001","09398-001-2","2023-01-15","","250","0","","","","","0","2023-01-15 14:06:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("751","95371-002","95371-002-1","2023-01-15","","125","0","","","","","375","2023-01-15 14:06:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("752","02020-008","02020-008-2","2023-01-15","","125","0","","","","","250","2023-01-15 14:07:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("753","92479-002","92479-002-2","2023-01-15","","125","0","","","","","250","2023-01-15 14:07:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("754","74215-001","74215-001-5","2023-01-15","","38","0","","","","","310","2023-01-15 14:07:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("755","95371-001","95371-001-1","2023-01-15","","125","0","","","","","375","2023-01-15 14:07:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("756","02020-007","02020-007-2","2023-01-15","","125","0","","","","","250","2023-01-15 14:08:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("757","92479-001","92479-001-2","2023-01-15","","125","0","","","","","250","2023-01-15 14:08:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("759","10040-003","10040-003-1","2023-01-15","","0","625","","","","","5000","2023-01-15 14:11:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("760","17396-005","17396-005-5","2023-01-16","","20","0","","","","","480","2023-01-16 15:55:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("761","17396-006","17396-006-5","2023-01-16","","20","0","","","","","480","2023-01-16 15:56:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("762","61500-001","61500-001-3","2023-01-16","","250","0","","","","","0","2023-01-16 15:56:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("763","61500-002","61500-002-3","2023-01-16","","250","0","","","","","0","2023-01-16 15:56:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("764","14561-002","14561-002-1","2023-01-16","","100","0","","","","","900","2023-01-16 15:56:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("765","14561-001","14561-001-1","2023-01-16","","100","0","","","","","900","2023-01-16 15:56:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("766","02020-005","02020-005-3","2023-01-16","","374","1","","","","","-1","2023-01-16 15:56:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("767","02020-006","02020-006-3","2023-01-16","","374","1","","","","","-1","2023-01-16 15:56:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("768","07415-002","07415-002-6","2023-01-16","","20","0","","","","","150","2023-01-16 15:56:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("769","64794-001","64794-001-2","2023-01-16","","50","0","","","","","275","2023-01-16 15:57:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("770","64794-002","64794-002-2","2023-01-16","","50","0","","","","","275","2023-01-16 15:57:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("771","17396-007","17396-007-3","2023-01-16","","20","0","","","","","730","2023-01-16 15:57:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("772","17396-008","17396-008-3","2023-01-16","","20","0","","","","","730","2023-01-16 15:57:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("773","61500-003","61500-003-2","2023-01-16","","375","0","","","","","300","2023-01-16 15:57:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("774","61500-004","61500-004-2","2023-01-16","","375","0","","","","","0","2023-01-16 15:57:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("775","06018-002","06018-002-1","2023-01-16","","50","0","","","","","450","2023-01-16 15:58:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("776","06018-001","06018-001-1","2023-01-16","","50","0","","","","","450","2023-01-16 15:58:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("777","06088-007","06088-007-3","2023-01-16","","250","0","","","","","0","2023-01-16 15:58:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("778","06088-008","06088-008-3","2023-01-16","","250","0","","","","","0","2023-01-16 15:58:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("779","77764-009","77764-009-1","2023-01-16","","185","0","","","","","565","2023-01-16 15:58:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("780","77764-010","77764-010-1","2023-01-16","","185","0","","","","","565","2023-01-16 15:58:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("781","07415-004","07415-004-6","2023-01-16","","20","0","","","","","150","2023-01-16 15:58:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("782","99001-005","99001-005-1","2023-01-16","","125","0","","","","","375","2023-01-16 15:58:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("783","99001-006","99001-006-1","2023-01-16","","125","0","","","","","375","2023-01-16 15:58:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("784","03766-005","03766-005-3","2023-01-16","","100","0","","","","","285","2023-01-16 15:59:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("785","03766-006","03766-006-3","2023-01-16","","100","0","","","","","285","2023-01-16 15:59:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("786","07415-003","07415-003-6","2023-01-16","","60","0","","","","","450","2023-01-16 15:59:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("787","49435-004","49435-004-8","2023-01-16","","100","0","","","","","725","2023-01-16 15:59:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("788","49435-002","49435-002-7","2023-01-17","","210","40","","","","","-40","2023-01-19 08:33:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("789","49435-003","49435-003-7","2023-01-17","","210","40","","","","","-40","2023-01-19 08:34:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("790","19827-001","19827-001-4","2023-01-17","","100","0","","","","","650","2023-01-19 08:34:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("791","19827-002","19827-002-4","2023-01-17","","100","0","","","","","650","2023-01-19 08:34:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("792","17708-007","17708-007-4","2023-01-23","","150","0","","","","","25","2023-01-19 08:34:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("793","17708-008","17708-008-4","2023-01-24","","150","0","","","","","25","2023-01-19 08:34:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("794","43617-009","43617-009-2","2023-01-17","","200","0","","","","","600","2023-01-19 08:35:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("795","43617-010","43617-010-2","2023-01-17","","200","0","","","","","600","2023-01-19 08:35:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("796","71302-009","71302-009-3","2023-01-17","","75","0","","","","","299","2023-01-19 08:35:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("797","71302-010","71302-010-3","2023-01-17","","75","0","","","","","299","2023-01-19 08:35:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("798","32660-003","32660-003-2","2023-01-17","","125","0","","","","","250","2023-01-19 08:36:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("799","32660-004","32660-004-2","2023-01-17","","125","0","","","","","250","2023-01-19 08:36:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("800","56559-005","56559-005-3","2023-01-17","","75","0","","","","","175","2023-01-19 08:36:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("801","56559-006","56559-006-3","2023-01-17","","75","0","","","","","175","2023-01-19 08:36:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("802","02568-001","02568-001-10","2023-01-17","","0","100","","","","","-400","2023-01-19 08:39:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("803","02568-002","02568-002-10","2023-01-17","","0","100","","","","","-400","2023-01-19 08:39:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("804","85042-005","85042-005-3","2023-01-17","","100","0","","","","","200","2023-01-19 08:40:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("805","85042-006","85042-006-3","2023-01-17","","100","0","","","","","200","2023-01-19 08:40:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("806","92769-001","92769-001-3","2023-01-17","","100","0","","","","","200","2023-01-19 08:41:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("807","92769-002","92769-002-3","2023-01-17","","100","0","","","","","200","2023-01-19 08:41:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("808","64794-001","64794-001-3","2023-01-17","","150","0","","","","","125","2023-01-19 08:50:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("809","64794-002","64794-002-3","2023-01-17","","150","0","","","","","125","2023-01-19 08:50:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("810","67073-003","67073-003-4","2023-01-17","","100","0","","","","","100","2023-01-19 08:51:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("811","67073-004","67073-004-4","2023-01-17","","100","0","","","","","100","2023-01-19 08:51:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("812","67073-005","67073-005-2","2023-01-17","","80","0","","","","","160","2023-01-19 08:51:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("813","67073-006","67073-006-2","2023-01-17","","80","0","","","","","160","2023-01-19 08:51:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("814","43617-011","43617-011-1","2023-01-17","","200","0","","","","","800","2023-01-19 08:51:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("815","43617-012","43617-012-1","2023-01-17","","200","0","","","","","800","2023-01-19 08:51:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("816","93406-002","93406-002-2","2023-01-17","","250","0","","","","","1500","2023-01-19 08:52:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("817","49435-004","49435-004-9","2023-01-17","","700","0","","","","","25","2023-01-19 08:52:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("818","07829-003","07829-003-3","2023-01-18","","33","0","","","","","337","2023-01-19 08:53:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("819","93481-001","93481-001-2","2023-01-18","","63","0","","","","","124","2023-01-19 08:54:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("820","64794-003","64794-003-1","2023-01-18","","150","0","","","","","150","2023-01-19 08:54:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("821","64794-004","64794-004-1","2023-01-18","","150","0","","","","","150","2023-01-19 08:54:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("822","02020-007","02020-007-3","2023-01-18","","125","0","","","","","125","2023-01-19 08:54:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("823","02020-008","02020-008-3","2023-01-18","","125","0","","","","","125","2023-01-19 08:54:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("824","69036-001","69036-001-5","2023-01-18","","125","0","","","","","375","2023-01-19 08:55:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("825","69036-002","69036-002-5","2023-01-18","","125","0","","","","","375","2023-01-19 08:55:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("826","69589-005","69589-005-2","2023-01-18","","125","0","","","","","250","2023-01-19 08:55:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("827","69589-006","69589-006-2","2023-01-18","","125","0","","","","","250","2023-01-19 08:55:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("828","02020-009","02020-009-2","2023-01-18","","125","0","","","","","250","2023-01-19 08:56:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("829","02020-010","02020-010-2","2023-01-18","","125","0","","","","","250","2023-01-19 08:56:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("830","03766-005","03766-005-4","2023-01-18","","15","0","","","","","270","2023-01-19 08:56:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("831","03766-006","03766-006-4","2023-01-18","","15","0","","","","","270","2023-01-19 08:56:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("832","06018-001","06018-001-2","2023-01-18","","50","0","","","","","400","2023-01-19 08:57:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("833","06018-002","06018-002-2","2023-01-18","","50","0","","","","","400","2023-01-19 08:57:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("834","56559-007","56559-007-1","2023-01-18","","150","0","","","","","350","2023-01-19 08:57:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("835","56559-008","56559-008-1","2023-01-18","","150","0","","","","","350","2023-01-19 08:57:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("836","71302-009","71302-009-4","2023-01-18","","113","0","","","","","186","2023-01-19 08:58:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("837","71302-010","71302-010-4","2023-01-18","","113","0","","","","","186","2023-01-19 08:58:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("838","09472-003","09472-003-2","2023-01-18","","63","0","","","","","124","2023-01-19 08:59:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("839","09472-004","09472-004-2","2023-01-18","","63","0","","","","","124","2023-01-19 08:59:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("840","56559-005","56559-005-4","2023-01-18","","50","0","","","","","125","2023-01-19 15:30:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("841","56559-006","56559-006-4","2023-01-18","","50","0","","","","","125","2023-01-19 15:30:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("842","03766-003","03766-003-4","2023-01-18","","115","0","","","","","40","2023-01-19 15:31:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("843","03766-004","03766-004-4","2023-01-18","","115","0","","","","","40","2023-01-19 15:31:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("844","23673-003","23673-003-2","2023-01-18","","125","0","","","","","250","2023-01-19 15:31:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("845","23673-004","23673-004-2","2023-01-18","","125","0","","","","","250","2023-01-19 15:31:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("846","22174-007","22174-007-1","2023-01-18","","100","0","","","","","400","2023-01-19 15:32:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("847","22174-008","22174-008-1","2023-01-18","","100","0","","","","","400","2023-01-19 15:32:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("848","62113-002","62113-002-1","2023-01-18","","250","0","","","","","750","2023-01-19 15:32:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("849","62113-003","62113-003-1","2023-01-18","","250","0","","","","","750","2023-01-19 15:32:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("850","06088-009","06088-009-2","2023-01-18","","250","0","","","","","500","2023-01-19 15:33:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("851","07829-002","07829-002-3","2023-01-18","","33","0","","","","","337","2023-01-19 16:08:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("852","93481-002","93481-002-2","2023-01-18","","63","0","","","","","124","2023-01-19 16:09:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("853","32506-001","32506-001-4","2023-01-19","","50","0","","","","","250","2023-01-19 16:11:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("855","05161-001","05161-001-10","2023-01-19","","0","188","","","","","-256","2023-01-19 16:11:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("857","17396-007","17396-007-4","2023-01-19","","25","0","","","","","705","2023-01-19 16:23:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("859","99001-005","99001-005-2","2023-01-19","","125","0","","","","","250","2023-01-19 16:24:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("861","07415-004","07415-004-7","2023-01-19","","20","0","","","","","130","2023-01-19 16:24:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("862","71302-011","71302-011-3","2023-01-19","","50","0","","","","","200","2023-01-19 16:25:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("866","99001-003","99001-003-3","2023-01-20","","250","0","","","","","250","2023-01-22 17:06:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("867","62113-001","62113-001-5","2023-01-20","","200","200","","","","","-200","2023-01-22 17:06:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("868","92479-003","92479-003-2","2023-01-20","","125","0","","","","","250","2023-01-22 17:07:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("869","17708-005","17708-005-3","2023-01-20","","125","0","","","","","375","2023-01-22 17:07:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("870","06088-005","06088-005-3","2023-01-20","","250","0","","","","","0","2023-01-22 17:07:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("871","69589-003","69589-003-4","2023-01-20","","250","0","","","","","0","2023-01-22 17:08:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("872","64794-001","64794-001-4","2023-01-20","","50","0","","","","","75","2023-01-22 17:08:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("873","23673-003","23673-003-3","2023-01-20","","50","0","","","","","200","2023-01-22 17:08:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("874","17396-005","17396-005-6","2023-01-20","","25","0","","","","","455","2023-01-22 17:09:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("875","53518-003","53518-003-4","2023-01-20","","200","0","","","","","200","2023-01-22 17:09:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("876","14561-001","14561-001-2","2023-01-20","","100","0","","","","","800","2023-01-22 17:09:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("877","91562-001","91562-001-1","2023-01-20","","900","0","","","","","100","2023-01-22 17:10:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("878","07415-002","07415-002-7","2023-01-20","","20","0","","","","","130","2023-01-22 17:10:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("879","32506-002","32506-002-4","2023-01-20","","50","0","","","","","250","2023-01-22 17:11:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("880","05161-002","05161-002-10","2023-01-20","","0","188","","","","","-276","2023-01-22 17:11:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("882","99001-004","99001-004-3","2023-01-20","","250","0","","","","","375","2023-01-22 17:12:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("883","07415-003","07415-003-7","2023-01-20","","60","0","","","","","390","2023-01-22 17:12:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("884","71302-012","71302-012-3","2023-01-20","","50","0","","","","","200","2023-01-22 17:12:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("885","49435-004","49435-004-10","2023-01-20","","25","175","","","","","-175","2023-01-22 17:13:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("886","92479-004","92479-004-2","2023-01-20","","125","0","","","","","250","2023-01-22 17:13:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("887","17708-006","17708-006-3","2023-01-20","","125","0","","","","","375","2023-01-22 17:13:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("888","06088-006","06088-006-3","2023-01-20","","250","0","","","","","0","2023-01-22 17:13:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("889","69589-004","69589-004-4","2023-01-20","","250","0","","","","","0","2023-01-22 17:14:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("890","64794-002","64794-002-4","2023-01-20","","50","0","","","","","75","2023-01-22 17:14:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("891","23673-004","23673-004-3","2023-01-20","","50","0","","","","","200","2023-01-22 17:14:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("892","17396-006","17396-006-6","2023-01-20","","25","0","","","","","455","2023-01-22 17:15:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("893","53518-004","53518-004-4","2023-01-20","","200","0","","","","","200","2023-01-22 17:15:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("894","14561-002","14561-002-2","2023-01-20","","100","0","","","","","800","2023-01-22 17:15:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("895","99001-006","99001-006-2","2023-01-20","","125","0","","","","","250","2023-01-22 17:16:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("896","06018-001","06018-001-3","2023-01-20","","125","0","","","","","275","2023-01-22 17:17:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("897","06018-002","06018-002-3","2023-01-20","","125","0","","","","","275","2023-01-22 17:17:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("898","85042-007","85042-007-3","2023-01-20","","188","0","","","","","186","2023-01-22 17:17:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("899","85042-008","85042-008-3","2023-01-20","","188","0","","","","","186","2023-01-22 17:17:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("900","71302-011","71302-011-4","2023-01-20","","125","0","","","","","75","2023-01-22 17:18:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("901","71302-012","71302-012-4","2023-01-20","","125","0","","","","","75","2023-01-22 17:18:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("902","43617-009","43617-009-3","2023-01-20","","200","0","","","","","400","2023-01-22 17:18:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("903","43617-010","43617-010-3","2023-01-20","","200","0","","","","","400","2023-01-22 17:18:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("904","69598-001","69598-001-3","2023-01-20","","63","0","","","","","49","2023-01-22 17:19:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("905","69598-002","69598-002-3","2023-01-20","","63","0","","","","","49","2023-01-22 17:19:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("906","98925-001","98925-001-2","2023-01-20","","125","0","","","","","250","2023-01-22 17:19:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("907","98925-002","98925-002-2","2023-01-20","","125","0","","","","","250","2023-01-22 17:19:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("908","56559-007","56559-007-2","2023-01-20","","125","0","","","","","225","2023-01-22 17:20:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("909","56559-008","56559-008-2","2023-01-20","","125","0","","","","","225","2023-01-22 17:20:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("910","32660-001","32660-001-3","2023-01-20","","250","0","","","","","0","2023-01-22 17:22:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("911","10040-003","10040-003-2","2023-01-20","","0","300","","","","","4700","2023-01-22 17:22:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("913","95371-001","95371-001-2","2023-01-20","","125","0","","","","","250","2023-01-22 17:25:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("914","92479-001","92479-001-3","2023-01-20","","125","0","","","","","125","2023-01-22 17:26:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("915","68601-005","68601-005-1","2023-01-20","","500","0","","","","","1500","2023-01-22 17:26:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("916","68601-006","68601-006-1","2023-01-20","","500","0","","","","","1500","2023-01-22 17:26:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("917","56559-005","56559-005-5","2023-01-20","","125","0","","","","","0","2023-01-22 17:27:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("918","56559-006","56559-006-5","2023-01-20","","125","0","","","","","0","2023-01-22 17:27:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("919","77764-011","77764-011-1","2023-01-20","","100","0","","","","","650","2023-01-22 17:27:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("920","77764-012","77764-012-1","2023-01-20","","100","0","","","","","650","2023-01-22 17:27:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("921","67073-003","67073-003-5","2023-01-20","","100","0","","","","","0","2023-01-22 17:28:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("922","67073-004","67073-004-5","2023-01-20","","100","0","","","","","0","2023-01-22 17:28:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("923","69598-003","69598-003-1","2023-01-20","","125","0","","","","","375","2023-01-22 17:28:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("924","69598-004","69598-004-1","2023-01-21","","125","0","","","","","375","2023-01-22 17:29:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("926","32660-002","32660-002-2","2023-01-20","","250","0","","","","","125","2023-01-22 17:29:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("927","32660-003","32660-003-3","2023-01-20","","250","0","","","","","0","2023-01-22 17:30:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("928","32660-004","32660-004-3","2023-01-20","","250","0","","","","","0","2023-01-22 17:30:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("929","43617-011","43617-011-2","2023-01-20","","200","0","","","","","600","2023-01-22 17:30:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("930","43617-012","43617-012-2","2023-01-20","","200","0","","","","","600","2023-01-22 17:30:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("931","17708-005","17708-005-4","2023-01-20","","125","0","","","","","250","2023-01-22 17:31:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("932","17708-006","17708-006-4","2023-01-20","","125","0","","","","","250","2023-01-22 17:32:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("933","37736-001","37736-001-2","2023-01-20","","250","0","","","","","500","2023-01-22 17:32:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("934","63744-001","63744-001-2","2023-01-20","","250","0","","","","","500","2023-01-22 17:32:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("935","34235-001","34235-001-3","2023-01-20","","250","0","","","","","150","2023-01-22 17:33:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("940","95371-002","95371-002-2","2023-01-20","","125","0","","","","","250","2023-01-22 17:38:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("941","92479-002","92479-002-3","2023-01-20","","125","0","","","","","125","2023-01-22 17:39:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("942","47368-001","47368-001-1","2023-01-21","","0","325","","","","","1850","2023-01-22 17:42:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("944","98925-003","98925-003-1","2023-01-21","","125","0","","","","","375","2023-01-22 17:43:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("945","98925-004","98925-004-1","2023-01-22","","125","0","","","","","375","2023-01-22 17:43:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("946","02568-001","02568-001-10","2023-01-21","","0","50","","","","","-450","2023-01-22 17:44:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("947","02568-002","02568-002-10","2023-01-22","","0","50","","","","","-450","2023-01-22 17:44:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("948","68601-003","68601-003-2","2023-01-21","","500","0","","","","","1500","2023-01-22 17:44:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("949","68601-004","68601-004-2","2023-01-22","","500","0","","","","","1500","2023-01-22 17:44:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("950","69598-001","69598-001-4","2023-01-25","","49","14","","","","","-76","2023-01-22 17:45:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("952","32506-001","32506-001-5","2023-01-21","","50","0","","","","","200","2023-01-22 17:45:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("953","32506-002","32506-002-5","2023-01-22","","50","0","","","","","200","2023-01-22 17:45:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("954","09398-002","09398-002-1","2023-01-22","","250","0","","","","","750","2023-01-22 17:47:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("955","90141-008","90141-008-1","2023-01-22","","200","0","","","","","800","2023-01-22 17:47:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("956","93406-002","93406-002-3","2023-01-22","","250","0","","","","","1250","2023-01-22 17:49:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("957","90141-009","90141-009-1","2023-01-22","","125","0","","","","","375","2023-01-22 17:53:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("958","90141-010","90141-010-1","2023-01-23","","125","0","","","","","375","2023-01-22 17:53:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("959","22174-007","22174-007-2","2023-01-22","","25","0","","","","","375","2023-01-22 17:53:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("960","22174-008","22174-008-2","2023-01-23","","25","0","","","","","375","2023-01-22 17:53:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("961","92769-001","92769-001-4","2023-01-22","","100","0","","","","","100","2023-01-22 17:53:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("962","92769-002","92769-002-4","2023-01-23","","100","0","","","","","100","2023-01-22 17:53:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("963","85042-005","85042-005-4","2023-01-22","","100","0","","","","","100","2023-01-22 17:54:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("964","85042-006","85042-006-4","2023-01-23","","100","0","","","","","100","2023-01-22 17:54:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("965","71302-009","71302-009-5","2023-01-22","","186","2","","","","","-2","2023-01-22 17:55:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("966","71302-010","71302-010-5","2023-01-23","","186","2","","","","","-2","2023-01-22 17:55:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("967","02020-011","02020-011-1","2023-01-22","","100","0","","","","","650","2023-01-22 17:55:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("968","02020-012","02020-012-1","2023-01-23","","100","0","","","","","650","2023-01-22 17:55:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("969","17396-005","17396-005-7","2023-01-22","","25","0","","","","","430","2023-01-22 17:56:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("970","17396-006","17396-006-7","2023-01-23","","25","0","","","","","430","2023-01-22 17:56:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("973","17396-009","17396-009-2","2023-01-20","","25","0","","","","","850","2023-01-22 18:29:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("974","17396-010","17396-010-1","2023-01-20","","25","0","","","","","975","2023-01-22 18:29:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("975","17396-008","17396-008-4","2023-01-20","","25","0","","","","","705","2023-01-22 18:31:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("977","06018-001","06018-001-4","2023-01-23","","50","0","","","","","225","2023-01-25 18:30:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("978","17396-007","17396-007-5","2023-01-23","","25","0","","","","","680","2023-01-25 18:30:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("979","90141-006","90141-006-2","2023-01-23","","25","0","","","","","350","2023-01-25 18:31:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("980","02020-009","02020-009-3","2023-01-23","","250","0","","","","","0","2023-01-25 18:31:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("981","06088-010","06088-010-1","2023-01-23","","50","0","","","","","450","2023-01-25 18:31:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("982","19827-001","19827-001-5","2023-01-23","","100","0","","","","","550","2023-01-25 18:32:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("983","69598-004","69598-004-2","2023-01-23","","125","0","","","","","250","2023-01-25 18:32:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("984","03766-005","03766-005-5","2023-01-23","","100","0","","","","","170","2023-01-25 18:32:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("985","69589-005","69589-005-3","2023-01-23","","125","0","","","","","125","2023-01-25 18:33:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("986","09472-003","09472-003-3","2023-01-23","","124","1","","","","","-1","2023-01-25 18:33:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("987","69598-003","69598-003-2","2023-01-23","","125","0","","","","","250","2023-01-25 18:33:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("988","03766-003","03766-003-5","2023-01-23","","40","75","","","","","-75","2023-01-25 18:34:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("989","62113-002","62113-002-2","2023-01-23","","250","0","","","","","500","2023-01-25 18:34:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("990","31571-001","31571-001-1","2023-01-23","","625","0","","","","","1875","2023-01-25 18:34:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("991","02020-011","02020-011-2","2023-01-23","","88","0","","","","","562","2023-01-25 18:35:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("992","02568-001","02568-001-10","2023-01-23","","0","100","","","","","-550","2023-01-25 18:35:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("994","06018-002","06018-002-4","2023-01-24","","50","0","","","","","225","2023-01-25 18:36:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("995","17396-008","17396-008-5","2023-01-24","","25","0","","","","","680","2023-01-25 18:36:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("996","90141-007","90141-007-2","2023-01-24","","25","0","","","","","350","2023-01-25 18:36:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("997","02020-010","02020-010-3","2023-01-24","","250","0","","","","","0","2023-01-25 18:38:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("998","06088-011","06088-011-1","2023-01-24","","50","0","","","","","450","2023-01-25 18:38:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("999","19827-002","19827-002-5","2023-01-24","","100","0","","","","","550","2023-01-25 18:38:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1000","03766-006","03766-006-5","2023-01-24","","100","0","","","","","170","2023-01-25 18:39:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1001","69589-006","69589-006-3","2023-01-24","","125","0","","","","","125","2023-01-25 18:39:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1003","17396-010","17396-010-2","2023-01-24","","125","0","","","","","850","2023-01-25 18:40:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1004","47368-002","47368-002-1","2023-01-24","","0","325","","","","","2500","2023-01-25 18:41:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1005","09472-004","09472-004-3","2023-01-24","","124","1","","","","","-1","2023-01-25 18:41:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1006","03766-004","03766-004-5","2023-01-24","","40","75","","","","","-75","2023-01-25 18:41:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1007","62113-003","62113-003-2","2023-01-24","","250","0","","","","","500","2023-01-25 18:41:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1008","31571-002","31571-002-1","2023-01-24","","625","0","","","","","1875","2023-01-25 18:42:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1009","02020-012","02020-012-2","2023-01-24","","88","0","","","","","562","2023-01-25 18:42:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1010","02568-002","02568-002-10","2023-01-24","","0","100","","","","","-550","2023-01-25 18:42:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1011","85042-005","85042-005-5","2023-01-24","","100","0","","","","","0","2023-01-25 18:43:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1012","53518-003","53518-003-5","2023-01-24","","200","0","","","","","0","2023-01-25 18:43:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1013","92479-003","92479-003-3","2023-01-24","","125","0","","","","","125","2023-01-25 18:43:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1014","17708-005","17708-005-5","2023-01-24","","250","0","","","","","0","2023-01-25 18:44:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1015","99001-003","99001-003-4","2023-01-24","","250","0","","","","","0","2023-01-25 18:44:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1016","85042-006","85042-006-5","2023-01-24","","100","0","","","","","0","2023-01-25 18:45:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1017","53518-004","53518-004-5","2023-01-24","","200","0","","","","","0","2023-01-25 18:45:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1018","92479-004","92479-004-3","2023-01-24","","125","0","","","","","125","2023-01-25 18:45:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1019","17708-006","17708-006-5","2023-01-24","","250","0","","","","","0","2023-01-25 18:46:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1020","99001-004","99001-004-4","2023-01-24","","250","0","","","","","0","2023-01-25 18:46:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1021","06018-001","06018-001-5","2023-01-25","","50","0","","","","","175","2023-01-25 18:46:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1022","71302-011","71302-011-5","2023-01-25","","50","0","","","","","25","2023-01-25 18:47:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1023","90141-006","90141-006-3","2023-01-25","","50","0","","","","","300","2023-01-25 18:48:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1024","61500-007","61500-007-1","2023-01-25","","125","0","","","","","375","2023-01-25 18:48:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1025","43617-009","43617-009-4","2023-01-25","","400","0","","","","","0","2023-01-25 18:48:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1026","85042-007","85042-007-4","2023-01-25","","186","2","","","","","-2","2023-01-25 18:49:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1027","99001-005","99001-005-3","2023-01-25","","125","0","","","","","125","2023-01-25 18:49:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1029","69036-001","69036-001-6","2023-01-25","","125","0","","","","","250","2023-01-25 18:50:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1030","67073-005","67073-005-3","2023-01-25","","80","0","","","","","80","2023-01-25 18:50:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1031","92769-001","92769-001-5","2023-01-25","","100","0","","","","","0","2023-01-25 18:51:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1032","92479-003","92479-003-4","2023-01-25","","125","0","","","","","0","2023-01-25 18:51:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1033","61500-005","61500-005-1","2023-01-25","","250","0","","","","","750","2023-01-25 18:52:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1034","90141-009","90141-009-2","2023-01-25","","125","0","","","","","250","2023-01-25 19:04:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1035","43617-011","43617-011-3","2023-01-25","","200","0","","","","","400","2023-01-25 19:05:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1036","06018-002","06018-002-5","2023-01-26","","50","0","","","","","175","2023-01-25 19:06:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1037","71302-012","71302-012-5","2023-01-26","","50","0","","","","","25","2023-01-25 19:06:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1038","90141-007","90141-007-3","2023-01-26","","50","0","","","","","300","2023-01-25 19:06:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1039","61500-008","61500-008-1","2023-01-26","","125","0","","","","","375","2023-01-25 19:07:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1040","43617-010","43617-010-4","2023-01-26","","400","0","","","","","0","2023-01-25 19:07:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1041","85042-008","85042-008-4","2023-01-26","","186","2","","","","","-2","2023-01-25 19:07:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1042","99001-006","99001-006-3","2023-01-26","","125","0","","","","","125","2023-01-25 19:08:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1043","69598-002","69598-002-4","2023-01-26","","49","14","","","","","-14","2023-01-25 19:08:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1044","69036-002","69036-002-6","2023-01-26","","125","0","","","","","250","2023-01-25 19:08:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1045","90141-008","90141-008-2","2023-01-26","","300","0","","","","","500","2023-01-25 19:08:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1046","34235-001","34235-001-4","2023-01-26","","150","50","","","","","-50","2023-01-25 19:09:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1047","67073-006","67073-006-3","2023-01-26","","80","0","","","","","80","2023-01-25 19:09:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1048","92769-002","92769-002-5","2023-01-26","","100","0","","","","","0","2023-01-25 19:09:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1049","92479-004","92479-004-4","2023-01-26","","125","0","","","","","0","2023-01-25 19:09:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1050","61500-006","61500-006-1","2023-01-26","","250","0","","","","","750","2023-01-25 19:10:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1051","69589-008","69589-008-1","2023-01-26","","250","0","","","","","750","2023-01-25 19:10:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1052","90141-010","90141-010-2","2023-01-26","","125","0","","","","","250","2023-01-25 19:11:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1053","43617-012","43617-012-3","2023-01-26","","200","0","","","","","400","2023-01-25 19:11:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1054","17708-003","17708-003-5","2023-01-02","","125","0","","","","","0","2023-01-25 19:19:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1055","17708-004","17708-004-5","2023-01-02","","125","0","","","","","0","2023-01-25 19:19:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1056","69589-007","69589-007-1","2023-01-25","","250","0","","","","","750","2023-01-25 19:40:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1057","32660-002","32660-002-3","2023-01-24","","125","0","","","","","0","2023-01-25 20:49:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1058","67073-007","67073-007-1","2023-01-31","","125","0","","","","","625","2023-01-31 04:55:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1059","99242-002","99242-002-3","2023-01-31","","50","0","","","","","225","2023-01-31 04:56:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1060","62113-002","62113-002-3","2023-01-31","","500","0","","","","","0","2023-01-31 04:58:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1061","62113-004","62113-004-1","2023-01-31","","400","0","","","","","1600","2023-01-31 04:58:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1062","17396-005","17396-005-8","2023-01-31","","30","0","","","","","400","2023-01-31 04:59:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1063","06088-012","06088-012-1","2023-01-31","","125","0","","","","","375","2023-01-31 04:59:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1064","02568-001","02568-001-10","2023-01-31","","0","100","","","","","-650","2023-01-31 05:00:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1065","14561-001","14561-001-3","2023-01-31","","250","0","","","","","550","2023-01-31 05:00:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1066","67073-008","67073-008-1","2023-01-31","","125","0","","","","","625","2023-01-31 05:01:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1067","99242-001","99242-001-3","2023-01-31","","50","0","","","","","225","2023-01-31 05:02:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1068","62113-003","62113-003-3","2023-01-31","","500","0","","","","","0","2023-01-31 05:03:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1069","17396-006","17396-006-8","2023-01-31","","30","0","","","","","400","2023-01-31 05:04:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1070","06088-013","06088-013-1","2023-01-31","","125","0","","","","","375","2023-01-31 05:12:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1071","02568-002","02568-002-10","2023-01-31","","0","100","","","","","-650","2023-01-31 05:12:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1072","14561-002","14561-002-3","2023-01-31","","250","0","","","","","550","2023-01-31 05:12:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1073","06088-009","06088-009-3","2023-01-31","","500","0","","","","","0","2023-01-31 05:13:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1074","63744-001","63744-001-3","2023-01-31","","250","0","","","","","250","2023-01-31 05:16:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1075","93406-002","93406-002-4","2023-01-31","","250","0","","","","","1000","2023-01-31 05:16:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1076","14561-001","14561-001-4","2023-01-31","","100","0","","","","","450","2023-01-31 05:16:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1077","68601-005","68601-005-2","2023-01-31","","500","0","","","","","1000","2023-01-31 05:17:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1078","17396-007","17396-007-6","2023-01-31","","30","0","","","","","650","2023-01-31 05:17:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1079","06018-001","06018-001-6","2023-01-31","","50","0","","","","","125","2023-01-31 05:18:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1080","06088-010","06088-010-2","2023-01-31","","75","0","","","","","375","2023-01-31 05:18:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1081","32506-001","32506-001-6","2023-01-31","","25","0","","","","","175","2023-01-31 05:19:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1082","90141-006","90141-006-4","2023-01-31","","50","0","","","","","250","2023-01-31 05:20:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1083","98925-001","98925-001-3","2023-01-31","","125","0","","","","","125","2023-01-31 05:20:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1084","93406-003","93406-003-1","2023-01-31","","100","0","","","","","900","2023-01-31 05:21:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1085","14561-002","14561-002-4","2023-01-31","","100","0","","","","","450","2023-01-31 05:21:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1086","68601-006","68601-006-2","2023-01-31","","500","0","","","","","1000","2023-01-31 05:22:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1087","17396-008","17396-008-6","2023-01-31","","30","0","","","","","650","2023-01-31 05:22:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1088","06018-002","06018-002-6","2023-01-31","","50","0","","","","","125","2023-01-31 05:22:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1089","06088-011","06088-011-2","2023-01-31","","75","0","","","","","375","2023-01-31 05:23:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1090","32506-002","32506-002-6","2023-01-31","","25","0","","","","","175","2023-01-31 05:23:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1091","90141-007","90141-007-4","2023-01-31","","50","0","","","","","250","2023-01-31 05:25:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1092","98925-002","98925-002-3","2023-01-31","","125","0","","","","","125","2023-01-31 05:26:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1093","93406-004","93406-004-1","2023-01-31","","100","0","","","","","900","2023-01-31 05:26:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1094","37736-001","37736-001-3","2023-01-31","","250","0","","","","","250","2023-01-31 05:27:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1095","99242-001","99242-001-4","2023-01-31","","50","0","","","","","175","2023-01-31 05:27:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1096","19827-001","19827-001-6","2023-01-31","","50","0","","","","","500","2023-01-31 05:27:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1097","17396-007","17396-007-7","2023-01-31","","0","20","","","","","650","2023-01-31 05:28:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1098","61500-007","61500-007-2","2023-01-31","","125","0","","","","","250","2023-01-31 05:29:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1099","06018-001","06018-001-7","2023-01-31","","50","0","","","","","75","2023-01-31 05:29:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1100","98925-001","98925-001-4","2023-01-31","","125","0","","","","","0","2023-01-31 05:30:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1101","68601-003","68601-003-3","2023-01-31","","500","0","","","","","1000","2023-01-31 05:30:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1102","93406-003","93406-003-2","2023-01-31","","150","0","","","","","750","2023-01-31 05:30:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1103","14561-001","14561-001-5","2023-01-31","","100","0","","","","","350","2023-01-31 05:31:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1104","02568-001","02568-001-10","2023-01-31","","0","50","","","","","-650","2023-01-31 05:31:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1105","90141-009","90141-009-3","2023-01-31","","150","0","","","","","100","2023-01-31 05:32:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1106","17396-005","17396-005-9","2023-01-31","","0","20","","","","","400","2023-01-31 05:33:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1107","99242-002","99242-002-4","2023-01-31","","50","0","","","","","175","2023-01-31 05:33:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1108","64794-001","64794-001-5","2023-01-31","","25","0","","","","","50","2023-01-31 05:34:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1109","19827-002","19827-002-6","2023-01-31","","50","0","","","","","500","2023-01-31 05:34:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1110","17396-008","17396-008-7","2023-01-31","","0","20","","","","","650","2023-01-31 05:35:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1111","61500-008","61500-008-2","2023-01-31","","125","0","","","","","250","2023-01-31 05:35:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1112","06018-002","06018-002-7","2023-01-31","","50","0","","","","","75","2023-01-31 05:36:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1113","98925-002","98925-002-4","2023-01-31","","125","0","","","","","0","2023-01-31 05:36:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1114","68601-004","68601-004-3","2023-01-31","","500","0","","","","","1000","2023-01-31 05:36:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1115","93406-004","93406-004-2","2023-01-31","","150","0","","","","","750","2023-01-31 05:37:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1116","14561-002","14561-002-5","2023-01-31","","100","0","","","","","350","2023-01-31 05:37:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1117","02568-002","02568-002-10","2023-01-31","","0","50","","","","","-650","2023-01-31 05:38:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1118","90141-010","90141-010-3","2023-01-31","","150","0","","","","","100","2023-01-31 05:39:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1119","17396-006","17396-006-9","2023-01-31","","0","20","","","","","400","2023-01-31 05:39:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1120","64794-002","64794-002-5","2023-01-31","","25","0","","","","","50","2023-01-31 05:39:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1121","0099-001","0099-001-1","2023-01-31","","2600","0","","","","","0","2023-01-31 05:40:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1122","07829-002","07829-002-4","2023-01-31","","0","33","","","","","337","2023-01-31 05:40:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1123","64794-004","64794-004-2","2023-01-31","","75","0","","","","","75","2023-01-31 05:41:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1124","95371-002","95371-002-3","2023-01-31","","125","0","","","","","125","2023-01-31 05:41:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1125","02020-014","02020-014-1","2023-01-31","","380","50","","","","","370","2023-01-31 05:48:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1126","17396-010","17396-010-3","2023-01-31","","0","750","","","","","850","2023-01-31 05:48:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1127","74215-001","74215-001-6","2023-01-31","","0","38","","","","","310","2023-01-31 05:49:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1128","07829-003","07829-003-4","2023-01-31","","0","33","","","","","337","2023-01-31 05:49:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1129","64794-003","64794-003-2","2023-01-31","","75","0","","","","","75","2023-01-31 05:49:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1130","95371-001","95371-001-3","2023-01-31","","125","0","","","","","125","2023-01-31 05:50:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1131","02020-013","02020-013-1","2023-01-31","","380","50","","","","","370","2023-01-31 05:52:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1132","17396-009","17396-009-3","2023-01-31","","0","750","","","","","850","2023-01-31 05:53:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1133","02020-015","02020-015-1","2023-01-31","","75","0","","","","","425","2023-01-31 06:05:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1134","90141-006","90141-006-5","2023-01-31","","75","0","","","","","175","2023-01-31 06:06:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1135","17708-009","17708-009-1","2023-01-31","","125","0","","","","","375","2023-01-31 06:06:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1136","19827-001","19827-001-7","2023-01-31","","50","0","","","","","450","2023-01-31 06:06:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1137","17396-007","17396-007-8","2023-01-31","","0","10","","","","","650","2023-01-31 06:07:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1138","32506-001","32506-001-7","2023-01-31","","25","0","","","","","150","2023-01-31 06:07:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1139","69589-007","69589-007-2","2023-01-31","","250","0","","","","","500","2023-01-31 06:10:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1140","85042-009","85042-009-1","2023-01-31","","150","0","","","","","600","2023-01-31 06:12:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1141","43617-011","43617-011-4","2023-01-31","","200","0","","","","","200","2023-01-31 06:12:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1142","17396-005","17396-005-10","2023-01-31","","0","10","","","","","400","2023-01-31 06:13:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1143","61500-005","61500-005-2","2023-01-31","","250","0","","","","","500","2023-01-31 06:13:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1144","02020-016","02020-016-1","2023-01-31","","75","0","","","","","425","2023-01-31 06:14:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1145","90141-007","90141-007-5","2023-01-31","","75","0","","","","","175","2023-01-31 06:14:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1146","17708-010","17708-010-1","2023-01-31","","125","0","","","","","375","2023-01-31 06:15:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1147","19827-002","19827-002-7","2023-01-31","","50","0","","","","","450","2023-01-31 06:15:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1148","17396-008","17396-008-8","2023-01-31","","0","10","","","","","650","2023-01-31 06:15:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1149","32506-002","32506-002-7","2023-01-31","","25","0","","","","","150","2023-01-31 06:16:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1150","69589-008","69589-008-2","2023-01-31","","250","0","","","","","500","2023-01-31 06:16:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1151","85042-010","85042-010-1","2023-01-31","","150","0","","","","","600","2023-01-31 06:16:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1152","43617-012","43617-012-4","2023-01-31","","200","0","","","","","200","2023-01-31 06:17:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1153","17396-006","17396-006-10","2023-01-31","","0","10","","","","","400","2023-01-31 06:17:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1154","61500-006","61500-006-2","2023-01-31","","250","0","","","","","500","2023-01-31 06:18:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1155","07829-003","07829-003-5","2023-01-31","","337","313","","","","","0","2023-01-31 10:13:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1156","92479-005","92479-005-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:05:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1157","95371-001","95371-001-4","2023-01-31","","125","0","","","","","0","2023-01-31 11:06:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1158","10040-003","10040-003-3","2023-01-31","","0","500","","","","","4700","2023-01-31 11:06:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1159","43617-013","43617-013-1","2023-01-31","","200","0","","","","","800","2023-01-31 11:06:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1160","06018-001","06018-001-8","2023-01-31","","50","0","","","","","25","2023-01-31 11:07:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1161","09472-007","09472-007-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:07:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1162","03766-005","03766-005-6","2023-01-31","","90","0","","","","","80","2023-01-31 11:09:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1163","53518-005","53518-005-1","2023-01-31","","200","0","","","","","800","2023-01-31 11:09:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1164","71302-011","71302-011-6","2023-01-31","","25","0","","","","","0","2023-01-31 11:10:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1165","09472-005","09472-005-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:10:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1166","92769-003","92769-003-1","2023-01-31","","200","0","","","","","800","2023-01-31 11:11:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1167","14561-001","14561-001-6","2023-01-31","","150","150","","","","","200","2023-01-31 11:11:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1168","98925-003","98925-003-2","2023-01-31","","125","0","","","","","250","2023-01-31 11:11:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1169","22174-007","22174-007-3","2023-01-31","","50","0","","","","","325","2023-01-31 11:12:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1170","92479-007","92479-007-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:12:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1171","71302-013","71302-013-1","2023-01-31","","188","0","","","","","562","2023-01-31 11:12:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1172","62113-005","62113-005-1","2023-01-31","","250","0","","","","","750","2023-01-31 11:13:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1173","93406-002","93406-002-5","2023-01-31","","250","0","","","","","750","2023-01-31 11:14:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1174","90141-008","90141-008-3","2023-01-31","","500","0","","","","","0","2023-01-31 11:15:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1175","63744-001","63744-001-4","2023-01-31","","250","0","","","","","0","2023-01-31 11:15:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1176","09398-002","09398-002-2","2023-01-31","","750","0","","","","","0","2023-01-31 11:15:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1177","62113-006","62113-006-1","2023-01-31","","250","0","","","","","750","2023-01-31 11:16:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1178","43617-014","43617-014-1","2023-01-31","","200","0","","","","","800","2023-01-31 11:16:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1179","06018-002","06018-002-8","2023-01-31","","50","0","","","","","25","2023-01-31 11:16:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1180","09472-008","09472-008-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:16:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1181","03766-006","03766-006-6","2023-01-31","","90","0","","","","","80","2023-01-31 11:17:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1182","53518-006","53518-006-1","2023-01-31","","200","0","","","","","800","2023-01-31 11:17:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1183","71302-012","71302-012-6","2023-01-31","","25","0","","","","","0","2023-01-31 11:18:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1184","07829-002","07829-002-5","2023-01-31","","337","313","","","","","0","2023-01-31 11:18:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1185","92479-006","92479-006-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:19:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1186","95371-002","95371-002-4","2023-01-31","","125","0","","","","","0","2023-01-31 11:19:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1187","09472-006","09472-006-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:19:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1188","92769-004","92769-004-1","2023-01-31","","200","0","","","","","800","2023-01-31 11:20:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1189","14561-002","14561-002-6","2023-01-31","","150","150","","","","","200","2023-01-31 11:20:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1190","98925-004","98925-004-2","2023-01-31","","125","0","","","","","250","2023-01-31 11:20:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1191","22174-008","22174-008-3","2023-01-31","","50","0","","","","","325","2023-01-31 11:21:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1192","92479-008","92479-008-1","2023-01-31","","125","0","","","","","375","2023-01-31 11:21:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1193","71302-014","71302-014-1","2023-01-31","","188","0","","","","","562","2023-01-31 11:21:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1194","06088-010","06088-010-3","2023-02-01","","75","0","","","","","300","2023-02-01 10:49:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1195","90141-006","90141-006-6","2023-02-01","","75","0","","","","","100","2023-02-01 10:49:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1196","17396-007","17396-007-9","2023-02-01","","0","10","","","","","650","2023-02-01 10:49:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1197","03766-005","03766-005-7","2023-02-01","","80","75","","","","","0","2023-02-01 10:50:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1198","32506-001","32506-001-8","2023-02-01","","25","0","","","","","125","2023-02-01 10:50:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1199","69598-005","69598-005-1","2023-02-01","","63","0","","","","","187","2023-02-01 10:50:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1200","17708-011","17708-011-1","2023-02-01","","250","0","","","","","750","2023-02-01 10:51:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1201","03766-007","03766-007-1","2023-02-01","","15","0","","","","","485","2023-02-01 10:51:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1202","14561-001","14561-001-7","2023-02-01","","50","50","","","","","150","2023-02-01 10:52:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1203","31571-001","31571-001-2","2023-02-01","","625","0","","","","","1250","2023-02-01 10:53:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1204","06088-011","06088-011-3","2023-02-01","","75","0","","","","","300","2023-02-01 10:57:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1205","90141-007","90141-007-6","2023-02-01","","75","0","","","","","100","2023-02-01 10:59:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1206","17396-008","17396-008-9","2023-02-01","","0","10","","","","","650","2023-02-01 10:59:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1207","03766-006","03766-006-7","2023-02-01","","80","75","","","","","0","2023-02-01 11:00:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1208","32506-002","32506-002-8","2023-02-01","","25","0","","","","","125","2023-02-01 11:00:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1209","69598-006","69598-006-1","2023-02-01","","63","0","","","","","187","2023-02-01 11:00:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1210","17708-012","17708-012-1","2023-02-01","","250","0","","","","","750","2023-02-01 11:01:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1211","03766-008","03766-008-1","2023-02-01","","15","0","","","","","485","2023-02-01 11:01:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1212","14561-002","14561-002-7","2023-02-01","","50","50","","","","","150","2023-02-01 11:01:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1213","31571-002","31571-002-2","2023-02-01","","625","0","","","","","1250","2023-02-01 11:02:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1214","69036-001","69036-001-7","2023-02-02","","125","0","","","","","125","2023-02-02 10:36:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1215","69036-002","69036-002-7","2023-02-02","","125","0","","","","","125","2023-02-02 10:36:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1216","61500-008","61500-008-3","2023-02-02","","125","0","","","","","125","2023-02-02 10:36:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1217","61500-007","61500-007-3","2023-02-02","","125","0","","","","","125","2023-02-02 10:36:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1218","92479-006","92479-006-2","2023-02-02","","250","0","","","","","125","2023-02-02 10:39:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1219","92479-005","92479-005-2","2023-02-02","","250","0","","","","","125","2023-02-02 10:39:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1220","69589-008","69589-008-3","2023-02-02","","250","0","","","","","250","2023-02-02 10:39:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1221","69589-007","69589-007-3","2023-02-02","","250","0","","","","","250","2023-02-02 10:40:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1222","09472-006","09472-006-2","2023-02-02","","125","0","","","","","250","2023-02-02 10:40:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1223","09472-005","09472-005-2","2023-02-02","","125","0","","","","","250","2023-02-02 10:40:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1224","06088-013","06088-013-2","2023-02-02","","125","0","","","","","250","2023-02-02 10:41:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1225","06088-012","06088-012-2","2023-02-02","","125","0","","","","","250","2023-02-02 10:41:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1226","06088-014","06088-014-1","2023-02-02","","250","0","","","","","750","2023-02-02 10:41:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1227","31571-004","31571-004-1","2023-02-02","","625","0","","","","","1875","2023-02-02 10:42:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1228","31571-003","31571-003-1","2023-02-02","","625","0","","","","","1875","2023-02-02 10:42:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1229","56559-010","56559-010-1","2023-02-02","","25","0","","","","","475","2023-02-02 10:42:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1230","56559-009","56559-009-1","2023-02-02","","25","0","","","","","475","2023-02-02 10:42:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1231","43617-012","43617-012-5","2023-02-02","","200","0","","","","","0","2023-02-02 10:45:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1232","43617-011","43617-011-5","2023-02-02","","200","0","","","","","0","2023-02-02 10:45:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1233","74215-001","74215-001-7","2023-02-02","","310","566","","","","","0","2023-02-02 10:46:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1234","93406-002","93406-002-6","2023-02-03","","250","0","","","","","500","2023-02-03 13:50:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1235","99242-002","99242-002-5","2023-02-03","","50","0","","","","","125","2023-02-03 13:50:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1236","99242-001","99242-001-5","2023-02-03","","50","0","","","","","125","2023-02-03 13:50:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1237","99001-008","99001-008-1","2023-02-03","","1000","0","","","","","0","2023-02-03 13:51:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1238","99001-007","99001-007-1","2023-02-03","","1000","0","","","","","0","2023-02-03 13:51:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1239","47368-002","47368-002-2","2023-02-03","","2500","0","","","","","0","2023-02-03 13:55:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1240","47368-001","47368-001-2","2023-02-03","","2500","0","","","","","-325","2023-02-03 13:55:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1241","02568-002","02568-002-10","2023-02-03","","0","100","","","","","-650","2023-02-03 13:56:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1242","02568-001","02568-001-10","2023-02-03","","0","100","","","","","-650","2023-02-03 13:56:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1243","14561-002","14561-002-8","2023-02-03","","0","100","","","","","150","2023-02-03 13:56:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1244","14561-001","14561-001-8","2023-02-03","","0","100","","","","","150","2023-02-03 13:56:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1245","85042-010","85042-010-2","2023-02-03","","150","0","","","","","450","2023-02-03 13:57:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1246","85042-009","85042-009-2","2023-02-03","","150","0","","","","","450","2023-02-03 13:57:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1247","68601-006","68601-006-3","2023-02-03","","500","0","","","","","500","2023-02-03 13:57:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1248","68601-005","68601-005-3","2023-02-03","","500","0","","","","","500","2023-02-03 13:57:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1249","19827-002","19827-002-8","2023-02-03","","100","0","","","","","350","2023-02-03 13:57:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1250","19827-001","19827-001-8","2023-02-03","","100","0","","","","","350","2023-02-03 13:58:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1251","99001-006","99001-006-4","2023-02-03","","125","0","","","","","0","2023-02-03 13:58:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1252","99001-005","99001-005-4","2023-02-03","","125","0","","","","","0","2023-02-03 13:58:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1253","71302-016","71302-016-1","2023-02-03","","188","0","","","","","562","2023-02-03 13:58:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1254","71302-015","71302-015-1","2023-02-03","","188","0","","","","","562","2023-02-03 13:58:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1255","92769-006","92769-006-1","2023-02-03","","100","0","","","","","400","2023-02-03 13:59:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1256","92769-005","92769-005-1","2023-02-03","","100","0","","","","","400","2023-02-03 13:59:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1257","56559-008","56559-008-3","2023-02-03","","0","50","","","","","225","2023-02-03 13:59:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1258","56559-007","56559-007-3","2023-02-03","","0","50","","","","","225","2023-02-03 13:59:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1259","06018-002","06018-002-9","2023-02-03","","25","0","","","","","0","2023-02-03 14:01:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1260","06018-001","06018-001-9","2023-02-03","","25","0","","","","","0","2023-02-03 14:01:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1261","61500-008","61500-008-4","2023-02-03","","125","0","","","","","0","2023-02-03 14:01:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1262","61500-007","61500-007-4","2023-02-03","","125","0","","","","","0","2023-02-03 14:01:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1263","62113-004","62113-004-2","2023-02-03","","400","0","","","","","1200","2023-02-03 14:02:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1270","92769-003","92769-003-2","2023-02-04","","200","0","","","","","600","2023-02-05 03:54:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1271","92479-007","92479-007-2","2023-02-04","","125","0","","","","","250","2023-02-05 03:55:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1272","02568-001","02568-001-10","2023-02-04","","0","45","","","","","-650","2023-02-05 03:55:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1273","61500-005","61500-005-3","2023-02-04","","250","0","","","","","250","2023-02-05 03:56:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1274","98925-003","98925-003-3","2023-02-04","","125","0","","","","","125","2023-02-05 03:57:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1275","17396-005","17396-005-10","2023-02-04","","50","0","","","","","350","2023-02-05 03:57:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1276","93406-003","93406-003-3","2023-02-04","","250","0","","","","","500","2023-02-05 03:58:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1277","17708-009","17708-009-2","2023-02-04","","125","0","","","","","250","2023-02-05 03:59:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1278","68601-003","68601-003-4","2023-02-04","","500","0","","","","","500","2023-02-05 03:59:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1279","98925-005","98925-005-1","2023-02-04","","125","0","","","","","375","2023-02-05 03:59:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1280","43617-013","43617-013-2","2023-02-04","","200","0","","","","","600","2023-02-05 04:00:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1281","09472-007","09472-007-2","2023-02-04","","125","0","","","","","250","2023-02-05 04:00:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1282","92769-004","92769-004-2","2023-02-04","","200","0","","","","","600","2023-02-05 04:01:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1283","92479-008","92479-008-2","2023-02-04","","125","0","","","","","250","2023-02-05 04:01:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1284","02568-002","02568-002-10","2023-02-04","","0","45","","","","","-695","2023-02-05 04:02:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1285","61500-006","61500-006-3","2023-02-04","","250","0","","","","","250","2023-02-05 04:03:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1286","98925-004","98925-004-3","2023-02-04","","125","0","","","","","125","2023-02-05 04:03:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1287","17396-006","17396-006-10","2023-02-04","","50","0","","","","","350","2023-02-05 04:04:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1288","63744-002","63744-002-1","2023-02-04","","300","0","","","","","1200","2023-02-05 04:04:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1289","93406-002","93406-002-7","2023-02-04","","250","0","","","","","250","2023-02-05 04:04:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1291","17708-010","17708-010-2","2023-02-04","","125","0","","","","","250","2023-02-05 04:05:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1292","68601-004","68601-004-4","2023-02-04","","500","0","","","","","500","2023-02-05 04:05:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1293","98925-006","98925-006-1","2023-02-04","","125","0","","","","","375","2023-02-05 04:06:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1294","43617-014","43617-014-2","2023-02-04","","200","0","","","","","600","2023-02-05 04:06:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1295","09472-008","09472-008-2","2023-02-04","","125","0","","","","","250","2023-02-05 04:06:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1296","14561-001","14561-001-9","2023-02-05","","0","100","","","","","150","2023-02-07 05:27:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1297","02568-001","02568-001-10","2023-02-05","","0","50","","","","","0","2023-02-07 05:27:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1298","62113-005","62113-005-2","2023-02-05","","250","0","","","","","500","2023-02-07 05:28:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1299","71302-013","71302-013-2","2023-02-06","","188","0","","","","","374","2023-02-07 05:36:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1300","31571-001","31571-001-3","2023-02-06","","975","0","","","","","275","2023-02-07 05:44:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1301","31571-003","31571-003-2","2023-02-06","","625","0","","","","","1250","2023-02-07 05:45:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1302","14561-002","14561-002-9","2023-02-05","","0","100","","","","","150","2023-02-07 05:45:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1303","02568-002","02568-002-10","2023-02-05","","0","50","","","","","0","2023-02-07 05:45:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1304","62113-006","62113-006-2","2023-02-05","","250","0","","","","","500","2023-02-07 05:46:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1305","53518-006","53518-006-2","2023-02-05","","200","0","","","","","600","2023-02-07 05:46:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1306","71302-014","71302-014-2","2023-02-06","","188","0","","","","","374","2023-02-07 05:47:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1307","31571-002","31571-002-3","2023-02-06","","975","0","","","","","275","2023-02-07 05:47:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1308","31571-004","31571-004-2","2023-02-06","","625","0","","","","","1250","2023-02-07 05:47:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1309","32506-001","32506-001-9","2023-02-07","","25","0","","","","","100","2023-02-07 16:27:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1310","06088-010","06088-010-4","2023-02-07","","125","0","","","","","175","2023-02-07 16:28:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1311","77764-009","77764-009-2","2023-02-07","","125","0","","","","","440","2023-02-07 16:28:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1312","53518-005","53518-005-2","2023-02-07","","200","0","","","","","600","2023-02-07 16:28:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1313","03766-007","03766-007-2","2023-02-08","","115","0","","","","","370","2023-02-08 15:03:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1314","32629-001","32629-001-1","2023-02-08","","100","0","","","","","400","2023-02-08 15:03:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1315","77764-011","77764-011-2","2023-02-08","","175","0","","","","","475","2023-02-08 15:03:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1316","60148-001","60148-001-1","2023-02-08","","50","0","","","","","950","2023-02-08 15:03:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1317","02568-001","02568-001-10","2023-02-08","","0","50","","","","","-50","2023-02-08 15:04:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1318","17708-011","17708-011-2","2023-02-08","","100","0","","","","","650","2023-02-08 15:04:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1319","85042-009","85042-009-3","2023-02-08","","150","0","","","","","300","2023-02-08 15:04:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1320","69589-007","69589-007-4","2023-02-08","","250","0","","","","","0","2023-02-08 15:04:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1321","62113-004","62113-004-3","2023-02-08","","400","0","","","","","800","2023-02-08 15:05:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1322","03766-009","03766-009-1","2023-02-08","","75","0","","","","","675","2023-02-08 15:06:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1323","06018-003","06018-003-1","2023-02-08","","50","0","","","","","450","2023-02-08 15:06:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1324","90141-006","90141-006-7","2023-02-08","","50","0","","","","","50","2023-02-08 15:06:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1325","19827-001","19827-001-9","2023-02-08","","100","0","","","","","250","2023-02-08 15:06:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1326","69598-005","69598-005-2","2023-02-08","","18","0","","","","","169","2023-02-08 15:07:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1327","32506-002","32506-002-9","2023-02-08","","25","0","","","","","100","2023-02-08 15:07:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1328","77764-010","77764-010-2","2023-02-08","","125","0","","","","","440","2023-02-08 15:09:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1329","06088-011","06088-011-4","2023-02-08","","125","0","","","","","175","2023-02-08 15:10:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1330","93406-004","93406-004-3","2023-02-08","","250","0","","","","","500","2023-02-08 15:10:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1331","03766-008","03766-008-2","2023-02-08","","115","0","","","","","370","2023-02-08 15:11:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1332","32629-002","32629-002-1","2023-02-08","","100","0","","","","","400","2023-02-08 15:11:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1333","77764-012","77764-012-2","2023-02-08","","175","0","","","","","475","2023-02-08 15:12:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1334","60148-002","60148-002-1","2023-02-08","","50","0","","","","","950","2023-02-08 15:12:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1335","02568-002","02568-002-10","2023-02-08","","0","50","","","","","0","2023-02-08 15:12:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1336","17708-012","17708-012-2","2023-02-08","","100","0","","","","","650","2023-02-08 15:13:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1337","85042-010","85042-010-3","2023-02-08","","150","0","","","","","300","2023-02-08 15:13:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1338","69589-008","69589-008-4","2023-02-08","","250","0","","","","","0","2023-02-08 15:13:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1339","37688-001","37688-001-1","2023-02-08","","750","0","","","","","2250","2023-02-08 15:13:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1340","03766-010","03766-010-1","2023-02-08","","75","0","","","","","675","2023-02-08 15:13:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1341","06018-004","06018-004-1","2023-02-08","","50","0","","","","","450","2023-02-08 15:14:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1342","90141-007","90141-007-7","2023-02-08","","50","0","","","","","50","2023-02-08 15:14:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1343","19827-002","19827-002-9","2023-02-08","","100","0","","","","","250","2023-02-08 15:15:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1344","69598-006","69598-006-2","2023-02-08","","18","0","","","","","169","2023-02-08 15:15:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1345","49435-004","49435-004-10","2023-02-08","","0","600","","","","","0","2023-02-08 15:16:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1346","92769-003","92769-003-3","2023-02-09","","200","0","","","","","400","2023-02-10 14:46:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1347","99242-002","99242-002-6","2023-02-09","","50","0","","","","","75","2023-02-10 14:47:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1348","60148-002","60148-002-2","2023-02-09","","900","0","","","","","50","2023-02-10 14:47:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1349","17708-011","17708-011-3","2023-02-09","","150","0","","","","","500","2023-02-10 14:47:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1350","09472-005","09472-005-3","2023-02-10","","150","0","","","","","100","2023-02-10 14:48:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1351","06088-012","06088-012-3","2023-02-10","","125","0","","","","","125","2023-02-10 14:48:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1352","68601-005","68601-005-4","2023-02-10","","500","0","","","","","0","2023-02-10 14:48:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1353","71302-013","71302-013-3","2023-02-10","","188","0","","","","","186","2023-02-10 14:48:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1354","62113-005","62113-005-3","2023-02-10","","500","0","","","","","0","2023-02-10 14:48:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1355","92769-004","92769-004-3","2023-02-09","","200","0","","","","","400","2023-02-10 14:49:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1356","99242-001","99242-001-6","2023-02-09","","50","0","","","","","75","2023-02-10 14:49:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1357","17708-012","17708-012-3","2023-02-09","","150","0","","","","","500","2023-02-10 14:52:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1358","69036-002","69036-002-8","2023-02-09","","125","0","","","","","0","2023-02-10 14:52:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1359","43617-014","43617-014-3","2023-02-09","","200","0","","","","","400","2023-02-10 14:53:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1360","06018-004","06018-004-2","2023-02-09","","50","0","","","","","400","2023-02-10 14:53:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1361","17708-010","17708-010-3","2023-02-09","","125","0","","","","","125","2023-02-10 14:53:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1362","71302-016","71302-016-2","2023-02-09","","188","0","","","","","374","2023-02-10 14:54:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1363","60148-001","60148-001-2","2023-02-09","","900","0","","","","","50","2023-02-10 14:55:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1364","09472-006","09472-006-3","2023-02-10","","150","0","","","","","100","2023-02-10 14:58:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1365","06088-014","06088-014-2","2023-02-10","","250","0","","","","","500","2023-02-10 14:58:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1366","06088-013","06088-013-3","2023-02-10","","125","0","","","","","125","2023-02-10 14:58:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1367","68601-004","68601-004-5","2023-02-10","","500","0","","","","","0","2023-02-10 14:58:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1368","71302-014","71302-014-3","2023-02-10","","188","0","","","","","186","2023-02-10 14:59:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1369","62113-006","62113-006-3","2023-02-10","","500","0","","","","","0","2023-02-10 14:59:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1370","63744-002","63744-002-2","2023-02-10","","300","0","","","","","900","2023-02-10 14:59:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1371","93406-002","93406-002-8","2023-02-10","","250","0","","","","","0","2023-02-10 14:59:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1372","61500-010","61500-010-1","2023-02-10","","750","0","","","","","250","2023-02-10 15:00:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1373","09472-008","09472-008-3","2023-02-10","","125","0","","","","","125","2023-02-10 15:01:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1374","53518-006","53518-006-3","2023-02-10","","200","0","","","","","400","2023-02-10 15:01:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1375","93406-004","93406-004-4","2023-02-10","","125","0","","","","","375","2023-02-10 15:01:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1376","69036-001","69036-001-8","2023-02-09","","125","0","","","","","0","2023-02-10 15:02:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1377","43617-013","43617-013-3","2023-02-09","","200","0","","","","","400","2023-02-10 15:02:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1378","06018-003","06018-003-2","2023-02-09","","50","0","","","","","400","2023-02-10 15:02:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1379","17708-009","17708-009-3","2023-02-09","","125","0","","","","","125","2023-02-10 15:03:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1380","71302-015","71302-015-2","2023-02-09","","188","0","","","","","374","2023-02-10 15:03:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1381","61500-009","61500-009-1","2023-02-10","","750","0","","","","","250","2023-02-10 15:05:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1382","09472-007","09472-007-3","2023-02-10","","125","0","","","","","125","2023-02-10 15:06:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1383","53518-005","53518-005-3","2023-02-10","","200","0","","","","","400","2023-02-10 15:06:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1384","93406-003","93406-003-4","2023-02-10","","125","0","","","","","375","2023-02-10 15:06:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1385","92479-005","92479-005-3","2023-02-09","","125","0","","","","","0","2023-02-10 15:07:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1386","35831-001","35831-001-1","2023-02-09","","2000","0","","","","","1000","2023-02-10 15:08:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1387","09472-005","09472-005-4","2023-02-11","","100","25","","","","","0","2023-02-11 15:16:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1388","92479-007","92479-007-3","2023-02-11","","250","0","","","","","0","2023-02-11 15:17:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1389","98925-003","98925-003-4","2023-02-11","","125","0","","","","","0","2023-02-11 15:17:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1390","09472-006","09472-006-4","2023-02-11","","100","25","","","","","0","2023-02-11 15:17:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1391","92479-008","92479-008-3","2023-02-11","","250","0","","","","","0","2023-02-11 15:17:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1392","98925-004","98925-004-4","2023-02-11","","125","0","","","","","0","2023-02-11 15:18:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1393","92479-006","92479-006-3","2023-02-11","","125","0","","","","","0","2023-02-11 15:18:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1394","37736-002","37736-002-1","2023-02-11","","300","0","","","","","1200","2023-02-11 15:18:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1395","88480-001","88480-001-1","2023-02-11","","600","0","","","","","2400","2023-02-11 15:18:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1396","09472-008","09472-008-4","2023-02-11","","125","0","","","","","0","2023-02-11 15:19:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1397","68601-006","68601-006-4","2023-02-11","","500","0","","","","","0","2023-02-11 15:19:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1398","98925-006","98925-006-2","2023-02-11","","50","0","","","","","325","2023-02-11 15:19:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1399","09472-007","09472-007-4","2023-02-11","","125","0","","","","","0","2023-02-11 15:20:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1400","68601-003","68601-003-5","2023-02-11","","500","0","","","","","0","2023-02-11 15:21:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1401","98925-005","98925-005-2","2023-02-11","","50","0","","","","","325","2023-02-11 15:21:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1402","02568-001","02568-001-10","2023-02-12","","0","50","","","","","0","2023-02-13 09:18:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1403","53518-007","53518-007-1","2023-02-12","","200","0","","","","","800","2023-02-13 09:18:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1404","32629-001","32629-001-2","2023-02-12","","100","0","","","","","300","2023-02-13 09:18:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1405","02568-002","02568-002-10","2023-02-12","","0","50","","","","","0","2023-02-13 09:19:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1406","53518-008","53518-008-1","2023-02-12","","200","0","","","","","800","2023-02-13 09:19:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1407","32629-002","32629-002-2","2023-02-12","","100","0","","","","","300","2023-02-13 09:19:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1408","93406-004","93406-004-5","2023-02-12","","125","0","","","","","250","2023-02-13 09:19:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1409","06018-004","06018-004-3","2023-02-12","","50","0","","","","","350","2023-02-13 09:20:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1410","03766-010","03766-010-2","2023-02-12","","150","0","","","","","525","2023-02-13 09:20:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1411","93406-003","93406-003-5","2023-02-12","","125","0","","","","","250","2023-02-13 09:20:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1412","06018-003","06018-003-3","2023-02-12","","50","0","","","","","350","2023-02-13 09:23:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1413","03766-009","03766-009-2","2023-02-12","","150","0","","","","","525","2023-02-13 09:23:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1414","61500-006","61500-006-4","2023-02-13","","250","0","","","","","0","2023-02-13 15:49:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1415","71302-013","71302-013-4","2023-02-13","","186","2","","","","","0","2023-02-13 15:50:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1416","85042-009","85042-009-4","2023-02-13","","300","0","","","","","0","2023-02-13 15:50:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1417","89310-001","89310-001-1","2023-02-13","","125","0","","","","","125","2023-02-13 15:50:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1418","92769-003","92769-003-4","2023-02-13","","400","0","","","","","0","2023-02-13 15:50:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1419","77764-011","77764-011-3","2023-02-13","","100","0","","","","","375","2023-02-13 15:50:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1420","61500-005","61500-005-4","2023-02-13","","250","0","","","","","0","2023-02-13 15:51:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1421","71302-014","71302-014-4","2023-02-13","","186","2","","","","","0","2023-02-13 15:51:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1422","85042-010","85042-010-4","2023-02-13","","300","0","","","","","0","2023-02-13 15:52:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1423","89310-002","89310-002-1","2023-02-13","","125","0","","","","","125","2023-02-13 15:52:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1424","92769-004","92769-004-4","2023-02-13","","400","0","","","","","0","2023-02-13 15:52:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1425","77764-012","77764-012-3","2023-02-13","","100","0","","","","","375","2023-02-13 15:52:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1426","98925-006","98925-006-3","2023-02-13","","75","0","","","","","250","2023-02-13 15:53:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1427","92769-006","92769-006-2","2023-02-13","","200","0","","","","","200","2023-02-13 15:53:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1428","06018-004","06018-004-4","2023-02-13","","50","0","","","","","300","2023-02-13 15:53:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1429","77764-010","77764-010-3","2023-02-13","","100","0","","","","","340","2023-02-13 15:53:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1430","19827-002","19827-002-10","2023-02-13","","100","0","","","","","150","2023-02-13 15:54:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1431","98925-005","98925-005-3","2023-02-13","","75","0","","","","","250","2023-02-13 15:54:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1432","92769-005","92769-005-2","2023-02-13","","200","0","","","","","200","2023-02-13 15:54:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1433","06018-003","06018-003-4","2023-02-13","","50","0","","","","","300","2023-02-13 15:54:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1434","77764-009","77764-009-3","2023-02-13","","100","0","","","","","340","2023-02-13 15:55:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1435","19827-001","19827-001-10","2023-02-13","","100","0","","","","","150","2023-02-13 15:55:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1436","62113-007","62113-007-1","2023-02-14","","250","0","","","","","750","2023-02-15 08:12:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1438","62113-008","62113-008-1","2023-02-14","","250","0","","","","","750","2023-02-15 08:13:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1439","31571-002","31571-002-4","2023-02-14","","275","0","","","","","0","2023-02-15 08:14:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1440","22174-006","22174-006-2","2023-02-14","","50","0","","","","","375","2023-02-15 08:16:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1441","06088-011","06088-011-5","2023-02-14","","125","0","","","","","50","2023-02-15 08:17:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1442","43617-014","43617-014-4","2023-02-14","","200","0","","","","","200","2023-02-15 08:17:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1443","22174-005","22174-005-2","2023-02-14","","50","0","","","","","375","2023-02-15 08:18:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1444","06088-010","06088-010-5","2023-02-14","","125","0","","","","","50","2023-02-15 08:18:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1445","43617-013","43617-013-4","2023-02-14","","200","0","","","","","200","2023-02-15 08:19:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1446","92479-001","92479-001-4","2023-02-15","","125","0","","","","","0","2023-02-17 06:55:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1447","35831-001","35831-001-2","2023-02-15","","1000","2500","","","","","-2500","2023-02-17 06:55:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1448","71302-015","71302-015-3","2023-02-15","","188","0","","","","","186","2023-02-17 06:56:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1449","06018-003","06018-003-5","2023-02-15","","50","0","","","","","250","2023-02-17 06:57:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1450","92769-005","92769-005-3","2023-02-15","","100","0","","","","","100","2023-02-17 06:57:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1451","53518-005","53518-005-4","2023-02-15","","200","0","","","","","200","2023-02-17 06:57:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1452","69589-005","69589-005-4","2023-02-15","","125","0","","","","","0","2023-02-17 06:57:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1453","17708-011","17708-011-4","2023-02-15","","125","0","","","","","375","2023-02-17 06:58:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1454","29497-001","29497-001-1","2023-02-15","","600","0","","","","","400","2023-02-17 06:58:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1455","03766-007","03766-007-3","2023-02-15","","115","0","","","","","255","2023-02-17 06:59:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1456","09472-009","09472-009-1","2023-02-15","","125","0","","","","","375","2023-02-17 06:59:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1457","92479-002","92479-002-4","2023-02-15","","125","0","","","","","0","2023-02-17 07:00:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1458","71302-016","71302-016-3","2023-02-15","","188","0","","","","","186","2023-02-17 07:00:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1459","06018-004","06018-004-5","2023-02-15","","50","0","","","","","250","2023-02-17 07:01:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1460","92769-006","92769-006-3","2023-02-15","","100","0","","","","","100","2023-02-17 07:01:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1462","69589-006","69589-006-4","2023-02-15","","125","0","","","","","0","2023-02-17 07:02:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1463","37688-001","37688-001-2","2023-02-15","","750","0","","","","","1500","2023-02-17 07:02:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1464","63744-002","63744-002-3","2023-02-15","","300","0","","","","","600","2023-02-17 07:02:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1465","17708-012","17708-012-4","2023-02-15","","125","0","","","","","375","2023-02-17 07:02:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1466","29497-002","29497-002-1","2023-02-15","","600","0","","","","","400","2023-02-17 07:03:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1467","03766-008","03766-008-3","2023-02-15","","115","0","","","","","255","2023-02-17 07:03:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1468","09472-010","09472-010-1","2023-02-15","","125","0","","","","","375","2023-02-17 07:03:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1469","09472-011","09472-011-1","2023-02-16","","125","0","","","","","375","2023-02-17 07:04:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1470","71302-015","71302-015-4","2023-02-16","","186","2","","","","","0","2023-02-17 07:04:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1471","17396-007","17396-007-10","2023-02-16","","0","50","","","","","650","2023-02-17 07:05:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1472","62113-004","62113-004-4","2023-02-16","","400","0","","","","","400","2023-02-17 07:05:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1473","17396-005","17396-005-10","2023-02-16","","50","0","","","","","300","2023-02-17 07:05:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1474","06018-005","06018-005-1","2023-02-16","","25","0","","","","","475","2023-02-17 07:06:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1475","31571-003","31571-003-3","2023-02-16","","400","0","","","","","850","2023-02-17 07:06:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1476","55655-001","55655-001-1","2023-02-16","","250","0","","","","","750","2023-02-17 07:07:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1477","88480-001","88480-001-2","2023-02-16","","600","0","","","","","1800","2023-02-17 07:07:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1478","93406-005","93406-005-1","2023-02-16","","250","0","","","","","1750","2023-02-17 07:07:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1479","37736-002","37736-002-2","2023-02-16","","300","0","","","","","900","2023-02-17 07:07:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1480","09472-012","09472-012-1","2023-02-16","","125","0","","","","","375","2023-02-17 07:08:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1481","71302-016","71302-016-4","2023-02-16","","186","2","","","","","0","2023-02-17 07:08:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1482","17396-008","17396-008-10","2023-02-16","","0","50","","","","","650","2023-02-17 07:08:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1483","17396-006","17396-006-10","2023-02-16","","50","0","","","","","300","2023-02-17 07:09:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1484","06018-006","06018-006-1","2023-02-16","","25","0","","","","","475","2023-02-17 07:09:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1485","31571-004","31571-004-3","2023-02-16","","400","0","","","","","850","2023-02-17 07:09:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1486","06088-014","06088-014-3","2023-02-16","","250","0","","","","","250","2023-02-17 07:10:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1487","53518-006","53518-006-4","2023-02-15","","200","0","","","","","200","2023-02-17 10:24:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1488","31571-001","31571-001-4","2023-02-14","","275","0","","","","","0","2023-02-17 10:27:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1489","37688-002","37688-002-1","2023-02-17","","375","0","","","","","1125","2023-02-18 11:17:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1490","02568-001","02568-001-10","2023-02-17","","0","50","","","","","0","2023-02-18 11:17:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1491","06018-005","06018-005-2","2023-02-17","","25","0","","","","","450","2023-02-18 11:17:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1492","92479-009","92479-009-1","2023-02-17","","125","0","","","","","375","2023-02-18 11:18:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1493","53518-007","53518-007-2","2023-02-17","","200","0","","","","","600","2023-02-18 11:19:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1494","71302-017","71302-017-1","2023-02-17","","125","0","","","","","375","2023-02-18 11:19:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1495","06088-012","06088-012-4","2023-02-17","","125","0","","","","","0","2023-02-18 11:19:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1497","06018-003","06018-003-6","2023-02-17","","50","0","","","","","200","2023-02-18 11:30:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1498","69036-001","69036-001-9","2023-02-17","","0","125","","","","","0","2023-02-18 11:31:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1499","93406-003","93406-003-6","2023-02-17","","250","0","","","","","0","2023-02-18 11:31:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1500","17708-013","17708-013-1","2023-02-17","","125","0","","","","","375","2023-02-18 11:31:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1501","06088-010","06088-010-6","2023-02-17","","50","0","","","","","0","2023-02-18 11:32:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1502","69598-005","69598-005-3","2023-02-17","","15","0","","","","","154","2023-02-18 11:33:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1503","37688-003","37688-003-1","2023-02-17","","375","0","","","","","1125","2023-02-18 11:34:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1504","02568-002","02568-002-10","2023-02-17","","0","50","","","","","0","2023-02-18 11:34:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1505","06018-004","06018-004-6","2023-02-17","","50","0","","","","","200","2023-02-18 11:35:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1506","06018-006","06018-006-2","2023-02-17","","25","0","","","","","450","2023-02-18 11:35:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1507","92479-010","92479-010-1","2023-02-17","","125","0","","","","","375","2023-02-18 11:36:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1508","53518-008","53518-008-2","2023-02-17","","200","0","","","","","600","2023-02-18 11:36:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1509","71302-018","71302-018-1","2023-02-17","","125","0","","","","","375","2023-02-18 11:37:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1510","06088-013","06088-013-4","2023-02-17","","125","0","","","","","0","2023-02-18 11:38:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1511","69598-006","69598-006-3","2023-02-17","","15","0","","","","","154","2023-02-18 11:39:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1512","69036-002","69036-002-9","2023-02-17","","0","125","","","","","0","2023-02-18 11:40:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1513","93406-004","93406-004-6","2023-02-17","","250","0","","","","","0","2023-02-18 11:40:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1514","17708-014","17708-014-1","2023-02-17","","125","0","","","","","375","2023-02-18 11:41:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1515","06088-011","06088-011-6","2023-02-17","","50","0","","","","","0","2023-02-18 11:41:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1516","32629-001","32629-001-3","2023-02-18","","100","0","","","","","200","2023-02-18 11:48:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1517","68601-007","68601-007-1","2023-02-18","","625","0","","","","","1875","2023-02-18 11:49:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1518","06018-005","06018-005-3","2023-02-18","","25","0","","","","","425","2023-02-18 11:50:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1519","85042-011","85042-011-1","2023-02-18","","150","0","","","","","600","2023-02-18 11:50:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1520","92769-009","92769-009-1","2023-02-18","","200","0","","","","","800","2023-02-18 11:50:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1521","63744-003","63744-003-1","2023-02-18","","100","0","","","","","400","2023-02-18 11:51:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1522","31571-003","31571-003-4","2023-02-18","","225","0","","","","","625","2023-02-18 11:51:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1523","31571-005","31571-005-1","2023-02-18","","850","0","","","","","1650","2023-02-18 11:51:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1524","32506-001","32506-001-10","2023-02-18","","50","0","","","","","50","2023-02-18 11:51:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1525","92769-005","92769-005-4","2023-02-18","","100","0","","","","","0","2023-02-18 11:52:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1526","69598-005","69598-005-4","2023-02-18","","25","0","","","","","129","2023-02-18 11:52:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1527","98925-005","98925-005-4","2023-02-18","","125","0","","","","","125","2023-02-18 11:52:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1528","32629-002","32629-002-3","2023-02-18","","100","0","","","","","200","2023-02-18 16:18:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1529","68601-008","68601-008-1","2023-02-18","","625","0","","","","","1875","2023-02-18 16:19:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1530","06018-006","06018-006-3","2023-02-18","","25","0","","","","","425","2023-02-18 16:19:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1531","85042-012","85042-012-1","2023-02-18","","150","0","","","","","600","2023-02-18 16:19:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1532","92769-010","92769-010-1","2023-02-18","","200","0","","","","","800","2023-02-18 16:20:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1534","63744-004","63744-004-1","2023-02-18","","100","0","","","","","400","2023-02-18 16:20:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1535","31571-004","31571-004-4","2023-02-18","","225","0","","","","","625","2023-02-18 16:21:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1536","31571-006","31571-006-1","2023-02-18","","850","0","","","","","1650","2023-02-18 16:21:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1537","32506-002","32506-002-10","2023-02-18","","50","0","","","","","50","2023-02-18 16:21:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1538","92769-006","92769-006-4","2023-02-18","","100","0","","","","","0","2023-02-18 16:22:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1539","69598-006","69598-006-4","2023-02-18","","25","0","","","","","129","2023-02-18 16:23:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1540","98925-006","98925-006-4","2023-02-18","","125","0","","","","","125","2023-02-18 16:23:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1541","37736-001","37736-001-4","2023-02-18","","250","0","","","","","0","2023-02-18 16:23:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1542","06088-014","06088-014-4","2023-02-18","","250","0","","","","","0","2023-02-18 16:25:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1543","19827-001","19827-001-10","2023-02-19","","100","0","","","","","50","2023-02-19 15:23:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1544","43617-013","43617-013-5","2023-02-19","","200","0","","","","","0","2023-02-19 15:23:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1545","06018-003","06018-003-7","2023-02-19","","50","0","","","","","150","2023-02-19 15:24:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1546","68601-009","68601-009-1","2023-02-19","","500","0","","","","","2000","2023-02-19 15:24:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1547","19827-002","19827-002-10","2023-02-19","","100","0","","","","","50","2023-02-19 15:24:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1548","43617-014","43617-014-5","2023-02-19","","200","0","","","","","0","2023-02-19 15:24:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1549","06018-004","06018-004-7","2023-02-19","","50","0","","","","","150","2023-02-19 15:25:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1550","68601-010","68601-010-1","2023-02-19","","500","0","","","","","2000","2023-02-19 15:25:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1551","93406-005","93406-005-2","2023-02-19","","250","0","","","","","1500","2023-02-19 15:25:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1552","06018-006","06018-006-4","2023-02-19","","25","0","","","","","375","2023-02-19 15:25:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1553","06018-005","06018-005-4","2023-02-19","","25","0","","","","","400","2023-02-19 15:26:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1554","03766-009","03766-009-3","2023-02-20","","200","0","","","","","325","2023-02-21 05:07:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1555","55305-001","55305-001-1","2023-02-20","","125","0","","","","","375","2023-02-21 05:07:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1556","92769-007","92769-007-1","2023-02-20","","100","0","","","","","400","2023-02-21 05:07:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1557","68601-009","68601-009-2","2023-02-20","","125","0","","","","","1875","2023-02-21 05:08:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1558","53518-005","53518-005-5","2023-02-20","","200","0","","","","","0","2023-02-21 05:08:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1559","32629-003","32629-003-1","2023-02-20","","100","0","","","","","400","2023-02-21 05:09:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1560","17571-001","17571-001-1","2023-02-20","","500","0","","","","","1500","2023-02-21 05:10:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1561","62113-008","62113-008-2","2023-02-20","","250","0","","","","","500","2023-02-21 05:10:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1562","74215-003","74215-003-1","2023-02-20","","125","0","","","","","375","2023-02-21 05:10:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1563","03766-010","03766-010-3","2023-02-20","","200","0","","","","","325","2023-02-21 05:11:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1564","55305-002","55305-002-1","2023-02-20","","125","0","","","","","375","2023-02-21 05:12:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1565","92769-008","92769-008-1","2023-02-20","","100","0","","","","","400","2023-02-21 05:12:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1566","68601-010","68601-010-2","2023-02-20","","125","0","","","","","1875","2023-02-21 05:13:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1567","53518-006","53518-006-5","2023-02-20","","200","0","","","","","0","2023-02-21 05:14:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1568","32629-004","32629-004-1","2023-02-20","","100","0","","","","","400","2023-02-21 05:14:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1569","06018-006","06018-006-5","2023-02-20","","25","0","","","","","375","2023-02-21 05:20:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1570","06018-005","06018-005-5","2023-02-20","","25","0","","","","","375","2023-02-21 05:20:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1571","62113-007","62113-007-2","2023-02-20","","250","0","","","","","500","2023-02-21 05:21:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1572","92479-011","92479-011-1","2023-02-21","","125","0","","","","","375","2023-02-22 05:12:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1573","74215-002","74215-002-1","2023-02-21","","125","0","","","","","375","2023-02-22 05:12:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1574","17396-009","17396-009-4","2023-02-21","","125","0","","","","","725","2023-02-22 05:12:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1575","09472-013","09472-013-1","2023-02-21","","0","100","","","","","250","2023-02-22 05:14:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1576","17396-007","17396-007-10","2023-02-21","","650","100","","","","","0","2023-02-22 05:15:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1577","03766-009","03766-009-4","2023-02-21","","150","0","","","","","175","2023-02-22 05:15:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1578","17708-009","17708-009-4","2023-02-21","","125","0","","","","","0","2023-02-22 05:15:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1579","92479-013","92479-013-1","2023-02-21","","125","0","","","","","375","2023-02-22 05:16:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1580","06018-005","06018-005-6","2023-02-21","","25","0","","","","","350","2023-02-22 05:16:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1581","62113-004","62113-004-5","2023-02-21","","400","0","","","","","0","2023-02-22 05:17:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1582","02568-001","02568-001-10","2023-02-21","","0","25","","","","","0","2023-02-22 05:17:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1583","17396-005","17396-005-10","2023-02-21","","300","200","","","","","0","2023-02-22 05:17:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1584","61273-001","61273-001-1","2023-02-21","","125","0","","","","","375","2023-02-22 05:18:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1585","03766-007","03766-007-4","2023-02-21","","50","0","","","","","205","2023-02-22 05:27:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1586","92479-009","92479-009-2","2023-02-21","","125","0","","","","","250","2023-02-22 05:27:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1587","31571-003","31571-003-5","2023-02-21","","625","0","","","","","0","2023-02-22 05:27:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1588","17396-008","17396-008-10","2023-02-21","","650","100","","","","","0","2023-02-22 05:28:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1589","03766-010","03766-010-4","2023-02-21","","150","0","","","","","175","2023-02-22 05:28:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1590","17708-010","17708-010-4","2023-02-21","","125","0","","","","","0","2023-02-22 05:28:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1591","92479-014","92479-014-1","2023-02-21","","125","0","","","","","375","2023-02-22 05:29:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1592","09472-014","09472-014-1","2023-02-21","","0","100","","","","","250","2023-02-22 06:26:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1593","16915-001","16915-001-1","2023-02-21","","125","0","","","","","375","2023-02-22 06:26:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1594","55655-001","55655-001-2","2023-02-21","","220","0","","","","","530","2023-02-22 06:27:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1595","63744-002","63744-002-4","2023-02-21","","600","0","","","","","0","2023-02-22 06:27:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1596","31571-004","31571-004-5","2023-02-21","","625","0","","","","","0","2023-02-22 06:28:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1597","02568-002","02568-002-10","2023-02-21","","0","25","","","","","0","2023-02-22 06:28:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1598","17396-006","17396-006-10","2023-02-21","","300","200","","","","","0","2023-02-22 06:28:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1599","61273-002","61273-002-1","2023-02-21","","125","0","","","","","375","2023-02-22 06:43:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1600","03766-008","03766-008-4","2023-02-21","","50","0","","","","","205","2023-02-22 06:43:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1601","06018-006","06018-006-6","2023-02-21","","25","0","","","","","350","2023-02-22 06:44:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1602","92479-010","92479-010-2","2023-02-21","","125","0","","","","","250","2023-02-22 06:44:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1603","06018-005","06018-005-7","2023-02-22","","25","0","","","","","325","2023-02-23 05:54:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1604","17708-011","17708-011-5","2023-02-22","","100","0","","","","","275","2023-02-23 05:54:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1605","02568-001","02568-001-10","2023-02-22","","0","25","","","","","0","2023-02-23 06:10:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1606","53518-007","53518-007-3","2023-02-22","","200","0","","","","","400","2023-02-23 06:11:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1607","32629-001","32629-001-4","2023-02-22","","100","0","","","","","100","2023-02-23 06:12:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1608","03766-007","03766-007-5","2023-02-22","","30","0","","","","","175","2023-02-23 06:19:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1609","06018-003","06018-003-8","2023-02-22","","50","0","","","","","100","2023-02-23 06:20:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1610","71302-019","71302-019-1","2023-02-22","","125","0","","","","","375","2023-02-23 06:20:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1611","06088-017","06088-017-1","2023-02-22","","125","0","","","","","375","2023-02-23 06:20:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1612","06018-004","06018-004-8","2023-02-22","","50","0","","","","","100","2023-02-23 06:21:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1613","06018-006","06018-006-7","2023-02-22","","25","0","","","","","325","2023-02-23 06:21:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1614","17708-012","17708-012-5","2023-02-22","","100","0","","","","","275","2023-02-23 06:24:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1615","02568-002","02568-002-10","2023-02-22","","0","25","","","","","0","2023-02-23 07:09:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1616","53518-008","53518-008-3","2023-02-22","","200","0","","","","","400","2023-02-23 07:10:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1617","32629-002","32629-002-4","2023-02-22","","100","0","","","","","100","2023-02-23 07:10:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1618","03766-008","03766-008-5","2023-02-22","","30","0","","","","","175","2023-02-23 07:10:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1619","37688-001","37688-001-3","2023-02-22","","150","0","","","","","1350","2023-02-23 07:11:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1620","55655-001","55655-001-3","2023-02-22","","30","0","","","","","500","2023-02-23 09:20:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1622","16285-001","16285-001-1","2023-02-22","","375","0","","","","","1125","2023-02-23 09:47:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1625","71302-020","71302-020-1","2023-02-22","","125","0","","","","","375","2023-02-23 09:50:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1626","06088-018","06088-018-1","2023-02-22","","125","0","","","","","375","2023-02-23 09:50:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1628","37688-002","37688-002-2","2023-02-23","","375","0","","","","","750","2023-02-24 09:11:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1629","37736-003","37736-003-1","2023-02-23","","100","0","","","","","400","2023-02-24 09:11:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1630","17708-011","17708-011-6","2023-02-23","","275","0","","","","","0","2023-02-24 09:11:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1631","92769-009","92769-009-2","2023-02-23","","200","0","","","","","600","2023-02-24 09:12:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1632","85042-011","85042-011-2","2023-02-23","","150","0","","","","","450","2023-02-24 09:12:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1633","55655-002","55655-002-1","2023-02-23","","125","0","","","","","375","2023-02-24 09:17:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1634","06088-015","06088-015-1","2023-02-23","","125","0","","","","","375","2023-02-24 09:17:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1635","38570-001","38570-001-1","2023-02-23","","100","0","","","","","400","2023-02-24 09:18:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1636","92479-011","92479-011-2","2023-02-23","","125","0","","","","","250","2023-02-24 09:18:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1637","69589-009","69589-009-1","2023-02-23","","250","0","","","","","750","2023-02-24 09:23:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1638","85042-013","85042-013-1","2023-02-23","","188","0","","","","","562","2023-02-24 09:24:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1639","55305-001","55305-001-2","2023-02-23","","350","0","","","","","25","2023-02-24 09:25:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1641","92769-007","92769-007-2","2023-02-23","","100","0","","","","","300","2023-02-24 09:26:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1642","17708-013","17708-013-2","2023-02-23","","125","0","","","","","250","2023-02-24 09:26:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1643","06018-003","06018-003-9","2023-02-23","","50","0","","","","","50","2023-02-24 09:27:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1644","19827-001","19827-001-10","2023-02-23","","50","50","","","","","-50","2023-02-24 09:28:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1645","92479-012","92479-012-1","2023-02-23","","250","0","","","","","250","2023-02-24 09:28:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1646","17396-010","17396-010-4","2023-02-23","","125","0","","","","","725","2023-02-24 09:29:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1650","68601-012","68601-012-1","2023-02-23","","1500","0","","","","","0","2023-02-24 09:33:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1651","37688-003","37688-003-2","2023-02-23","","375","0","","","","","750","2023-02-24 09:33:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1652","37688-001","37688-001-4","2023-02-23","","600","0","","","","","750","2023-02-24 09:34:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1653","37736-004","37736-004-1","2023-02-23","","100","0","","","","","400","2023-02-24 09:34:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1654","17708-012","17708-012-6","2023-02-23","","275","0","","","","","0","2023-02-24 09:35:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1655","92769-010","92769-010-2","2023-02-23","","200","0","","","","","600","2023-02-24 09:35:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1656","85042-012","85042-012-2","2023-02-23","","150","0","","","","","450","2023-02-24 09:35:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1657","55655-003","55655-003-1","2023-02-23","","125","0","","","","","375","2023-02-24 09:36:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1658","06088-016","06088-016-1","2023-02-23","","125","0","","","","","375","2023-02-24 09:36:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1659","38570-002","38570-002-1","2023-02-23","","100","0","","","","","400","2023-02-24 09:36:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1660","69589-010","69589-010-1","2023-02-23","","250","0","","","","","750","2023-02-24 09:39:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1661","85042-014","85042-014-1","2023-02-23","","188","0","","","","","562","2023-02-24 09:39:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1662","55305-002","55305-002-2","2023-02-23","","350","0","","","","","25","2023-02-24 09:40:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1663","92769-008","92769-008-2","2023-02-23","","100","0","","","","","300","2023-02-24 09:41:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1664","17708-014","17708-014-2","2023-02-23","","125","0","","","","","250","2023-02-24 09:43:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1665","06018-004","06018-004-9","2023-02-23","","50","0","","","","","50","2023-02-24 09:44:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1666","19827-002","19827-002-10","2023-02-23","","50","50","","","","","-50","2023-02-24 09:44:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1667","85042-015","85042-015-1","2023-02-23","","250","0","","","","","0","2023-02-24 09:46:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1668","68601-011","68601-011-1","2023-02-23","","1500","0","","","","","0","2023-02-24 09:50:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1669","85042-016","85042-016-1","2023-02-23","","250","0","","","","","0","2023-02-24 10:11:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1670","06018-005","06018-005-8","2023-02-24","","50","0","","","","","275","2023-02-25 06:44:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1671","69589-011","69589-011-1","2023-02-24","","250","0","","","","","750","2023-02-25 06:44:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1672","02568-001","02568-001-10","2023-02-24","","0","50","","","","","0","2023-02-25 06:44:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1673","06093-001","06093-001-1","2023-02-24","","500","100","","","","","4500","2023-02-25 06:44:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1674","09472-009","09472-009-2","2023-02-24","","350","0","","","","","25","2023-02-25 06:45:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1675","63744-003","63744-003-2","2023-02-24","","100","0","","","","","300","2023-02-25 06:45:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1676","09472-013","09472-013-2","2023-02-24","","225","0","","","","","25","2023-02-25 06:46:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1677","93406-008","93406-008-1","2023-02-24","","125","0","","","","","875","2023-02-25 06:46:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1678","06018-006","06018-006-8","2023-02-24","","50","0","","","","","275","2023-02-25 06:49:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1679","69589-012","69589-012-1","2023-02-24","","250","0","","","","","750","2023-02-25 06:50:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1680","02568-002","02568-002-10","2023-02-24","","0","50","","","","","0","2023-02-25 06:51:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1681","09472-010","09472-010-2","2023-02-24","","350","0","","","","","25","2023-02-25 07:12:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1682","63744-004","63744-004-2","2023-02-24","","100","0","","","","","300","2023-02-25 07:13:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1683","93406-005","93406-005-3","2023-02-24","","250","0","","","","","1250","2023-02-25 07:13:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1684","03766-010","03766-010-5","2023-02-24","","0","50","","","","","125","2023-02-25 07:14:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1685","69036-002","69036-002-10","2023-02-24","","0","250","","","","","0","2023-02-25 07:15:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1686","93406-009","93406-009-1","2023-02-24","","125","0","","","","","875","2023-02-25 07:15:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1687","09472-014","09472-014-2","2023-02-24","","225","0","","","","","25","2023-02-25 07:16:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1688","37688-004","37688-004-1","2023-02-25","","0","200","","","","","1000","2023-02-25 11:58:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1689","93406-008","93406-008-2","2023-02-25","","125","0","","","","","750","2023-02-25 11:59:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1690","03766-009","03766-009-5","2023-02-25","","0","50","","","","","175","2023-02-25 15:40:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1691","69036-001","69036-001-10","2023-02-25","","0","125","","","","","0","2023-02-25 15:41:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1692","93406-006","93406-006-1","2023-02-25","","250","0","","","","","750","2023-02-25 15:41:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1693","92769-007","92769-007-3","2023-02-25","","100","0","","","","","200","2023-02-25 15:42:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1694","98925-005","98925-005-5","2023-02-25","","125","0","","","","","0","2023-02-25 15:42:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1695","32629-003","32629-003-2","2023-02-25","","100","0","","","","","300","2023-02-25 15:42:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1696","61500-009","61500-009-2","2023-02-25","","250","0","","","","","0","2023-02-25 15:42:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1697","37688-005","37688-005-1","2023-02-25","","0","200","","","","","1000","2023-02-25 15:43:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1698","93406-009","93406-009-2","2023-02-25","","125","0","","","","","750","2023-02-25 15:43:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1699","93406-007","93406-007-1","2023-02-25","","250","0","","","","","750","2023-02-25 15:43:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1700","92769-008","92769-008-3","2023-02-25","","100","0","","","","","200","2023-02-25 15:44:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1701","98925-006","98925-006-5","2023-02-25","","125","0","","","","","0","2023-02-25 15:44:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1702","32629-004","32629-004-2","2023-02-25","","100","0","","","","","300","2023-02-25 15:44:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1703","61500-010","61500-010-2","2023-02-25","","250","0","","","","","0","2023-02-25 15:44:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1704","59571-001","59571-001-1","2023-02-25","","200","0","","","","","0","2023-02-25 15:45:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1705","62113-008","62113-008-3","2023-02-25","","250","0","","","","","250","2023-02-25 15:45:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1706","99242-001","99242-001-7","2023-02-25","","50","0","","","","","25","2023-02-25 15:45:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1707","98925-008","98925-008-1","2023-02-25","","250","0","","","","","0","2023-02-25 15:45:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1708","68601-008","68601-008-2","2023-02-25","","625","0","","","","","1250","2023-02-25 15:45:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1709","03766-008","03766-008-6","2023-02-25","","100","0","","","","","75","2023-02-25 15:46:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1710","06018-006","06018-006-9","2023-02-25","","25","0","","","","","250","2023-02-25 15:46:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1711","06018-005","06018-005-9","2023-02-25","","25","0","","","","","250","2023-02-25 15:46:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1712","98925-007","98925-007-1","2023-02-25","","250","0","","","","","0","2023-02-25 15:46:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1713","99242-002","99242-002-7","2023-02-25","","50","0","","","","","25","2023-02-25 15:47:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1714","68601-007","68601-007-2","2023-02-25","","625","0","","","","","1250","2023-02-25 15:47:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1715","03766-007","03766-007-6","2023-02-25","","100","0","","","","","75","2023-02-25 15:47:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1716","62113-007","62113-007-3","2023-02-25","","250","0","","","","","250","2023-02-25 15:47:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1717","62113-004","62113-004-6","2023-02-25","","0","400","","","","","0","2023-02-25 15:55:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1718","68601-009","68601-009-3","2023-02-26","","625","0","","","","","1250","2023-02-27 08:16:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1719","95385-001","95385-001-1","2023-02-26","","100","0","","","","","200","2023-02-27 08:16:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1720","95997-001","95997-001-1","2023-02-26","","50","0","","","","","450","2023-02-27 08:19:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1721","92479-013","92479-013-2","2023-02-26","","125","0","","","","","250","2023-02-27 08:20:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1722","06018-005","06018-005-10","2023-02-26","","25","0","","","","","225","2023-02-27 08:20:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1723","55305-003","55305-003-1","2023-02-26","","125","0","","","","","375","2023-02-27 08:20:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1724","61273-001","61273-001-2","2023-02-26","","125","0","","","","","250","2023-02-27 08:21:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1725","07639-002","07639-002-1","2023-02-26","","500","0","","","","","1000","2023-02-27 08:21:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1726","92479-009","92479-009-3","2023-02-26","","125","0","","","","","125","2023-02-27 08:21:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1727","02568-001","02568-001-10","2023-02-26","","0","75","","","","","0","2023-02-27 08:21:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1728","68601-010","68601-010-3","2023-02-26","","625","0","","","","","1250","2023-02-27 08:22:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1729","92479-014","92479-014-2","2023-02-26","","125","0","","","","","250","2023-02-27 08:22:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1730","55655-001","55655-001-4","2023-02-26","","250","0","","","","","250","2023-02-27 08:23:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1731","74215-003","74215-003-2","2023-02-26","","125","0","","","","","250","2023-02-27 08:23:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1732","06088-019","06088-019-1","2023-02-26","","250","0","","","","","750","2023-02-27 08:23:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1733","06018-006","06018-006-10","2023-02-26","","25","0","","","","","225","2023-02-27 08:24:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1734","55305-004","55305-004-1","2023-02-26","","125","0","","","","","375","2023-02-27 08:24:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1735","61273-002","61273-002-2","2023-02-26","","125","0","","","","","250","2023-02-27 08:24:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1736","07639-001","07639-001-1","2023-02-26","","500","0","","","","","1000","2023-02-27 08:24:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1737","92479-010","92479-010-3","2023-02-26","","125","0","","","","","125","2023-02-27 08:25:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1738","02568-002","02568-002-10","2023-02-26","","0","75","","","","","0","2023-02-27 08:25:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1739","5019-001","5019-001-1","2023-02-27","","0","7200","","","","","36000","2023-02-27 09:05:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1740","03766-009","03766-009-6","2023-02-27","","0","50","","","","","175","2023-02-27 15:08:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1741","85042-013","85042-013-2","2023-02-27","","188","0","","","","","374","2023-02-27 15:08:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1742","05561-001","05561-001-1","2023-02-27","","100","0","","","","","100","2023-02-27 15:08:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1743","09472-011","09472-011-2","2023-02-27","","325","0","","","","","50","2023-02-27 15:08:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1744","06018-005","06018-005-10","2023-02-27","","25","0","","","","","200","2023-02-27 15:09:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1745","53518-007","53518-007-4","2023-02-27","","200","0","","","","","200","2023-02-27 15:09:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1746","71302-017","71302-017-2","2023-02-27","","125","0","","","","","250","2023-02-27 15:09:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1747","32629-001","32629-001-5","2023-02-27","","100","0","","","","","0","2023-02-27 15:10:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1748","92479-009","92479-009-4","2023-02-27","","125","0","","","","","0","2023-02-27 15:10:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1749","31571-005","31571-005-2","2023-02-27","","825","0","","","","","825","2023-02-27 15:10:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1750","31571-007","31571-007-1","2023-02-27","","175","0","","","","","2325","2023-02-27 15:10:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1751","48030-001","48030-001-1","2023-02-27","","200","0","","","","","1800","2023-02-27 15:11:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1752","16285-001","16285-001-2","2023-02-27","","375","0","","","","","750","2023-02-27 15:11:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1753","17571-001","17571-001-2","2023-02-27","","500","0","","","","","1000","2023-02-27 15:11:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1754","93406-005","93406-005-4","2023-02-27","","250","0","","","","","1000","2023-02-27 15:11:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1755","03766-010","03766-010-6","2023-02-27","","0","50","","","","","125","2023-02-27 15:11:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1756","85042-014","85042-014-2","2023-02-27","","188","0","","","","","374","2023-02-27 15:12:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1757","09472-012","09472-012-2","2023-02-27","","325","0","","","","","50","2023-02-27 15:13:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1758","06018-006","06018-006-10","2023-02-27","","25","0","","","","","200","2023-02-27 15:13:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1759","53518-008","53518-008-4","2023-02-27","","200","0","","","","","200","2023-02-27 15:13:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1760","71302-018","71302-018-2","2023-02-27","","125","0","","","","","250","2023-02-27 15:13:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1761","32629-002","32629-002-5","2023-02-27","","100","0","","","","","0","2023-02-27 15:14:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1762","92479-010","92479-010-4","2023-02-27","","125","0","","","","","0","2023-02-27 15:14:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1763","31571-006","31571-006-2","2023-02-27","","825","0","","","","","825","2023-02-27 15:14:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1764","31571-008","31571-008-1","2023-02-27","","175","0","","","","","2325","2023-02-27 15:14:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1765","63744-005","63744-005-1","2023-02-27","","100","0","","","","","500","2023-02-28 06:26:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1766","63744-006","63744-006-1","2023-02-27","","100","0","","","","","500","2023-02-28 06:26:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1767","03766-009","03766-009-7","2023-02-28","","0","25","","","","","175","2023-02-28 16:04:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1768","71302-019","71302-019-2","2023-02-28","","125","0","","","","","250","2023-02-28 16:06:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1769","16285-002","16285-002-1","2023-02-28","","125","0","","","","","375","2023-02-28 16:07:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1770","19827-001","19827-001-10","2023-02-28","","0","100","","","","","-100","2023-02-28 16:07:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1771","17708-013","17708-013-3","2023-02-28","","125","0","","","","","125","2023-02-28 16:07:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1772","06018-005","06018-005-10","2023-02-28","","25","0","","","","","175","2023-02-28 16:08:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1773","85042-011","85042-011-3","2023-02-28","","150","0","","","","","300","2023-02-28 16:09:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1774","92769-009","92769-009-3","2023-02-28","","200","0","","","","","400","2023-02-28 16:10:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1775","37736-003","37736-003-2","2023-02-28","","100","0","","","","","300","2023-02-28 16:10:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1776","44800-003","44800-003-1","2023-02-28","","625","0","","","","","1875","2023-02-28 16:10:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1777","55655-002","55655-002-2","2023-02-28","","125","0","","","","","250","2023-02-28 16:11:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1778","38570-001","38570-001-2","2023-02-28","","100","0","","","","","300","2023-02-28 16:11:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1779","02568-001","02568-001-10","2023-02-28","","0","50","","","","","0","2023-02-28 16:11:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1780","37736-005","37736-005-1","2023-02-28","","100","0","","","","","400","2023-02-28 16:12:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1781","71302-021","71302-021-1","2023-02-28","","188","0","","","","","312","2023-02-28 16:12:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1782","92479-015","92479-015-1","2023-02-28","","0","50","","","","","500","2023-02-28 16:12:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1783","37736-007","37736-007-1","2023-02-05","","200","0","","","","","100","2023-02-28 16:14:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1784","86028-001","86028-001-1","2023-02-28","","0","100","","","","","500","2023-02-28 16:15:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1785","37688-001","37688-001-5","2023-02-28","","750","0","","","","","0","2023-02-28 16:15:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1786","03766-010","03766-010-7","2023-02-28","","0","25","","","","","175","2023-02-28 16:15:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1787","71302-020","71302-020-2","2023-02-28","","125","0","","","","","250","2023-02-28 16:16:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1788","16285-003","16285-003-1","2023-02-28","","125","0","","","","","375","2023-02-28 16:16:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1789","19827-002","19827-002-10","2023-02-28","","0","100","","","","","-100","2023-02-28 16:16:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1790","17708-014","17708-014-3","2023-02-28","","125","0","","","","","125","2023-02-28 16:17:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1791","06018-006","06018-006-10","2023-02-28","","25","0","","","","","175","2023-02-28 16:18:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1792","85042-012","85042-012-3","2023-02-28","","150","0","","","","","300","2023-02-28 16:18:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1793","92769-010","92769-010-3","2023-02-28","","200","0","","","","","400","2023-02-28 16:18:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1794","37736-004","37736-004-2","2023-02-28","","100","0","","","","","300","2023-02-28 16:19:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1795","44800-004","44800-004-1","2023-02-28","","625","0","","","","","1875","2023-02-28 16:19:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1796","55655-003","55655-003-2","2023-02-28","","125","0","","","","","250","2023-02-28 16:20:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1797","38570-002","38570-002-2","2023-02-28","","100","0","","","","","300","2023-02-28 16:20:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1798","02568-002","02568-002-10","2023-02-28","","0","50","","","","","0","2023-02-28 16:20:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1799","37736-006","37736-006-1","2023-02-28","","100","0","","","","","400","2023-02-28 16:21:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1800","71302-022","71302-022-1","2023-02-28","","188","0","","","","","312","2023-02-28 16:21:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1801","92479-016","92479-016-1","2023-02-28","","0","50","","","","","500","2023-02-28 16:21:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1802","93406-008","93406-008-3","2023-03-01","","250","0","","","","","500","2023-03-01 15:15:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1803","53518-011","53518-011-1","2023-03-01","","1000","0","","","","","0","2023-03-01 15:15:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1804","92479-015","92479-015-2","2023-03-01","","0","100","","","","","500","2023-03-01 15:15:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1805","06018-005","06018-005-10","2023-03-01","","25","0","","","","","150","2023-03-01 15:16:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1806","31571-007","31571-007-2","2023-03-01","","450","0","","","","","1875","2023-03-01 15:16:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1807","03766-007","03766-007-7","2023-03-01","","75","75","","","","","0","2023-03-01 15:17:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1808","06088-017","06088-017-2","2023-03-01","","125","0","","","","","250","2023-03-01 15:19:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1809","69589-009","69589-009-2","2023-03-01","","250","0","","","","","500","2023-03-01 15:20:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1810","03766-009","03766-009-8","2023-03-01","","0","100","","","","","175","2023-03-01 15:21:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1811","63744-007","63744-007-1","2023-03-01","","400","0","","","","","1600","2023-03-01 15:21:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1812","93406-009","93406-009-3","2023-03-01","","250","0","","","","","500","2023-03-01 15:21:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1813","53518-012","53518-012-1","2023-03-01","","1000","0","","","","","0","2023-03-01 15:22:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1814","92479-016","92479-016-2","2023-03-01","","0","100","","","","","500","2023-03-01 15:22:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1815","06018-006","06018-006-10","2023-03-01","","25","0","","","","","150","2023-03-01 15:22:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1816","03766-008","03766-008-7","2023-03-01","","75","75","","","","","0","2023-03-01 15:23:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1817","06088-018","06088-018-2","2023-03-01","","125","0","","","","","250","2023-03-01 15:23:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1818","69589-010","69589-010-2","2023-03-01","","250","0","","","","","500","2023-03-01 15:24:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1819","31571-008","31571-008-2","2023-03-01","","450","0","","","","","1875","2023-03-01 15:24:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1820","03766-010","03766-010-8","2023-03-01","","0","100","","","","","175","2023-03-01 15:24:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1821","47877-001","47877-001-1","2023-03-02","","0","400","","","","","1000","2023-03-02 14:44:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1822","68601-013","68601-013-1","2023-03-02","","1500","0","","","","","0","2023-03-02 14:44:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1823","92479-015","92479-015-3","2023-03-02","","0","100","","","","","500","2023-03-02 14:44:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1824","06018-005","06018-005-10","2023-03-02","","25","0","","","","","125","2023-03-02 14:44:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1825","61500-011","61500-011-1","2023-03-02","","375","0","","","","","1125","2023-03-02 14:45:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1826","03766-007","03766-007-8","2023-03-02","","0","100","","","","","0","2023-03-02 14:45:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1827","63744-003","63744-003-3","2023-03-02","","100","0","","","","","200","2023-03-02 14:45:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1828","55305-003","55305-003-2","2023-03-02","","350","0","","","","","25","2023-03-02 14:45:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1829","62113-007","62113-007-4","2023-03-02","","250","0","","","","","0","2023-03-02 14:46:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1830","62113-009","62113-009-1","2023-03-02","","400","0","","","","","1600","2023-03-02 14:46:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1831","61500-013","61500-013-1","2023-03-02","","250","0","","","","","750","2023-03-02 14:46:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1832","92769-011","92769-011-1","2023-03-02","","200","0","","","","","800","2023-03-02 14:46:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1833","92769-007","92769-007-4","2023-03-02","","100","0","","","","","100","2023-03-02 14:47:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1834","32629-003","32629-003-3","2023-03-02","","100","0","","","","","200","2023-03-02 14:47:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1835","93406-005","93406-005-5","2023-03-02","","250","0","","","","","750","2023-03-02 14:48:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1836","74215-003","74215-003-3","2023-03-02","","250","0","","","","","0","2023-03-02 14:48:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1837","85678-001","85678-001-1","2023-03-02","","4000","0","","","","","0","2023-03-02 14:48:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1838","22514-001","22514-001-1","2023-03-02","","50","0","","","","","950","2023-03-02 14:49:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1839","62113-008","62113-008-4","2023-03-02","","250","0","","","","","0","2023-03-02 14:49:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1840","68601-014","68601-014-1","2023-03-02","","1500","0","","","","","0","2023-03-02 14:50:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1841","92479-016","92479-016-3","2023-03-02","","0","100","","","","","500","2023-03-02 14:50:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1842","06018-006","06018-006-10","2023-03-02","","25","0","","","","","125","2023-03-02 14:54:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1843","61500-012","61500-012-1","2023-03-02","","375","0","","","","","1125","2023-03-02 14:54:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1844","03766-008","03766-008-8","2023-03-02","","0","100","","","","","0","2023-03-02 14:54:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1845","63744-004","63744-004-3","2023-03-02","","100","0","","","","","200","2023-03-02 14:54:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1846","55305-004","55305-004-2","2023-03-02","","350","0","","","","","25","2023-03-02 14:55:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1847","61500-014","61500-014-1","2023-03-02","","250","0","","","","","750","2023-03-02 14:55:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1848","92769-012","92769-012-1","2023-03-02","","200","0","","","","","800","2023-03-02 14:55:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1849","92769-008","92769-008-4","2023-03-02","","100","0","","","","","100","2023-03-02 14:55:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1850","32629-004","32629-004-3","2023-03-02","","100","0","","","","","200","2023-03-02 14:56:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1852","63744-005","63744-005-2","2023-03-03","","100","0","","","","","300","2023-03-03 15:34:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1853","37688-004","37688-004-2","2023-03-03","","0","200","","","","","1000","2023-03-03 15:35:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1855","53518-009","53518-009-1","2023-03-03","","200","0","","","","","800","2023-03-03 15:37:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1856","71302-019","71302-019-3","2023-03-03","","125","0","","","","","125","2023-03-03 15:37:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1857","93406-006","93406-006-2","2023-03-03","","125","0","","","","","625","2023-03-03 15:37:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1858","03766-009","03766-009-9","2023-03-03","","0","50","","","","","175","2023-03-03 15:38:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1859","06018-005","06018-005-10","2023-03-03","","25","0","","","","","100","2023-03-03 15:39:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1860","37688-002","37688-002-3","2023-03-03","","750","0","","","","","0","2023-03-03 15:41:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1861","17708-015","17708-015-1","2023-03-03","","250","0","","","","","750","2023-03-03 15:41:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1862","69589-011","69589-011-2","2023-03-03","","250","0","","","","","500","2023-03-03 15:42:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1863","06088-015","06088-015-2","2023-03-03","","125","0","","","","","250","2023-03-03 15:45:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1864","55655-001","55655-001-5","2023-03-03","","250","0","","","","","0","2023-03-03 15:45:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1865","75994-001","75994-001-1","2023-03-03","","0","150","","","","","1000","2023-03-03 15:45:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1866","37688-005","37688-005-2","2023-03-03","","0","200","","","","","1000","2023-03-03 15:45:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1867","63744-006","63744-006-2","2023-03-03","","100","0","","","","","300","2023-03-03 15:46:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1868","06018-006","06018-006-10","2023-03-03","","25","0","","","","","100","2023-03-03 15:47:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1869","37688-003","37688-003-3","2023-03-03","","750","0","","","","","0","2023-03-03 15:47:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1870","17708-016","17708-016-1","2023-03-03","","250","0","","","","","750","2023-03-03 15:49:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1871","06088-016","06088-016-2","2023-03-03","","125","0","","","","","250","2023-03-03 15:50:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1872","03766-010","03766-010-9","2023-03-03","","0","50","","","","","175","2023-03-03 15:50:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1873","53518-010","53518-010-1","2023-03-03","","200","0","","","","","800","2023-03-03 15:56:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1874","71302-020","71302-020-3","2023-03-03","","125","0","","","","","125","2023-03-03 15:58:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1875","93406-007","93406-007-2","2023-03-03","","125","0","","","","","625","2023-03-03 15:58:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1876","69589-012","69589-012-2","2023-03-03","","250","0","","","","","500","2023-03-03 16:09:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1877","74215-002","74215-002-2","2023-03-04","","250","0","","","","","125","2023-03-04 06:11:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1878","74215-004","74215-004-1","2023-03-04","","500","0","","","","","0","2023-03-04 06:11:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1879","06018-005","06018-005-10","2023-03-04","","25","0","","","","","75","2023-03-05 08:46:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1880","71302-017","71302-017-3","2023-03-04","","125","0","","","","","125","2023-03-05 08:47:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1881","53518-007","53518-007-5","2023-03-04","","200","0","","","","","0","2023-03-05 08:47:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1882","68601-007","68601-007-3","2023-03-04","","625","0","","","","","625","2023-03-05 08:48:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1883","61273-001","61273-001-3","2023-03-04","","125","0","","","","","125","2023-03-05 08:48:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1884","33295-001","33295-001-1","2023-03-04","","250","0","","","","","750","2023-03-05 08:48:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1885","85042-013","85042-013-3","2023-03-04","","188","0","","","","","186","2023-03-05 08:55:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1886","06018-003","06018-003-10","2023-03-04","","50","0","","","","","0","2023-03-05 08:55:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1887","03766-009","03766-009-10","2023-03-04","","0","50","","","","","175","2023-03-05 08:56:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1888","93406-006","93406-006-3","2023-03-04","","125","0","","","","","500","2023-03-05 09:04:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1889","53518-009","53518-009-2","2023-03-04","","200","0","","","","","600","2023-03-05 09:06:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1890","95385-001","95385-001-2","2023-03-04","","100","0","","","","","100","2023-03-05 09:06:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1891","05561-001","05561-001-2","2023-03-04","","100","0","","","","","0","2023-03-05 09:06:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1892","06018-006","06018-006-10","2023-03-04","","25","0","","","","","75","2023-03-05 09:07:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1893","71302-018","71302-018-3","2023-03-04","","125","0","","","","","125","2023-03-05 09:07:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1894","53518-008","53518-008-5","2023-03-04","","200","0","","","","","0","2023-03-05 09:08:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1895","68601-008","68601-008-3","2023-03-04","","625","0","","","","","625","2023-03-05 09:10:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1896","61273-002","61273-002-3","2023-03-04","","125","0","","","","","125","2023-03-05 09:10:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1897","06088-019","06088-019-2","2023-03-04","","250","0","","","","","500","2023-03-05 09:11:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1898","16285-001","16285-001-3","2023-03-04","","750","0","","","","","0","2023-03-05 09:11:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1899","85042-014","85042-014-3","2023-03-04","","188","0","","","","","186","2023-03-05 09:11:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1900","06018-004","06018-004-10","2023-03-04","","50","0","","","","","0","2023-03-05 09:12:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1901","03766-010","03766-010-10","2023-03-04","","0","50","","","","","175","2023-03-05 09:12:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1902","93406-007","93406-007-3","2023-03-04","","125","0","","","","","500","2023-03-05 09:13:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1903","53518-010","53518-010-2","2023-03-04","","200","0","","","","","600","2023-03-05 09:13:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1904","06018-005","06018-005-10","2023-03-05","","75","0","","","","","0","2023-03-05 12:02:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1905","06018-006","06018-006-10","2023-03-05","","75","0","","","","","0","2023-03-05 12:02:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1906","37736-003","37736-003-3","2023-03-05","","100","0","","","","","200","2023-03-05 12:04:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1907","37736-004","37736-004-3","2023-03-05","","100","0","","","","","200","2023-03-05 12:04:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1908","92769-009","92769-009-4","2023-03-05","","200","0","","","","","200","2023-03-05 12:04:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1909","92769-010","92769-010-4","2023-03-05","","200","0","","","","","200","2023-03-05 12:04:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1910","85042-011","85042-011-4","2023-03-05","","150","0","","","","","150","2023-03-05 12:05:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1911","85042-012","85042-012-4","2023-03-05","","150","0","","","","","150","2023-03-05 12:05:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1912","90911-001","90911-001-5","2023-03-05","","0","50","","","","","0","2023-03-05 12:05:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1913","90911-002","90911-002-5","2023-03-05","","0","50","","","","","0","2023-03-05 12:06:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1914","55655-002","55655-002-3","2023-03-05","","63","0","","","","","187","2023-03-05 12:06:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1915","55655-003","55655-003-3","2023-03-05","","63","0","","","","","187","2023-03-05 12:06:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1916","38570-001","38570-001-3","2023-03-05","","100","0","","","","","200","2023-03-05 12:06:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1917","38570-002","38570-002-3","2023-03-05","","100","0","","","","","200","2023-03-05 12:06:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1918","95385-002","95385-002-1","2023-03-05","","63","0","","","","","187","2023-03-05 12:06:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1919","95385-003","95385-003-1","2023-03-05","","63","0","","","","","187","2023-03-05 12:06:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1920","62113-010","62113-010-1","2023-03-05","","250","0","","","","","750","2023-03-05 12:07:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1921","62113-011","62113-011-1","2023-03-05","","250","0","","","","","750","2023-03-05 12:07:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1922","17708-014","17708-014-4","2023-03-05","","125","0","","","","","0","2023-03-05 12:07:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1923","16285-003","16285-003-2","2023-03-05","","125","0","","","","","250","2023-03-05 12:07:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1924","68601-010","68601-010-4","2023-03-05","","625","0","","","","","625","2023-03-05 12:08:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1925","93406-005","93406-005-6","2023-03-05","","750","0","","","","","0","2023-03-05 12:08:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1926","37736-002","37736-002-3","2023-02-28","","900","0","","","","","700","2023-03-05 12:09:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1927","16285-002","16285-002-2","2023-03-05","","125","0","","","","","250","2023-03-05 12:33:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1928","68601-009","68601-009-4","2023-03-05","","625","0","","","","","625","2023-03-05 12:34:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1929","17708-013","17708-013-4","2023-03-05","","125","0","","","","","0","2023-03-05 12:34:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1930","37736-005","37736-005-2","2023-03-06","","100","0","","","","","300","2023-03-06 15:54:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1931","71302-021","71302-021-2","2023-03-06","","188","0","","","","","124","2023-03-06 15:54:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1932","71831-001","71831-001-1","2023-03-06","","1000","0","","","","","1000","2023-03-06 15:54:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1933","06018-007","06018-007-1","2023-03-06","","25","0","","","","","475","2023-03-06 15:55:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1934","54643-001","54643-001-1","2023-03-06","","50","0","","","","","950","2023-03-06 15:55:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1935","93571-001","93571-001-1","2023-03-06","","50","0","","","","","450","2023-03-06 15:55:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1936","63744-003","63744-003-4","2023-03-06","","100","0","","","","","100","2023-03-06 15:55:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1937","55655-002","55655-002-4","2023-03-06","","63","0","","","","","124","2023-03-06 15:56:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1938","09554-001","09554-001-1","2023-03-06","","300","0","","","","","0","2023-03-06 15:56:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1939","17599-001","17599-001-1","2023-03-06","","20","0","","","","","480","2023-03-06 15:56:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1940","99242-002","99242-002-8","2023-03-06","","25","25","","","","","-25","2023-03-06 15:56:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1941","17571-001","17571-001-3","2023-03-06","","1000","0","","","","","0","2023-03-06 15:57:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1942","63744-007","63744-007-2","2023-03-06","","400","0","","","","","1200","2023-03-06 15:57:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1943","37736-006","37736-006-2","2023-03-06","","100","0","","","","","300","2023-03-06 15:57:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1944","71302-022","71302-022-2","2023-03-06","","188","0","","","","","124","2023-03-06 15:58:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1945","06018-008","06018-008-1","2023-03-06","","25","0","","","","","475","2023-03-06 15:58:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1946","93571-002","93571-002-1","2023-03-06","","50","0","","","","","450","2023-03-06 15:58:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1947","63744-004","63744-004-4","2023-03-06","","100","0","","","","","100","2023-03-06 15:58:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1948","55655-003","55655-003-4","2023-03-06","","63","0","","","","","124","2023-03-06 15:59:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1949","17599-002","17599-002-1","2023-03-06","","20","0","","","","","480","2023-03-06 15:59:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1950","99242-001","99242-001-8","2023-03-06","","25","25","","","","","-25","2023-03-06 15:59:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1951","03766-009","03766-009-10","2023-03-07","","100","0","","","","","75","2023-03-07 11:31:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1952","92769-011","92769-011-2","2023-03-07","","200","0","","","","","600","2023-03-07 11:31:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1953","92769-007","92769-007-5","2023-03-07","","100","0","","","","","0","2023-03-07 11:32:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1954","32629-003","32629-003-4","2023-03-07","","100","0","","","","","100","2023-03-07 11:32:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1955","73417-001","73417-001-1","2023-03-07","","125","0","","","","","375","2023-03-07 11:32:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1956","06018-007","06018-007-2","2023-03-07","","25","0","","","","","450","2023-03-07 11:33:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1957","54643-001","54643-001-2","2023-03-07","","50","0","","","","","900","2023-03-07 11:34:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1958","93571-001","93571-001-2","2023-03-07","","50","0","","","","","400","2023-03-07 11:34:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1959","63744-008","63744-008-1","2023-03-07","","100","0","","","","","400","2023-03-07 11:36:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1960","20368-001","20368-001-1","2023-03-07","","88","0","","","","","162","2023-03-07 11:36:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1961","90141-009","90141-009-4","2023-03-07","","100","75","","","","","0","2023-03-07 11:38:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1962","30039-001","30039-001-1","2023-03-07","","125","0","","","","","375","2023-03-07 11:38:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1963","31571-005","31571-005-3","2023-03-07","","825","0","","","","","0","2023-03-07 11:38:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1964","31571-007","31571-007-3","2023-03-07","","625","0","","","","","1250","2023-03-07 11:38:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1965","93406-008","93406-008-4","2023-03-07","","250","0","","","","","250","2023-03-07 11:39:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1966","47877-001","47877-001-2","2023-03-07","","0","200","","","","","1000","2023-03-07 11:39:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1967","09472-015","09472-015-1","2023-03-07","","0","100","","","","","250","2023-03-07 11:40:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1968","93406-009","93406-009-4","2023-03-07","","250","0","","","","","250","2023-03-07 12:00:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1969","09472-016","09472-016-1","2023-03-07","","0","100","","","","","250","2023-03-07 12:06:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1970","48512-001","48512-001-1","2023-03-07","","300","0","","","","","700","2023-03-07 12:09:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1971","48030-001","48030-001-2","2023-03-07","","200","0","","","","","1600","2023-03-07 12:10:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1972","86028-001","86028-001-2","2023-03-07","","0","100","","","","","500","2023-03-07 12:10:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1973","03766-010","03766-010-10","2023-03-07","","100","0","","","","","75","2023-03-07 12:11:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1974","92769-012","92769-012-2","2023-03-07","","200","0","","","","","600","2023-03-07 12:11:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1975","92769-008","92769-008-5","2023-03-07","","100","0","","","","","0","2023-03-07 12:12:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1976","32629-004","32629-004-4","2023-03-07","","100","0","","","","","100","2023-03-07 12:12:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1977","73417-002","73417-002-1","2023-03-07","","125","0","","","","","375","2023-03-07 12:22:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1978","06018-008","06018-008-2","2023-03-07","","25","0","","","","","450","2023-03-07 12:23:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1979","93571-002","93571-002-2","2023-03-07","","50","0","","","","","400","2023-03-07 12:23:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1980","63744-009","63744-009-1","2023-03-07","","100","0","","","","","400","2023-03-07 12:24:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1981","20368-002","20368-002-1","2023-03-07","","88","0","","","","","162","2023-03-07 12:24:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1982","90141-010","90141-010-4","2023-03-07","","100","75","","","","","0","2023-03-07 12:25:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1983","30039-002","30039-002-1","2023-03-07","","125","0","","","","","375","2023-03-07 12:25:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1984","31571-006","31571-006-3","2023-03-07","","825","0","","","","","0","2023-03-07 12:25:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1985","31571-008","31571-008-3","2023-03-07","","625","0","","","","","1250","2023-03-07 12:25:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1986","03766-009","03766-009-10","2023-03-08","","75","25","","","","","0","2023-03-08 15:06:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1987","06088-017","06088-017-3","2023-03-08","","250","0","","","","","0","2023-03-08 15:06:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1988","71302-019","71302-019-4","2023-03-08","","125","0","","","","","0","2023-03-08 15:08:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1989","53518-009","53518-009-3","2023-03-08","","200","0","","","","","400","2023-03-08 15:08:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1990","31229-001","31229-001-1","2023-03-08","","50","0","","","","","200","2023-03-08 15:09:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1991","06018-007","06018-007-3","2023-03-08","","25","0","","","","","425","2023-03-08 15:10:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1992","02568-001","02568-001-10","2023-03-08","","0","100","","","","","0","2023-03-08 15:10:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1993","07639-002","07639-002-2","2023-03-08","","500","0","","","","","500","2023-03-08 15:10:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1994","90911-001","90911-001-6","2023-03-08","","0","50","","","","","0","2023-03-08 15:10:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1995","74838-001","74838-001-1","2023-03-08","","125","0","","","","","375","2023-03-08 15:11:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1996","93406-010","93406-010-1","2023-03-08","","125","0","","","","","375","2023-03-08 15:11:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1997","31446-001","31446-001-1","2023-03-08","","250","0","","","","","250","2023-03-08 15:11:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1998","48512-001","48512-001-2","2023-03-08","","200","0","","","","","500","2023-03-08 15:14:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("1999","53651-001","53651-001-1","2023-03-08","","300","0","","","","","0","2023-03-08 15:14:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2000","03766-010","03766-010-10","2023-03-08","","75","25","","","","","0","2023-03-08 15:14:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2001","06088-018","06088-018-3","2023-03-08","","250","0","","","","","0","2023-03-08 15:15:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2002","71302-020","71302-020-4","2023-03-08","","125","0","","","","","0","2023-03-08 15:15:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2003","53518-010","53518-010-3","2023-03-08","","200","0","","","","","400","2023-03-08 15:15:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2004","31229-002","31229-002-1","2023-03-08","","100","0","","","","","150","2023-03-08 15:15:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2005","06018-008","06018-008-3","2023-03-08","","25","0","","","","","425","2023-03-08 15:15:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2006","02568-002","02568-002-10","2023-03-08","","0","100","","","","","0","2023-03-08 15:16:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2007","07639-001","07639-001-2","2023-03-08","","500","0","","","","","500","2023-03-08 15:16:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2008","90911-002","90911-002-6","2023-03-08","","0","50","","","","","0","2023-03-08 15:16:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2009","74838-002","74838-002-1","2023-03-08","","125","0","","","","","375","2023-03-08 15:17:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2010","93406-011","93406-011-1","2023-03-08","","125","0","","","","","375","2023-03-08 15:17:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2011","06018-007","06018-007-4","2023-03-09","","25","0","","","","","400","2023-03-09 15:52:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2012","02568-001","02568-001-10","2023-03-09","","0","100","","","","","0","2023-03-09 15:52:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2013","61500-011","61500-011-2","2023-03-09","","375","0","","","","","750","2023-03-09 15:52:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2014","90911-001","90911-001-7","2023-03-09","","0","25","","","","","0","2023-03-09 15:52:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2015","85042-011","85042-011-5","2023-03-09","","150","0","","","","","0","2023-03-09 15:53:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2016","53518-015","53518-015-1","2023-03-09","","200","0","","","","","800","2023-03-09 15:53:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2017","62113-010","62113-010-2","2023-03-09","","250","0","","","","","500","2023-03-09 15:53:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2018","62113-009","62113-009-2","2023-03-09","","800","0","","","","","800","2023-03-09 15:53:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2019","37688-004","37688-004-3","2023-03-09","","0","100","","","","","1000","2023-03-09 15:55:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2020","63744-005","63744-005-3","2023-03-09","","100","0","","","","","200","2023-03-09 15:55:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2021","53518-013","53518-013-1","2023-03-09","","0","250","","","","","1000","2023-03-09 15:56:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2022","69589-009","69589-009-3","2023-03-09","","250","0","","","","","250","2023-03-09 15:56:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2023","85042-013","85042-013-4","2023-03-09","","186","2","","","","","0","2023-03-09 15:56:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2024","61500-013","61500-013-2","2023-03-09","","250","0","","","","","500","2023-03-09 15:57:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2025","22254-001","22254-001-1","2023-03-09","","200","0","","","","","800","2023-03-09 15:57:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2026","95385-001","95385-001-3","2023-03-09","","100","0","","","","","0","2023-03-09 15:57:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2027","93406-012","93406-012-1","2023-03-09","","250","0","","","","","1750","2023-03-09 15:58:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2028","48512-001","48512-001-3","2023-03-09","","500","0","","","","","0","2023-03-09 15:58:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2029","16285-004","16285-004-1","2023-03-09","","200","0","","","","","1300","2023-03-09 15:59:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2030","74215-005","74215-005-1","2023-03-09","","250","0","","","","","750","2023-03-09 15:59:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2031","37688-005","37688-005-3","2023-03-09","","0","100","","","","","1000","2023-03-09 15:59:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2032","63744-006","63744-006-3","2023-03-09","","100","0","","","","","200","2023-03-09 15:59:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2033","53518-014","53518-014-1","2023-03-09","","0","250","","","","","1000","2023-03-09 16:00:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2035","85042-014","85042-014-4","2023-03-09","","186","2","","","","","0","2023-03-09 16:01:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2036","69589-010","69589-010-3","2023-03-09","","250","0","","","","","250","2023-03-09 16:01:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2037","61500-014","61500-014-2","2023-03-09","","250","0","","","","","500","2023-03-09 16:02:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2038","06018-008","06018-008-4","2023-03-09","","25","0","","","","","400","2023-03-09 16:02:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2039","02568-002","02568-002-10","2023-03-09","","0","100","","","","","0","2023-03-09 16:02:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2040","61500-012","61500-012-2","2023-03-09","","375","0","","","","","750","2023-03-09 16:03:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2041","90911-002","90911-002-7","2023-03-09","","0","25","","","","","0","2023-03-09 16:03:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2042","85042-012","85042-012-5","2023-03-09","","150","0","","","","","0","2023-03-09 16:03:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2043","53518-016","53518-016-1","2023-03-09","","200","0","","","","","800","2023-03-09 16:04:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2044","62113-011","62113-011-2","2023-03-09","","250","0","","","","","500","2023-03-09 16:04:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2045","17708-017","17708-017-1","2023-03-10","","125","0","","","","","375","2023-03-10 15:11:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2046","16285-002","16285-002-3","2023-03-10","","125","0","","","","","125","2023-03-10 15:11:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2047","95385-002","95385-002-2","2023-03-10","","63","0","","","","","124","2023-03-10 15:12:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2048","65158-001","65158-001-1","2023-03-10","","50","0","","","","","250","2023-03-10 15:12:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2049","37688-004","37688-004-4","2023-03-10","","0","175","","","","","1000","2023-03-10 15:13:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2050","37736-005","37736-005-3","2023-03-10","","100","0","","","","","200","2023-03-10 15:13:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2051","80790-001","80790-001-1","2023-03-10","","300","0","","","","","0","2023-03-10 15:13:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2052","16285-005","16285-005-1","2023-03-10","","500","0","","","","","0","2023-03-10 15:14:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2053","68601-015","68601-015-1","2023-03-10","","1500","0","","","","","0","2023-03-10 15:14:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2054","71302-021","71302-021-3","2023-03-10","","124","64","","","","","-64","2023-03-10 15:14:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2055","09472-015","09472-015-2","2023-03-10","","0","100","","","","","250","2023-03-10 15:15:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2056","06018-007","06018-007-5","2023-03-10","","25","0","","","","","375","2023-03-10 15:15:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2057","02568-001","02568-001-10","2023-03-10","","0","50","","","","","0","2023-03-10 15:15:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2058","69589-011","69589-011-3","2023-03-10","","250","0","","","","","250","2023-03-10 15:16:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2059","37736-003","37736-003-4","2023-03-10","","100","0","","","","","100","2023-03-10 15:16:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2060","44800-003","44800-003-2","2023-03-10","","50","0","","","","","1825","2023-03-10 15:16:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2061","17708-015","17708-015-2","2023-03-10","","250","0","","","","","500","2023-03-10 15:16:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2062","37688-007","37688-007-1","2023-03-10","","375","0","","","","","1125","2023-03-10 15:17:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2063","06088-015","06088-015-3","2023-03-10","","125","0","","","","","125","2023-03-10 15:17:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2064","61273-001","61273-001-4","2023-03-10","","125","0","","","","","0","2023-03-10 15:17:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2065","09472-017","09472-017-1","2023-03-10","","250","0","","","","","0","2023-03-10 15:18:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2066","92769-009","92769-009-5","2023-03-10","","200","0","","","","","0","2023-03-10 15:18:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2067","55655-002","55655-002-5","2023-03-10","","124","1","","","","","0","2023-03-10 15:18:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2068","55655-003","55655-003-5","2023-03-10","","124","1","","","","","0","2023-03-10 15:18:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2069","38570-001","38570-001-4","2023-03-10","","100","0","","","","","100","2023-03-10 15:18:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2070","38570-002","38570-002-4","2023-03-10","","100","0","","","","","100","2023-03-10 15:18:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2071","95385-003","95385-003-2","2023-03-10","","63","0","","","","","124","2023-03-10 15:19:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2072","09472-016","09472-016-2","2023-03-10","","0","100","","","","","250","2023-03-10 15:24:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2073","71302-022","71302-022-3","2023-03-10","","124","64","","","","","0","2023-03-10 15:25:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2074","68601-016","68601-016-1","2023-03-10","","1500","0","","","","","0","2023-03-10 15:25:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2075","37736-006","37736-006-3","2023-03-10","","100","0","","","","","200","2023-03-10 15:25:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2077","37688-005","37688-005-4","2023-03-10","","0","175","","","","","1000","2023-03-10 15:26:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2078","16285-006","16285-006-1","2023-03-10","","500","0","","","","","0","2023-03-10 15:26:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2079","16285-004","16285-004-2","2023-03-10","","175","0","","","","","1125","2023-03-10 15:26:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2080","37688-006","37688-006-1","2023-03-10","","250","0","","","","","2750","2023-03-10 15:27:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2081","17708-018","17708-018-1","2023-03-10","","125","0","","","","","375","2023-03-10 15:27:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2082","16285-003","16285-003-3","2023-03-10","","125","0","","","","","125","2023-03-10 15:27:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2083","06018-008","06018-008-5","2023-03-10","","25","0","","","","","375","2023-03-10 15:27:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2084","69589-012","69589-012-3","2023-03-10","","250","0","","","","","250","2023-03-10 15:28:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2085","37736-004","37736-004-4","2023-03-10","","100","0","","","","","100","2023-03-10 15:28:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2086","44800-004","44800-004-2","2023-03-10","","50","0","","","","","1825","2023-03-10 15:28:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2087","17708-016","17708-016-2","2023-03-10","","250","0","","","","","500","2023-03-10 15:28:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2088","02568-002","02568-002-10","2023-03-10","","0","50","","","","","0","2023-03-10 15:29:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2089","37688-008","37688-008-1","2023-03-10","","375","0","","","","","1125","2023-03-10 15:29:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2090","06088-016","06088-016-3","2023-03-10","","125","0","","","","","125","2023-03-10 15:29:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2091","61273-002","61273-002-4","2023-03-10","","125","0","","","","","0","2023-03-10 15:30:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2092","09472-018","09472-018-1","2023-03-10","","250","0","","","","","0","2023-03-10 15:31:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2093","92769-010","92769-010-5","2023-03-10","","200","0","","","","","0","2023-03-10 15:31:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2094","93406-006","93406-006-4","2023-03-11","","125","0","","","","","375","2023-03-11 15:54:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2095","16285-007","16285-007-1","2023-03-11","","125","0","","","","","375","2023-03-11 15:54:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2096","06018-007","06018-007-6","2023-03-11","","25","0","","","","","350","2023-03-12 07:26:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2097","06018-008","06018-008-6","2023-03-11","","25","0","","","","","350","2023-03-12 07:26:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2098","71302-017","71302-017-4","2023-03-11","","125","0","","","","","0","2023-03-12 07:26:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2099","71302-018","71302-018-4","2023-03-11","","125","0","","","","","0","2023-03-12 07:26:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2100","93571-001","93571-001-3","2023-03-11","","100","0","","","","","300","2023-03-12 07:27:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2101","93571-002","93571-002-3","2023-03-11","","100","0","","","","","300","2023-03-12 07:27:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2102","44800-003","44800-003-3","2023-03-11","","250","0","","","","","1575","2023-03-12 07:28:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2103","44800-004","44800-004-3","2023-03-11","","250","0","","","","","1575","2023-03-12 07:28:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2104","09554-001","09554-001-2","2023-03-11","","0","150","","","","","0","2023-03-12 07:28:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2105","22514-001","22514-001-2","2023-03-11","","100","0","","","","","850","2023-03-12 07:28:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2106","06088-019","06088-019-3","2023-03-11","","250","0","","","","","250","2023-03-12 07:29:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2107","48030-001","48030-001-3","2023-03-11","","200","0","","","","","1400","2023-03-12 07:29:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2108","93406-007","93406-007-4","2023-03-11","","125","0","","","","","375","2023-03-12 07:30:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2109","16285-008","16285-008-1","2023-03-11","","125","0","","","","","375","2023-03-12 07:30:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2110","68601-008","68601-008-4","2023-03-11","","625","0","","","","","0","2023-03-12 07:35:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2111","68601-007","68601-007-4","2023-03-11","","625","0","","","","","0","2023-03-12 07:38:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2112","03766-009","03766-009-10","2023-03-12","","0","400","","","","","0","2023-03-12 14:07:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2113","03766-010","03766-010-10","2023-03-12","","0","400","","","","","0","2023-03-12 14:07:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2114","68601-009","68601-009-5","2023-03-12","","625","0","","","","","0","2023-03-12 14:07:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2115","68601-010","68601-010-5","2023-03-12","","625","0","","","","","0","2023-03-12 14:07:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2116","92769-011","92769-011-3","2023-03-12","","200","0","","","","","400","2023-03-12 14:07:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2117","92769-012","92769-012-3","2023-03-12","","200","0","","","","","400","2023-03-12 14:08:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2118","93406-006","93406-006-5","2023-03-12","","125","0","","","","","250","2023-03-12 14:08:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2119","93406-007","93406-007-5","2023-03-12","","125","0","","","","","250","2023-03-12 14:08:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2120","32629-003","32629-003-5","2023-03-12","","100","0","","","","","0","2023-03-12 14:08:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2121","32629-004","32629-004-5","2023-03-12","","100","0","","","","","0","2023-03-12 14:08:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2122","22254-001","22254-001-2","2023-03-12","","100","0","","","","","700","2023-03-12 14:08:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2123","06018-007","06018-007-7","2023-03-12","","25","0","","","","","325","2023-03-12 14:09:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2124","06018-008","06018-008-7","2023-03-12","","25","0","","","","","325","2023-03-12 14:09:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2125","32629-005","32629-005-1","2023-03-12","","100","0","","","","","400","2023-03-12 14:09:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2126","32629-006","32629-006-1","2023-03-12","","100","0","","","","","400","2023-03-12 14:09:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2127","33295-002","33295-002-1","2023-03-12","","0","150","","","","","500","2023-03-12 14:09:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2128","33295-003","33295-003-1","2023-03-12","","0","150","","","","","500","2023-03-12 14:09:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2129","44800-003","44800-003-4","2023-03-12","","0","100","","","","","1575","2023-03-12 14:09:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2130","44800-004","44800-004-4","2023-03-12","","0","100","","","","","1575","2023-03-12 14:09:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2131","06018-007","06018-007-8","2023-03-13","","25","0","","","","","300","2023-03-13 12:30:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2132","37736-003","37736-003-5","2023-03-13","","100","0","","","","","0","2023-03-13 12:31:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2133","20368-001","20368-001-2","2023-03-13","","0","25","","","","","162","2023-03-13 12:31:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2134","99242-002","99242-002-9","2023-03-13","","0","50","","","","","0","2023-03-13 12:31:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2135","74215-005","74215-005-2","2023-03-13","","250","0","","","","","500","2023-03-13 13:54:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2136","37736-007","37736-007-2","2023-03-13","","200","0","","","","","600","2023-03-13 15:06:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2137","37736-004","37736-004-5","2023-03-13","","100","0","","","","","0","2023-03-13 15:06:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2138","17571-002","17571-002-1","2023-03-13","","625","0","","","","","1875","2023-03-13 15:06:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2139","64357-001","64357-001-1","2023-03-13","","500","0","","","","","500","2023-03-13 15:06:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2140","48512-004","48512-004-1","2023-03-13","","500","0","","","","","500","2023-03-13 15:07:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2141","06018-008","06018-008-8","2023-03-13","","25","0","","","","","300","2023-03-13 15:07:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2142","20368-002","20368-002-2","2023-03-13","","0","25","","","","","162","2023-03-13 15:07:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2143","99242-001","99242-001-9","2023-03-13","","0","50","","","","","0","2023-03-13 15:08:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2144","93406-009","93406-009-5","2023-03-13","","250","0","","","","","0","2023-03-13 15:08:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2145","93406-008","93406-008-5","2023-03-14","","250","0","","","","","0","2023-03-14 10:50:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2146","63744-005","63744-005-4","2023-03-14","","100","0","","","","","100","2023-03-14 10:51:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2147","06018-007","06018-007-9","2023-03-14","","25","0","","","","","275","2023-03-14 10:59:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2148","48512-002","48512-002-1","2023-03-14","","125","0","","","","","375","2023-03-14 11:00:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2149","63744-003","63744-003-5","2023-03-14","","100","0","","","","","0","2023-03-14 11:00:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2150","74838-001","74838-001-2","2023-03-14","","125","0","","","","","250","2023-03-14 11:00:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2151","30039-001","30039-001-2","2023-03-14","","75","0","","","","","300","2023-03-14 11:00:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2152","85042-017","85042-017-1","2023-03-14","","150","0","","","","","600","2023-03-14 11:00:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2153","93406-010","93406-010-2","2023-03-14","","125","0","","","","","250","2023-03-14 11:01:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2154","93571-001","93571-001-4","2023-03-14","","100","0","","","","","200","2023-03-14 11:01:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2155","38570-001","38570-001-5","2023-03-14","","100","0","","","","","0","2023-03-14 11:04:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2156","10966-001","10966-001-1","2023-03-14","","300","0","","","","","0","2023-03-14 12:04:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2157","32320-001","32320-001-1","2023-03-14","","0","500","","","","","2000","2023-03-14 12:04:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2158","37688-006","37688-006-2","2023-03-14","","150","0","","","","","2600","2023-03-14 12:05:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2159","63744-007","63744-007-3","2023-03-14","","200","0","","","","","1000","2023-03-14 12:05:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2160","63744-006","63744-006-4","2023-03-14","","100","0","","","","","100","2023-03-14 12:05:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2161","09472-016","09472-016-3","2023-03-14","","250","0","","","","","0","2023-03-14 12:06:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2162","74838-004","74838-004-1","2023-03-14","","125","0","","","","","375","2023-03-14 12:06:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2163","37688-005","37688-005-5","2023-03-14","","0","75","","","","","925","2023-03-14 12:07:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2164","53518-010","53518-010-4","2023-03-14","","400","0","","","","","0","2023-03-14 12:08:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2165","16285-003","16285-003-4","2023-03-14","","125","0","","","","","0","2023-03-14 12:08:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2166","06018-008","06018-008-9","2023-03-14","","25","0","","","","","275","2023-03-14 12:09:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2167","48512-003","48512-003-1","2023-03-14","","125","0","","","","","375","2023-03-14 12:09:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2168","63744-004","63744-004-5","2023-03-14","","100","0","","","","","0","2023-03-14 12:09:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2169","74838-002","74838-002-2","2023-03-14","","125","0","","","","","250","2023-03-14 12:09:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2170","30039-002","30039-002-2","2023-03-14","","75","0","","","","","300","2023-03-14 12:10:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2171","85042-018","85042-018-1","2023-03-14","","150","0","","","","","600","2023-03-14 12:10:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2172","93406-011","93406-011-2","2023-03-14","","125","0","","","","","250","2023-03-14 12:11:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2173","93571-002","93571-002-4","2023-03-14","","100","0","","","","","200","2023-03-14 12:11:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2174","38570-002","38570-002-5","2023-03-14","","100","0","","","","","0","2023-03-14 12:11:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2175","06018-007","06018-007-10","2023-03-15","","25","0","","","","","250","2023-03-15 15:43:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2176","06018-008","06018-008-10","2023-03-15","","25","0","","","","","250","2023-03-15 15:43:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2177","48512-002","48512-002-2","2023-03-15","","110","0","","","","","265","2023-03-15 15:43:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2179","73417-003","73417-003-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:43:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2180","73417-004","73417-004-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:43:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2181","20368-001","20368-001-3","2023-03-15","","25","0","","","","","137","2023-03-15 15:44:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2182","20368-002","20368-002-3","2023-03-15","","25","0","","","","","137","2023-03-15 15:44:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2183","02568-001","02568-001-10","2023-03-15","","0","75","","","","","0","2023-03-15 15:44:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2184","02568-002","02568-002-10","2023-03-15","","0","75","","","","","0","2023-03-15 15:44:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2185","53518-015","53518-015-2","2023-03-15","","200","0","","","","","600","2023-03-15 15:44:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2186","53518-016","53518-016-2","2023-03-15","","200","0","","","","","600","2023-03-15 15:44:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2187","98925-009","98925-009-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:45:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2188","98925-010","98925-010-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:45:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2189","17708-017","17708-017-2","2023-03-15","","125","0","","","","","250","2023-03-15 15:45:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2190","17708-018","17708-018-2","2023-03-15","","125","0","","","","","250","2023-03-15 15:45:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2191","06088-020","06088-020-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:45:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2192","06088-021","06088-021-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:45:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2195","95385-005","95385-005-1","2023-03-15","","88","0","","","","","162","2023-03-15 15:46:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2196","95385-004","95385-004-1","2023-03-15","","88","0","","","","","162","2023-03-15 15:46:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2197","22254-001","22254-001-3","2023-03-15","","200","0","","","","","500","2023-03-15 15:47:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2198","37688-004","37688-004-5","2023-03-15","","0","150","","","","","1000","2023-03-15 15:47:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2200","74838-003","74838-003-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:47:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2202","09472-015","09472-015-3","2023-03-15","","250","0","","","","","0","2023-03-15 15:48:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2205","53518-013","53518-013-2","2023-03-15","","1000","0","","","","","0","2023-03-15 15:48:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2206","53518-014","53518-014-2","2023-03-15","","1000","0","","","","","0","2023-03-15 15:48:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2207","62113-012","62113-012-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:49:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2209","62113-014","62113-014-1","2023-03-15","","125","0","","","","","375","2023-03-15 15:49:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2211","77003-001","77003-001-1","2023-03-15","","500","0","","","","","0","2023-03-15 15:52:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2212","16285-004","16285-004-3","2023-03-15","","125","0","","","","","1000","2023-03-15 15:53:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2213","10966-002","10966-002-1","2023-03-15","","300","0","","","","","0","2023-03-15 15:53:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2214","16285-002","16285-002-4","2023-03-14","","125","0","","","","","0","2023-03-15 15:54:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2215","53518-009","53518-009-4","2023-03-14","","400","0","","","","","0","2023-03-15 15:55:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2216","48512-003","48512-003-2","2023-03-15","","110","0","","","","","265","2023-03-15 16:00:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2217","37688-005","37688-005-6","2023-03-15","","0","75","","","","","1000","2023-03-15 16:06:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2218","53518-013","53518-013-3","2023-03-16","","0","250","","","","","0","2023-03-16 10:22:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2219","71302-021","71302-021-4","2023-03-16","","0","188","","","","","0","2023-03-16 10:24:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2220","69589-009","69589-009-4","2023-03-16","","250","0","","","","","0","2023-03-16 10:24:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2221","61500-013","61500-013-3","2023-03-16","","250","0","","","","","250","2023-03-16 10:24:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2222","22254-001","22254-001-4","2023-03-16","","150","0","","","","","350","2023-03-16 10:25:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2223","95385-002","95385-002-3","2023-03-16","","63","0","","","","","61","2023-03-16 10:25:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2224","06018-007","06018-007-10","2023-03-16","","25","0","","","","","225","2023-03-16 10:29:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2225","48512-002","48512-002-3","2023-03-16","","15","10","","","","","250","2023-03-16 10:29:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2226","44800-003","44800-003-5","2023-03-16","","100","0","","","","","1475","2023-03-16 10:29:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2227","20368-001","20368-001-4","2023-03-16","","25","0","","","","","112","2023-03-16 10:30:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2228","61500-011","61500-011-3","2023-03-16","","375","0","","","","","375","2023-03-16 10:31:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2229","17708-015","17708-015-3","2023-03-16","","250","0","","","","","250","2023-03-16 10:31:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2230","30039-001","30039-001-3","2023-03-16","","300","75","","","","","0","2023-03-16 10:31:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2231","31571-007","31571-007-4","2023-03-16","","1125","0","","","","","125","2023-03-16 10:31:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2232","95385-003","95385-003-3","2023-03-16","","63","0","","","","","61","2023-03-16 10:32:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2233","62113-013","62113-013-1","2023-03-16","","125","0","","","","","375","2023-03-16 10:32:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2234","62113-016","62113-016-1","2023-03-16","","125","0","","","","","375","2023-03-16 10:32:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2235","31446-001","31446-001-2","2023-03-16","","250","0","","","","","0","2023-03-16 10:32:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2236","93406-012","93406-012-2","2023-03-16","","250","0","","","","","1500","2023-03-16 10:35:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2237","63744-007","63744-007-4","2023-03-16","","200","0","","","","","800","2023-03-16 10:35:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2238","69589-010","69589-010-4","2023-03-16","","250","0","","","","","0","2023-03-16 10:36:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2239","61500-014","61500-014-3","2023-03-16","","250","0","","","","","250","2023-03-16 10:36:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2240","53518-014","53518-014-3","2023-03-16","","0","250","","","","","0","2023-03-16 10:36:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2241","71302-022","71302-022-4","2023-03-16","","0","188","","","","","0","2023-03-16 10:37:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2242","06018-008","06018-008-10","2023-03-16","","25","0","","","","","225","2023-03-16 10:37:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2243","48512-003","48512-003-3","2023-03-16","","15","10","","","","","250","2023-03-16 10:37:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2244","44800-004","44800-004-5","2023-03-16","","100","0","","","","","1475","2023-03-16 10:37:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2245","20368-002","20368-002-4","2023-03-16","","25","0","","","","","112","2023-03-16 10:38:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2246","61500-012","61500-012-3","2023-03-16","","375","0","","","","","375","2023-03-16 10:38:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2247","17708-016","17708-016-3","2023-03-16","","250","0","","","","","250","2023-03-16 10:38:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2248","30039-002","30039-002-3","2023-03-16","","300","75","","","","","0","2023-03-16 10:38:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2249","31571-008","31571-008-4","2023-03-16","","1125","0","","","","","125","2023-03-16 10:39:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2250","06018-007","06018-007-10","2023-03-17","","25","0","","","","","200","2023-03-17 14:37:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2251","69589-011","69589-011-4","2023-03-17","","250","0","","","","","0","2023-03-17 14:37:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2252","06088-015","06088-015-4","2023-03-17","","125","0","","","","","0","2023-03-17 14:38:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2253","20368-001","20368-001-5","2023-03-17","","88","0","","","","","24","2023-03-17 14:38:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2254","62113-010","62113-010-3","2023-03-17","","500","0","","","","","0","2023-03-17 14:39:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2255","17708-015","17708-015-4","2023-03-17","","250","0","","","","","0","2023-03-17 14:39:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2256","74838-001","74838-001-3","2023-03-17","","250","0","","","","","0","2023-03-17 14:39:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2257","32629-005","32629-005-2","2023-03-17","","100","0","","","","","300","2023-03-17 14:39:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2258","31446-003","31446-003-1","2023-03-17","","250","325","","","","","0","2023-03-17 14:40:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2259","33295-001","33295-001-2","2023-03-17","","250","0","","","","","500","2023-03-17 14:40:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2260","31446-002","31446-002-1","2023-03-17","","250","325","","","","","0","2023-03-17 14:42:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2261","37736-005","37736-005-4","2023-03-17","","100","0","","","","","200","2023-03-17 14:42:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2262","85042-019","85042-019-1","2023-03-17","","188","0","","","","","562","2023-03-17 14:42:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2263","16285-007","16285-007-2","2023-03-17","","125","0","","","","","250","2023-03-17 14:43:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2264","95385-006","95385-006-1","2023-03-17","","125","0","","","","","375","2023-03-17 14:43:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2265","37736-007","37736-007-3","2023-03-17","","200","0","","","","","400","2023-03-17 14:44:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2266","85042-020","85042-020-1","2023-03-17","","188","0","","","","","562","2023-03-17 14:44:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2267","16285-008","16285-008-2","2023-03-17","","125","0","","","","","250","2023-03-17 14:44:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2268","37736-006","37736-006-4","2023-03-17","","100","0","","","","","200","2023-03-17 14:45:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2269","06018-008","06018-008-10","2023-03-17","","25","0","","","","","200","2023-03-17 14:45:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2270","69589-012","69589-012-4","2023-03-17","","250","0","","","","","0","2023-03-17 14:45:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2271","06088-016","06088-016-4","2023-03-17","","125","0","","","","","0","2023-03-17 14:46:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2272","20368-002","20368-002-5","2023-03-17","","88","0","","","","","24","2023-03-17 14:46:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2273","62113-011","62113-011-3","2023-03-17","","500","0","","","","","0","2023-03-17 14:46:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2274","17708-016","17708-016-4","2023-03-17","","250","0","","","","","0","2023-03-17 14:47:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2275","74838-002","74838-002-3","2023-03-17","","250","0","","","","","0","2023-03-17 14:47:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2276","32629-006","32629-006-2","2023-03-17","","100","0","","","","","300","2023-03-17 14:47:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2277","93406-006","93406-006-6","2023-03-18","","250","0","","","","","0","2023-03-18 10:01:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2278","22254-001","22254-001-5","2023-03-18","","100","0","","","","","250","2023-03-18 10:01:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2279","06018-007","06018-007-10","2023-03-18","","25","0","","","","","175","2023-03-19 08:20:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2280","02568-001","02568-001-10","2023-03-18","","0","50","","","","","0","2023-03-19 08:20:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2281","44800-003","44800-003-6","2023-03-18","","100","0","","","","","1375","2023-03-19 08:21:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2282","20368-001","20368-001-6","2023-03-18","","25","0","","","","","-1","2023-03-19 08:21:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2283","07639-001","07639-001-3","2023-03-18","","500","0","","","","","0","2023-03-19 08:21:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2284","48512-002","48512-002-4","2023-03-18","","250","0","","","","","0","2023-03-19 08:21:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2285","93406-012","93406-012-3","2023-03-18","","200","0","","","","","1300","2023-03-19 08:37:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2286","74215-005","74215-005-3","2023-03-18","","250","0","","","","","250","2023-03-19 08:38:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2287","06088-019","06088-019-4","2023-03-18","","250","0","","","","","0","2023-03-19 08:38:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2288","06088-022","06088-022-1","2023-03-18","","250","0","","","","","750","2023-03-19 08:39:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2289","93406-007","93406-007-6","2023-03-18","","250","0","","","","","0","2023-03-19 08:39:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2290","06018-008","06018-008-10","2023-03-18","","25","0","","","","","175","2023-03-19 08:39:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2291","02568-002","02568-002-10","2023-03-18","","0","50","","","","","0","2023-03-19 08:39:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2292","44800-004","44800-004-6","2023-03-18","","100","0","","","","","1375","2023-03-19 08:40:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2293","20368-002","20368-002-6","2023-03-18","","25","0","","","","","-1","2023-03-19 08:40:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2294","07639-002","07639-002-3","2023-03-18","","500","0","","","","","0","2023-03-19 08:41:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2295","48512-003","48512-003-4","2023-03-18","","250","0","","","","","0","2023-03-19 08:41:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2296","06018-007","06018-007-10","2023-03-19","","25","0","","","","","150","2023-03-19 15:28:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2297","02568-001","02568-001-10","2023-03-19","","0","50","","","","","0","2023-03-19 15:28:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2298","63744-008","63744-008-2","2023-03-19","","100","0","","","","","300","2023-03-19 15:28:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2299","37688-007","37688-007-2","2023-03-19","","100","0","","","","","1025","2023-03-19 15:28:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2300","85042-017","85042-017-2","2023-03-19","","150","0","","","","","450","2023-03-19 15:29:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2301","93406-010","93406-010-3","2023-03-19","","125","0","","","","","125","2023-03-19 15:29:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2302","38570-003","38570-003-1","2023-03-19","","100","0","","","","","400","2023-03-19 15:30:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2303","33295-001","33295-001-3","2023-03-19","","100","0","","","","","400","2023-03-19 15:30:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2305","53518-017","53518-017-1","2023-03-19","","200","0","","","","","800","2023-03-19 15:31:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2306","37688-004","37688-004-6","2023-03-19","","0","75","","","","","1000","2023-03-19 15:31:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2308","16285-009","16285-009-1","2023-03-19","","500","25","","","","","0","2023-03-19 15:31:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2309","74838-003","74838-003-2","2023-03-19","","125","0","","","","","250","2023-03-19 15:32:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2310","75994-002","75994-002-1","2023-03-19","","500","50","","","","","0","2023-03-19 15:32:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2311","92195-001","92195-001-1","2023-03-19","","0","50","","","","","500","2023-03-19 15:32:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2312","16285-004","16285-004-4","2023-03-19","","250","0","","","","","750","2023-03-19 15:33:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2313","75994-001","75994-001-2","2023-03-19","","1000","0","","","","","0","2023-03-19 15:33:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2314","32320-001","32320-001-2","2023-03-19","","300","0","","","","","1700","2023-03-19 15:33:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2315","06018-008","06018-008-10","2023-03-19","","25","0","","","","","150","2023-03-19 15:33:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2316","02568-002","02568-002-10","2023-03-19","","0","50","","","","","0","2023-03-19 15:34:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2317","63744-009","63744-009-2","2023-03-19","","100","0","","","","","300","2023-03-19 15:34:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2318","37688-008","37688-008-2","2023-03-19","","100","0","","","","","1025","2023-03-19 15:34:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2319","85042-018","85042-018-2","2023-03-19","","150","0","","","","","450","2023-03-19 15:35:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2320","93406-011","93406-011-3","2023-03-19","","125","0","","","","","125","2023-03-19 15:35:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2321","38570-004","38570-004-1","2023-03-19","","100","0","","","","","400","2023-03-19 15:35:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2322","53518-018","53518-018-1","2023-03-19","","200","0","","","","","800","2023-03-19 15:35:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2323","37688-005","37688-005-7","2023-03-19","","0","75","","","","","1000","2023-03-19 15:36:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2324","16285-010","16285-010-1","2023-03-19","","500","25","","","","","0","2023-03-19 15:36:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2325","74838-004","74838-004-2","2023-03-19","","125","0","","","","","250","2023-03-19 15:36:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2326","75994-003","75994-003-1","2023-03-19","","500","50","","","","","0","2023-03-19 15:36:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2327","68601-017","68601-017-1","2023-03-20","","625","0","","","","","1875","2023-03-20 15:54:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2328","53651-002","53651-002-1","2023-03-20","","63","0","","","","","187","2023-03-20 15:54:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2329","73417-001","73417-001-2","2023-03-20","","250","50","","","","","125","2023-03-20 15:54:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2330","17708-017","17708-017-3","2023-03-20","","125","0","","","","","125","2023-03-20 15:55:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2331","74215-006","74215-006-1","2023-03-20","","250","0","","","","","750","2023-03-20 15:55:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2332","06018-007","06018-007-10","2023-03-20","","25","0","","","","","125","2023-03-20 15:55:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2333","37736-008","37736-008-1","2023-03-20","","100","0","","","","","400","2023-03-20 15:55:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2334","53518-015","53518-015-3","2023-03-20","","250","0","","","","","350","2023-03-20 15:56:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2335","37688-007","37688-007-3","2023-03-20","","100","0","","","","","925","2023-03-20 15:56:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2336","37688-004","37688-004-7","2023-03-20","","0","100","","","","","1000","2023-03-20 15:56:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2337","63744-005","63744-005-5","2023-03-20","","100","50","","","","","0","2023-03-20 15:56:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2338","5019-001","5019-001-2","2023-03-20","","750","0","","","","","35250","2023-03-20 15:57:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2339","89184-001","89184-001-1","2023-03-20","","250","0","","","","","750","2023-03-20 15:57:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2340","55655-004","55655-004-1","2023-03-20","","200","0","","","","","800","2023-03-20 15:57:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2341","37688-006","37688-006-3","2023-03-20","","150","0","","","","","2450","2023-03-20 15:58:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2342","16285-004","16285-004-5","2023-03-20","","750","0","","","","","0","2023-03-20 15:58:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2343","17571-002","17571-002-2","2023-03-20","","625","0","","","","","1250","2023-03-20 15:58:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2344","32320-001","32320-001-3","2023-03-20","","200","0","","","","","1500","2023-03-20 15:58:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2345","68601-018","68601-018-1","2023-03-20","","625","0","","","","","1875","2023-03-20 15:58:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2346","53651-003","53651-003-1","2023-03-20","","63","0","","","","","187","2023-03-20 15:59:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2347","73417-002","73417-002-2","2023-03-20","","250","50","","","","","125","2023-03-20 15:59:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2348","17708-018","17708-018-3","2023-03-20","","125","0","","","","","125","2023-03-20 15:59:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2349","06018-008","06018-008-10","2023-03-20","","25","0","","","","","125","2023-03-20 15:59:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2350","37736-009","37736-009-1","2023-03-20","","100","0","","","","","400","2023-03-20 15:59:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2351","53518-016","53518-016-3","2023-03-20","","250","0","","","","","350","2023-03-20 16:00:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2352","37688-008","37688-008-3","2023-03-20","","100","0","","","","","925","2023-03-20 16:00:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2353","63744-006","63744-006-5","2023-03-20","","100","50","","","","","0","2023-03-20 16:01:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2354","37688-005","37688-005-8","2023-03-20","","0","100","","","","","1000","2023-03-20 16:02:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2355","73417-001","73417-001-3","2023-03-21","","125","0","","","","","0","2023-03-21 13:25:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2356","73417-002","73417-002-3","2023-03-21","","125","0","","","","","0","2023-03-21 13:25:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2357","98925-009","98925-009-2","2023-03-21","","50","0","","","","","325","2023-03-21 13:25:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2358","98925-010","98925-010-2","2023-03-21","","50","0","","","","","325","2023-03-21 13:25:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2359","06018-007","06018-007-10","2023-03-21","","25","0","","","","","100","2023-03-21 13:25:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2360","06018-008","06018-008-10","2023-03-21","","25","0","","","","","100","2023-03-21 13:25:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2361","73417-003","73417-003-2","2023-03-21","","250","0","","","","","125","2023-03-21 13:26:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2362","73417-004","73417-004-2","2023-03-21","","250","0","","","","","125","2023-03-21 13:26:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2363","62113-012","62113-012-2","2023-03-21","","125","0","","","","","250","2023-03-21 13:26:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2364","62113-013","62113-013-2","2023-03-21","","125","0","","","","","250","2023-03-21 13:26:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2365","62113-014","62113-014-2","2023-03-21","","125","0","","","","","250","2023-03-21 13:26:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2366","62113-016","62113-016-2","2023-03-21","","125","0","","","","","250","2023-03-21 13:26:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2367","33295-002","33295-002-2","2023-03-21","","500","150","","","","","0","2023-03-21 13:27:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2368","33295-003","33295-003-2","2023-03-21","","500","150","","","","","0","2023-03-21 13:27:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2369","33295-001","33295-001-4","2023-03-21","","400","0","","","","","0","2023-03-21 13:27:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2370","37736-005","37736-005-5","2023-03-21","","100","75","","","","","0","2023-03-21 13:27:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2371","37736-006","37736-006-5","2023-03-21","","100","75","","","","","0","2023-03-21 13:27:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2372","55655-004","55655-004-2","2023-03-21","","50","0","","","","","750","2023-03-21 13:28:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2373","33295-001","33295-001-5","2023-03-21","","0","400","","","","","0","2023-03-21 13:30:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2376","95385-006","95385-006-2","2023-03-22","","125","50","","","","","250","2023-03-22 09:41:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2377","95385-002","95385-002-4","2023-03-22","","61","27","","","","","0","2023-03-22 09:42:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2378","06088-020","06088-020-2","2023-03-22","","125","0","","","","","250","2023-03-22 09:42:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2379","85042-019","85042-019-2","2023-03-22","","188","0","","","","","374","2023-03-22 09:42:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2380","38570-005","38570-005-1","2023-03-22","","100","0","","","","","400","2023-03-22 09:43:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2381","98925-009","98925-009-3","2023-03-22","","75","0","","","","","250","2023-03-22 09:43:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2382","74838-005","74838-005-1","2023-03-22","","125","0","","","","","375","2023-03-22 09:43:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2383","06018-007","06018-007-10","2023-03-22","","25","0","","","","","75","2023-03-22 10:14:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2384","53518-015","53518-015-4","2023-03-22","","50","0","","","","","300","2023-03-22 10:15:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2385","02568-001","02568-001-10","2023-03-22","","0","50","","","","","0","2023-03-22 10:15:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2386","37688-007","37688-007-4","2023-03-22","","100","0","","","","","825","2023-03-22 10:15:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2387","93571-001","93571-001-5","2023-03-22","","200","200","","","","","0","2023-03-22 10:15:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2388","63744-008","63744-008-3","2023-03-22","","300","0","","","","","0","2023-03-22 10:15:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2389","74838-007","74838-007-1","2023-03-22","","125","0","","","","","375","2023-03-22 10:16:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2390","32629-005","32629-005-3","2023-03-22","","100","0","","","","","200","2023-03-22 10:16:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2391","62113-017","62113-017-1","2023-03-22","","0","50","","","","","1000","2023-03-22 10:23:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2393","95385-003","95385-003-4","2023-03-22","","61","27","","","","","0","2023-03-22 10:25:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2394","33295-005","33295-005-1","2023-03-22","","0","200","","","","","500","2023-03-22 10:25:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2396","31571-010","31571-010-1","2023-03-22","","1250","0","","","","","3750","2023-03-22 10:25:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2397","33295-004","33295-004-1","2023-03-22","","0","200","","","","","500","2023-03-22 10:29:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2398","37688-004","37688-004-8","2023-03-22","","0","100","","","","","1000","2023-03-22 10:29:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2399","71302-023","71302-023-1","2023-03-22","","60","0","","","","","690","2023-03-22 10:30:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2400","63744-007","63744-007-5","2023-03-22","","800","0","","","","","0","2023-03-22 14:19:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2401","37688-006","37688-006-4","2023-03-22","","50","0","","","","","2400","2023-03-22 14:19:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2402","37736-007","37736-007-4","2023-03-22","","200","0","","","","","200","2023-03-22 14:20:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2403","92195-001","92195-001-2","2023-03-22","","500","50","","","","","0","2023-03-22 14:20:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2405","10966-003","10966-003-1","2023-03-22","","250","100","","","","","750","2023-03-22 14:21:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2406","06088-021","06088-021-2","2023-03-22","","125","0","","","","","250","2023-03-22 14:21:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2407","85042-020","85042-020-2","2023-03-22","","188","0","","","","","374","2023-03-22 14:22:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2408","38570-006","38570-006-1","2023-03-22","","100","0","","","","","400","2023-03-22 14:22:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2409","98925-010","98925-010-3","2023-03-22","","75","0","","","","","250","2023-03-22 14:22:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2410","74838-006","74838-006-1","2023-03-22","","125","0","","","","","375","2023-03-22 14:22:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2411","06018-008","06018-008-10","2023-03-22","","25","0","","","","","75","2023-03-22 14:22:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2412","53518-016","53518-016-4","2023-03-22","","50","0","","","","","300","2023-03-22 14:23:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2413","02568-002","02568-002-10","2023-03-22","","0","50","","","","","0","2023-03-22 14:23:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2414","37688-008","37688-008-4","2023-03-22","","100","0","","","","","825","2023-03-22 14:23:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2415","93571-002","93571-002-5","2023-03-22","","200","200","","","","","0","2023-03-22 14:23:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2416","63744-009","63744-009-3","2023-03-22","","300","0","","","","","0","2023-03-22 14:23:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2417","74838-008","74838-008-1","2023-03-22","","125","0","","","","","375","2023-03-22 14:24:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2418","32629-006","32629-006-3","2023-03-22","","100","0","","","","","200","2023-03-22 14:24:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2420","37688-005","37688-005-9","2023-03-22","","0","100","","","","","1000","2023-03-22 14:24:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2421","71302-024","71302-024-1","2023-03-22","","60","0","","","","","690","2023-03-22 14:25:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2422","06018-007","06018-007-10","2023-03-23","","25","0","","","","","50","2023-03-23 15:24:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2423","06018-008","06018-008-10","2023-03-23","","25","0","","","","","50","2023-03-23 15:24:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2424","85042-017","85042-017-3","2023-03-23","","150","0","","","","","300","2023-03-23 15:24:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2425","85042-018","85042-018-3","2023-03-23","","150","0","","","","","300","2023-03-23 15:24:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2426","37736-008","37736-008-2","2023-03-23","","100","0","","","","","300","2023-03-23 15:24:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2427","37736-009","37736-009-2","2023-03-23","","100","0","","","","","300","2023-03-23 15:24:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2428","61500-011","61500-011-4","2023-03-23","","375","0","","","","","0","2023-03-23 15:25:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2429","61500-012","61500-012-4","2023-03-23","","375","0","","","","","0","2023-03-23 15:25:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2430","62113-018","62113-018-1","2023-03-22","","0","50","","","","","950","2023-03-23 15:26:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2431","62113-017","62113-017-2","2023-03-23","","500","0","","","","","500","2023-03-23 15:26:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2432","62113-018","62113-018-2","2023-03-23","","500","0","","","","","500","2023-03-23 15:26:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2433","61500-013","61500-013-4","2023-03-23","","250","0","","","","","0","2023-03-23 15:27:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2434","61500-014","61500-014-4","2023-03-23","","250","0","","","","","0","2023-03-23 15:27:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2435","22254-001","22254-001-6","2023-03-23","","0","100","","","","","250","2023-03-23 15:27:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2436","95997-001","95997-001-2","2023-03-23","","300","0","","","","","150","2023-03-23 15:27:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2437","74215-005","74215-005-4","2023-03-23","","250","0","","","","","0","2023-03-23 15:27:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2438","47949-001","47949-001-1","2023-03-23","","250","150","","","","","250","2023-03-23 15:27:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2439","71302-024","71302-024-2","2023-03-23","","90","0","","","","","600","2023-03-23 15:28:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2442","90141-006","90141-006-8","2023-03-24","","50","100","","","","","0","2023-03-25 05:34:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2443","90141-007","90141-007-8","2023-03-24","","50","100","","","","","0","2023-03-25 05:34:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2444","53518-017","53518-017-2","2023-03-24","","200","0","","","","","600","2023-03-25 05:34:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2445","53518-018","53518-018-2","2023-03-24","","200","0","","","","","600","2023-03-25 05:35:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2446","16285-007","16285-007-3","2023-03-24","","125","0","","","","","125","2023-03-25 05:35:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2447","16285-008","16285-008-3","2023-03-24","","125","0","","","","","125","2023-03-25 05:35:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2448","06018-007","06018-007-10","2023-03-24","","25","0","","","","","25","2023-03-25 05:37:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2449","06018-008","06018-008-10","2023-03-24","","25","0","","","","","25","2023-03-25 05:37:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2450","02568-001","02568-001-10","2023-03-24","","0","50","","","","","0","2023-03-25 05:37:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2451","02568-002","02568-002-10","2023-03-24","","0","50","","","","","0","2023-03-25 05:37:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2452","38570-003","38570-003-2","2023-03-24","","100","0","","","","","300","2023-03-25 05:37:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2453","38570-004","38570-004-2","2023-03-24","","100","0","","","","","300","2023-03-25 05:37:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2454","06088-023","06088-023-1","2023-03-24","","125","0","","","","","375","2023-03-25 05:38:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2455","06088-024","06088-024-1","2023-03-24","","125","0","","","","","375","2023-03-25 05:38:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2456","37688-007","37688-007-5","2023-03-24","","475","0","","","","","350","2023-03-25 05:41:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2457","37688-008","37688-008-5","2023-03-24","","475","0","","","","","350","2023-03-25 05:41:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2458","53518-015","53518-015-5","2023-03-24","","200","0","","","","","100","2023-03-25 05:41:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2459","53518-016","53518-016-5","2023-03-24","","200","0","","","","","100","2023-03-25 05:41:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2460","62178-001","62178-001-1","2023-03-24","","375","0","","","","","1125","2023-03-25 05:41:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2462","62113-009","62113-009-3","2023-03-24","","400","0","","","","","400","2023-03-25 05:43:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2463","93406-013","93406-013-1","2023-03-24","","250","0","","","","","750","2023-03-25 05:44:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2464","93406-014","93406-014-1","2023-03-24","","250","0","","","","","750","2023-03-25 05:44:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2465","74838-003","74838-003-3","2023-03-24","","125","0","","","","","0","2023-03-25 05:44:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2466","74838-004","74838-004-3","2023-03-24","","125","0","","","","","0","2023-03-25 05:45:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2467","71302-023","71302-023-2","2023-03-24","","90","0","","","","","600","2023-03-25 05:45:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2471","74215-006","74215-006-2","2023-03-25","","250","0","","","","","500","2023-03-25 11:41:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2473","75994-001","75994-001-3","2023-03-24","","0","100","","","","","0","2023-03-25 11:47:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2474","37688-006","37688-006-5","2023-03-24","","150","0","","","","","2250","2023-03-25 11:47:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2475","10966-003","10966-003-2","2023-03-24","","250","0","","","","","500","2023-03-25 11:47:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2476","93406-013","93406-013-2","2023-03-25","","250","0","","","","","500","2023-03-25 15:11:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2477","16285-013","16285-013-1","2023-03-25","","250","0","","","","","1250","2023-03-25 15:11:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2478","06088-022","06088-022-2","2023-03-25","","250","0","","","","","500","2023-03-25 15:12:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2479","55876-001","55876-001-1","2023-03-25","","100","0","","","","","500","2023-03-25 15:12:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2480","89184-001","89184-001-2","2023-03-25","","250","0","","","","","500","2023-03-25 15:12:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2481","93406-012","93406-012-4","2023-03-25","","250","0","","","","","1050","2023-03-25 15:13:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2482","31571-009","31571-009-1","2023-03-25","","1250","0","","","","","3750","2023-03-25 15:16:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2483","31571-011","31571-011-1","2023-03-25","","625","0","","","","","1875","2023-03-25 15:16:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2484","93406-011","93406-011-4","2023-03-25","","125","0","","","","","0","2023-03-25 15:17:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2485","99242-001","99242-001-10","2023-03-25","","0","50","","","","","0","2023-03-25 15:17:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2486","53651-005","53651-005-1","2023-03-25","","50","0","","","","","450","2023-03-25 15:17:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2488","44800-004","44800-004-7","2023-03-25","","50","0","","","","","1325","2023-03-25 15:18:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2490","93406-014","93406-014-2","2023-03-25","","250","0","","","","","500","2023-03-25 15:19:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2491","93406-010","93406-010-4","2023-03-25","","125","0","","","","","0","2023-03-25 15:20:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2492","99242-002","99242-002-10","2023-03-25","","0","50","","","","","0","2023-03-25 15:20:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2493","53651-004","53651-004-1","2023-03-25","","50","0","","","","","450","2023-03-25 15:20:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2495","44800-003","44800-003-7","2023-03-25","","50","0","","","","","1325","2023-03-25 15:21:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2497","31571-012","31571-012-1","2023-03-25","","625","0","","","","","1875","2023-03-25 15:21:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2498","17708-017","17708-017-4","2023-03-24","","125","0","","","","","0","2023-03-25 15:32:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2499","17708-018","17708-018-4","2023-03-24","","125","0","","","","","0","2023-03-25 15:45:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2500","48512-004","48512-004-2","2023-03-24","","500","0","","","","","0","2023-03-25 16:16:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2501","17708-020","17708-020-1","2023-03-25","","250","0","","","","","750","2023-03-25 16:27:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2502","17708-019","17708-019-1","2023-03-25","","250","0","","","","","750","2023-03-25 16:28:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2503","06018-007","06018-007-10","2023-03-26","","25","0","","","","","0","2023-03-26 15:55:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2504","02568-001","02568-001-10","2023-03-26","","0","100","","","","","0","2023-03-26 15:56:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2505","74215-007","74215-007-1","2023-03-26","","250","0","","","","","750","2023-03-26 15:56:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2506","55876-001","55876-001-2","2023-03-26","","100","0","","","","","400","2023-03-26 15:56:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2507","37688-006","37688-006-6","2023-03-26","","100","0","","","","","2150","2023-03-26 15:56:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2508","37736-007","37736-007-5","2023-03-26","","200","0","","","","","0","2023-03-26 15:56:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2509","16285-013","16285-013-2","2023-03-26","","125","0","","","","","1125","2023-03-26 15:57:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2510","06018-008","06018-008-10","2023-03-26","","25","0","","","","","0","2023-03-26 15:57:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2511","02568-002","02568-002-10","2023-03-26","","0","100","","","","","0","2023-03-26 15:57:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2512","5019-001","5019-001-3","2023-03-27","","750","0","","","","","34500","2023-03-27 09:22:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2513","68601-017","68601-017-2","2023-03-27","","625","0","","","","","1250","2023-03-27 10:24:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2514","38570-005","38570-005-2","2023-03-27","","125","0","","","","","275","2023-03-27 10:24:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2515","85042-021","85042-021-1","2023-03-27","","375","0","","","","","375","2023-03-27 10:25:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2516","53651-002","53651-002-2","2023-03-27","","63","25","","","","","124","2023-03-27 10:25:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2517","69589-013","69589-013-1","2023-03-27","","250","0","","","","","750","2023-03-27 10:25:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2518","32320-002","32320-002-1","2023-03-27","","0","35","","","","","750","2023-03-27 10:25:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2519","89184-003","89184-003-1","2023-03-27","","125","0","","","","","375","2023-03-27 10:25:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2520","74838-005","74838-005-2","2023-03-27","","125","0","","","","","250","2023-03-27 10:26:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2521","06018-009","06018-009-1","2023-03-27","","25","0","","","","","475","2023-03-27 10:26:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2522","68601-019","68601-019-1","2023-03-27","","625","0","","","","","1875","2023-03-27 10:26:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2523","37688-007","37688-007-6","2023-03-27","","75","0","","","","","275","2023-03-27 10:27:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2524","53651-004","53651-004-2","2023-03-27","","200","0","","","","","250","2023-03-27 10:27:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2525","74838-007","74838-007-2","2023-03-27","","125","0","","","","","250","2023-03-27 10:27:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2526","32629-005","32629-005-4","2023-03-27","","100","0","","","","","100","2023-03-27 10:27:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2528","62113-013","62113-013-3","2023-03-27","","250","0","","","","","0","2023-03-27 10:28:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2529","62113-016","62113-016-3","2023-03-27","","250","0","","","","","0","2023-03-27 10:29:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2530","47949-001","47949-001-2","2023-03-27","","200","0","","","","","50","2023-03-27 10:29:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2531","17571-002","17571-002-3","2023-03-27","","625","0","","","","","625","2023-03-27 10:29:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2532","55655-004","55655-004-3","2023-03-27","","250","0","","","","","500","2023-03-27 10:29:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2533","32320-001","32320-001-4","2023-03-27","","0","50","","","","","1500","2023-03-27 10:30:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2534","37688-006","37688-006-7","2023-03-27","","50","0","","","","","2100","2023-03-27 10:30:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2535","68601-018","68601-018-2","2023-03-27","","625","0","","","","","1250","2023-03-27 10:30:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2536","38570-006","38570-006-2","2023-03-27","","125","0","","","","","275","2023-03-27 10:30:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2537","85042-022","85042-022-1","2023-03-27","","375","0","","","","","375","2023-03-27 10:31:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2538","53651-003","53651-003-2","2023-03-27","","63","25","","","","","124","2023-03-27 10:31:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2539","69589-014","69589-014-1","2023-03-27","","250","0","","","","","750","2023-03-27 10:31:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2540","32320-003","32320-003-1","2023-03-27","","0","35","","","","","750","2023-03-27 10:31:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2541","89184-002","89184-002-1","2023-03-27","","125","0","","","","","375","2023-03-27 10:32:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2542","74838-006","74838-006-2","2023-03-27","","125","0","","","","","250","2023-03-27 10:32:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2543","06018-010","06018-010-1","2023-03-27","","25","0","","","","","475","2023-03-27 10:32:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2544","68601-020","68601-020-1","2023-03-27","","625","0","","","","","1875","2023-03-27 10:32:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2545","37688-008","37688-008-6","2023-03-27","","75","0","","","","","275","2023-03-27 10:33:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2546","53651-005","53651-005-2","2023-03-27","","200","0","","","","","250","2023-03-27 10:33:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2547","74838-008","74838-008-2","2023-03-27","","125","0","","","","","250","2023-03-27 10:33:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2548","32629-006","32629-006-4","2023-03-27","","100","0","","","","","100","2023-03-27 10:34:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2549","16285-011","16285-011-1","2023-03-28","","500","25","","","","","0","2023-03-28 11:40:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2550","62113-012","62113-012-3","2023-03-28","","250","0","","","","","0","2023-03-28 11:40:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2551","62113-014","62113-014-3","2023-03-28","","250","0","","","","","0","2023-03-28 11:40:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2552","37688-004","37688-004-9","2023-03-28","","0","100","","","","","1000","2023-03-28 11:41:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2553","17571-003","17571-003-1","2023-03-28","","188","0","","","","","562","2023-03-28 11:41:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2554","89161-001","89161-001-1","2023-03-28","","150","0","","","","","150","2023-03-28 11:42:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2555","06018-009","06018-009-2","2023-03-28","","25","0","","","","","450","2023-03-28 11:42:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2556","44800-003","44800-003-8","2023-03-28","","50","0","","","","","1275","2023-03-28 11:42:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2557","37688-007","37688-007-7","2023-03-28","","50","0","","","","","225","2023-03-28 11:42:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2558","62178-002","62178-002-1","2023-03-28","","125","0","","","","","375","2023-03-28 11:44:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2559","37688-006","37688-006-8","2023-03-28","","100","0","","","","","2000","2023-03-28 14:28:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2560","10966-003","10966-003-3","2023-03-28","","250","0","","","","","250","2023-03-28 14:28:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2561","37389-001","37389-001-1","2023-03-28","","200","0","","","","","300","2023-03-28 14:28:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2562","16285-012","16285-012-1","2023-03-28","","500","25","","","","","0","2023-03-28 14:29:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2564","37688-005","37688-005-10","2023-03-28","","0","100","","","","","1000","2023-03-28 14:29:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2565","17571-004","17571-004-1","2023-03-28","","188","0","","","","","562","2023-03-28 14:30:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2566","06018-010","06018-010-2","2023-03-28","","25","0","","","","","450","2023-03-28 14:30:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2567","44800-004","44800-004-8","2023-03-28","","50","0","","","","","1275","2023-03-28 14:31:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2568","37688-008","37688-008-7","2023-03-28","","50","0","","","","","225","2023-03-28 14:32:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2569","62178-003","62178-003-1","2023-03-28","","125","0","","","","","375","2023-03-28 14:32:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2570","68601-021","68601-021-1","2023-03-29","","1500","0","","","","","0","2023-03-29 13:24:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2571","71302-023","71302-023-3","2023-03-29","","150","0","","","","","450","2023-03-29 13:24:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2572","37688-004","37688-004-10","2023-03-29","","0","50","","","","","1000","2023-03-29 13:24:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2573","98925-009","98925-009-4","2023-03-29","","75","0","","","","","175","2023-03-29 13:25:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2574","06088-020","06088-020-3","2023-03-29","","250","0","","","","","0","2023-03-29 13:25:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2575","53518-017","53518-017-3","2023-03-29","","200","0","","","","","400","2023-03-29 13:25:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2576","32320-002","32320-002-2","2023-03-29","","0","20","","","","","750","2023-03-29 13:25:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2578","95385-005","95385-005-2","2023-03-29","","0","25","","","","","162","2023-03-29 13:27:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2579","06018-009","06018-009-3","2023-03-29","","25","0","","","","","425","2023-03-29 13:28:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2580","44800-003","44800-003-9","2023-03-29","","1275","600","","","","","0","2023-03-29 13:28:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2581","73417-003","73417-003-3","2023-03-29","","125","0","","","","","0","2023-03-29 13:29:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2582","38570-003","38570-003-3","2023-03-29","","100","0","","","","","200","2023-03-29 13:29:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2583","85042-017","85042-017-4","2023-03-29","","150","0","","","","","150","2023-03-29 13:29:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2584","17599-001","17599-001-2","2023-03-29","","250","0","","","","","230","2023-03-29 13:30:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2586","53518-015","53518-015-6","2023-03-29","","100","100","","","","","0","2023-03-29 13:32:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2587","69589-015","69589-015-1","2023-03-29","","250","0","","","","","750","2023-03-29 13:32:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2588","62178-001","62178-001-2","2023-03-29","","375","0","","","","","750","2023-03-29 13:32:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2589","89184-001","89184-001-3","2023-03-30","","250","0","","","","","250","2023-03-30 03:49:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2590","37389-001","37389-001-2","2023-03-30","","100","0","","","","","200","2023-03-30 03:49:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2591","32320-001","32320-001-5","2023-03-30","","30","0","","","","","1470","2023-03-30 03:49:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2592","37688-006","37688-006-9","2023-03-30","","100","0","","","","","1900","2023-03-30 03:49:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2593","68601-022","68601-022-1","2023-03-30","","1500","0","","","","","0","2023-03-30 03:49:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2594","71302-024","71302-024-3","2023-03-30","","150","0","","","","","450","2023-03-30 03:50:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2595","37688-005","37688-005-10","2023-03-30","","0","50","","","","","1000","2023-03-30 03:50:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2596","98925-010","98925-010-4","2023-03-30","","75","0","","","","","175","2023-03-30 03:50:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2597","06088-021","06088-021-3","2023-03-30","","250","0","","","","","0","2023-03-30 03:51:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2598","53518-018","53518-018-3","2023-03-30","","200","0","","","","","400","2023-03-30 03:51:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2599","32320-003","32320-003-2","2023-03-30","","0","20","","","","","750","2023-03-30 03:51:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2600","95385-004","95385-004-2","2023-03-30","","0","25","","","","","162","2023-03-30 03:51:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2601","06018-010","06018-010-3","2023-03-30","","25","0","","","","","425","2023-03-30 03:52:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2602","44800-004","44800-004-9","2023-03-30","","1275","600","","","","","0","2023-03-30 03:52:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2603","73417-004","73417-004-3","2023-03-30","","125","0","","","","","0","2023-03-30 03:52:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2604","38570-004","38570-004-3","2023-03-30","","100","0","","","","","200","2023-03-30 03:52:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2605","85042-018","85042-018-4","2023-03-30","","150","0","","","","","150","2023-03-30 03:53:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2606","17599-002","17599-002-2","2023-03-30","","250","0","","","","","230","2023-03-30 03:53:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2607","53518-016","53518-016-6","2023-03-30","","100","100","","","","","0","2023-03-30 03:53:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2608","69589-016","69589-016-1","2023-03-30","","250","0","","","","","750","2023-03-30 03:54:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2609","98925-009","98925-009-5","2023-03-30","","50","0","","","","","125","2023-03-30 15:06:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2610","62113-019","62113-019-1","2023-03-30","","188","0","","","","","562","2023-03-30 15:06:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2611","74215-006","74215-006-3","2023-03-30","","250","0","","","","","250","2023-03-30 15:07:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2612","89161-001","89161-001-2","2023-03-30","","150","0","","","","","0","2023-03-30 15:07:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2613","22254-001","22254-001-7","2023-03-30","","0","50","","","","","250","2023-03-30 15:07:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2614","06018-009","06018-009-4","2023-03-30","","325","0","","","","","400","2023-03-30 15:08:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2615","37736-008","37736-008-3","2023-03-30","","200","0","","","","","100","2023-03-30 15:08:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2616","37688-007","37688-007-8","2023-03-30","","50","0","","","","","175","2023-03-30 15:08:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2617","62113-020","62113-020-1","2023-03-30","","188","0","","","","","562","2023-03-30 15:09:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2618","31571-010","31571-010-2","2023-03-30","","1250","0","","","","","2500","2023-03-30 15:16:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2619","67294-001","67294-001-1","2023-03-30","","200","0","","","","","300","2023-03-30 15:17:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2620","81922-001","81922-001-1","2023-03-30","","500","0","","","","","0","2023-03-30 15:17:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2621","55876-001","55876-001-3","2023-03-30","","100","0","","","","","300","2023-03-30 15:18:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2622","89184-001","89184-001-4","2023-03-30","","250","0","","","","","0","2023-03-30 15:18:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2623","32320-001","32320-001-6","2023-03-30","","0","30","","","","","1470","2023-03-30 15:18:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2624","16285-013","16285-013-3","2023-03-30","","200","0","","","","","925","2023-03-30 15:18:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2625","98925-010","98925-010-5","2023-03-30","","50","0","","","","","125","2023-03-30 15:23:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2626","06018-010","06018-010-4","2023-03-30","","325","0","","","","","100","2023-03-30 15:23:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2627","37736-009","37736-009-3","2023-03-30","","200","0","","","","","100","2023-03-30 15:23:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2628","37688-008","37688-008-8","2023-03-30","","50","0","","","","","175","2023-03-30 15:23:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2629","85033-001","85033-001-1","2023-03-31","","500","0","","","","","0","2023-04-02 13:12:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2630","74838-003","74838-003-4","2023-03-31","","125","0","","","","","0","2023-04-02 13:12:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2631","37688-004","37688-004-10","2023-03-31","","0","50","","","","","1000","2023-04-02 13:13:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2632","31571-012","31571-012-2","2023-03-31","","625","0","","","","","1250","2023-04-02 13:17:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2633","43617-015","43617-015-1","2023-03-31","","300","0","","","","","1200","2023-04-02 13:18:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2634","53651-002","53651-002-3","2023-03-31","","63","0","","","","","61","2023-04-02 13:18:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2635","16285-007","16285-007-4","2023-03-31","","125","0","","","","","0","2023-04-02 13:18:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2636","69589-013","69589-013-2","2023-03-31","","250","0","","","","","500","2023-04-02 13:19:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2637","17708-021","17708-021-1","2023-03-31","","188","0","","","","","562","2023-04-02 13:19:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2638","99016-002","99016-002-1","2023-03-31","","160","0","","","","","140","2023-04-02 13:19:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2639","32320-002","32320-002-3","2023-03-31","","0","15","","","","","750","2023-04-02 13:20:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2640","32320-001","32320-001-7","2023-03-31","","30","0","","","","","1440","2023-04-02 13:20:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2641","16285-013","16285-013-4","2023-03-31","","175","0","","","","","750","2023-04-02 13:21:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2642","31571-009","31571-009-2","2023-03-31","","1250","0","","","","","2500","2023-04-02 13:21:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2643","37389-001","37389-001-3","2023-03-31","","100","0","","","","","100","2023-04-02 13:21:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2644","74838-004","74838-004-4","2023-03-31","","125","0","","","","","0","2023-04-02 13:22:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2645","37688-005","37688-005-10","2023-03-31","","0","50","","","","","1000","2023-04-02 13:22:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2646","31571-011","31571-011-2","2023-03-31","","625","0","","","","","1250","2023-04-02 13:22:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2647","43617-016","43617-016-1","2023-03-31","","300","0","","","","","1200","2023-04-02 13:23:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2648","53651-003","53651-003-3","2023-03-31","","63","0","","","","","61","2023-04-02 13:23:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2649","16285-008","16285-008-4","2023-03-31","","125","0","","","","","0","2023-04-02 13:25:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2650","69589-014","69589-014-2","2023-03-31","","250","0","","","","","500","2023-04-02 13:26:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2651","17708-022","17708-022-1","2023-03-31","","188","0","","","","","562","2023-04-02 13:26:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2652","99016-001","99016-001-2","2023-03-31","","10","0","","","","","140","2023-04-02 13:26:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2653","32320-003","32320-003-3","2023-03-31","","0","15","","","","","750","2023-04-02 13:27:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2654","02568-002","02568-002-10","2023-03-31","","0","50","","","","","0","2023-04-02 13:27:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2655","06088-024","06088-024-2","2023-03-31","","125","0","","","","","250","2023-04-02 13:27:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2656","31571-011","31571-011-3","2023-03-31","","0","75","","","","","1250","2023-04-02 13:28:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2657","53651-005","53651-005-3","2023-03-31","","250","200","","","","","0","2023-04-02 13:28:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2658","02568-001","02568-001-10","2023-03-31","","0","50","","","","","0","2023-04-02 13:29:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2659","06088-023","06088-023-2","2023-03-31","","125","0","","","","","250","2023-04-02 13:30:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2660","31571-010","31571-010-3","2023-03-31","","0","75","","","","","2500","2023-04-02 13:30:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2661","53651-004","53651-004-3","2023-03-31","","250","200","","","","","0","2023-04-02 13:31:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2662","74215-007","74215-007-2","2023-03-31","","250","0","","","","","500","2023-04-02 13:31:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2663","85042-019","85042-019-3","2023-04-01","","188","0","","","","","186","2023-04-02 13:36:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2664","16285-016","16285-016-1","2023-04-01","","125","0","","","","","625","2023-04-02 13:37:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2665","89184-003","89184-003-2","2023-04-01","","375","0","","","","","0","2023-04-02 13:37:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2666","38570-005","38570-005-3","2023-04-01","","125","0","","","","","150","2023-04-02 13:38:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2667","74838-005","74838-005-3","2023-04-01","","125","0","","","","","125","2023-04-02 13:38:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2668","32320-002","32320-002-4","2023-04-01","","0","15","","","","","750","2023-04-02 13:38:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2669","37389-003","37389-003-1","2023-04-01","","50","0","","","","","200","2023-04-02 13:39:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2670","89161-002","89161-002-1","2023-04-01","","63","0","","","","","187","2023-04-02 13:39:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2671","17708-019","17708-019-2","2023-04-01","","250","0","","","","","500","2023-04-02 13:40:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2672","74838-007","74838-007-3","2023-04-01","","125","0","","","","","125","2023-04-02 13:40:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2673","37688-007","37688-007-9","2023-04-01","","50","0","","","","","125","2023-04-02 13:40:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2674","32629-005","32629-005-5","2023-04-01","","100","0","","","","","0","2023-04-02 13:41:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2675","89184-004","89184-004-1","2023-04-01","","125","0","","","","","375","2023-04-02 13:41:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2676","47949-002","47949-002-1","2023-04-02","","75","0","","","","","175","2023-04-02 13:42:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2677","68601-019","68601-019-2","2023-04-02","","625","0","","","","","1250","2023-04-02 13:42:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2678","37736-008","37736-008-4","2023-04-02","","100","0","","","","","0","2023-04-02 13:43:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2679","85042-017","85042-017-5","2023-04-02","","150","0","","","","","0","2023-04-02 13:43:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2680","62178-002","62178-002-2","2023-04-02","","125","0","","","","","250","2023-04-02 13:43:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2681","37688-006","37688-006-10","2023-04-02","","100","0","","","","","1800","2023-04-02 13:44:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2682","74215-008","74215-008-1","2023-04-02","","250","0","","","","","750","2023-04-02 13:44:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2683","49030-001","49030-001-1","2023-04-02","","60","0","","","","","440","2023-04-02 13:44:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2684","06088-022","06088-022-3","2023-04-02","","500","0","","","","","0","2023-04-02 13:45:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2685","69369-001","69369-001-1","2023-04-02","","375","0","","","","","1125","2023-04-02 13:45:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2686","55876-001","55876-001-4","2023-04-02","","300","0","","","","","0","2023-04-02 13:45:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2687","37389-001","37389-001-4","2023-04-02","","100","100","","","","","0","2023-04-02 13:46:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2688","17708-020","17708-020-2","2023-04-02","","250","0","","","","","500","2023-04-02 13:46:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2689","74838-008","74838-008-3","2023-04-02","","125","0","","","","","125","2023-04-02 13:47:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2690","37688-008","37688-008-9","2023-04-02","","50","0","","","","","125","2023-04-02 13:47:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2691","32629-006","32629-006-5","2023-04-02","","100","0","","","","","0","2023-04-02 13:47:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2692","89184-005","89184-005-1","2023-04-02","","125","0","","","","","375","2023-04-02 13:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2693","85042-020","85042-020-3","2023-04-02","","188","0","","","","","186","2023-04-02 13:48:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2694","16285-017","16285-017-1","2023-04-02","","125","0","","","","","625","2023-04-02 13:49:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2695","89184-002","89184-002-2","2023-04-02","","375","0","","","","","0","2023-04-02 13:50:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2696","38570-006","38570-006-3","2023-04-02","","125","0","","","","","150","2023-04-02 13:50:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2697","74838-006","74838-006-3","2023-04-02","","125","0","","","","","125","2023-04-02 13:50:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2698","32320-003","32320-003-4","2023-04-02","","0","15","","","","","750","2023-04-02 13:51:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2699","37389-002","37389-002-1","2023-04-02","","50","0","","","","","200","2023-04-02 13:51:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2700","89161-003","89161-003-1","2023-04-02","","63","0","","","","","187","2023-04-02 13:52:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2701","32320-002","32320-002-5","2023-04-03","","0","15","","","","","750","2023-04-03 11:26:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2702","68601-017","68601-017-3","2023-04-03","","625","0","","","","","625","2023-04-03 11:26:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2703","74215-006","74215-006-4","2023-04-03","","250","0","","","","","0","2023-04-03 11:26:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2704","38570-003","38570-003-4","2023-04-03","","100","0","","","","","100","2023-04-03 11:27:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2705","98481-001","98481-001-1","2023-04-03","","250","0","","","","","750","2023-04-03 11:27:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2706","81922-002","81922-002-1","2023-04-03","","250","0","","","","","750","2023-04-03 11:27:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2707","10966-003","10966-003-4","2023-04-03","","250","0","","","","","0","2023-04-03 11:28:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2708","55655-004","55655-004-4","2023-04-03","","250","0","","","","","250","2023-04-03 11:28:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2709","32320-001","32320-001-8","2023-04-03","","60","0","","","","","1380","2023-04-03 11:28:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2710","37688-006","37688-006-10","2023-04-03","","100","0","","","","","1700","2023-04-03 11:29:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2712","47949-003","47949-003-1","2023-04-03","","75","0","","","","","175","2023-04-03 11:29:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2713","68601-020","68601-020-2","2023-04-03","","625","0","","","","","1250","2023-04-03 11:29:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2714","37736-009","37736-009-4","2023-04-03","","100","0","","","","","0","2023-04-03 11:29:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2715","85042-018","85042-018-5","2023-04-03","","150","0","","","","","0","2023-04-03 11:30:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2716","62178-003","62178-003-2","2023-04-03","","125","0","","","","","250","2023-04-03 11:30:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2717","32320-001","32320-001-9","2023-04-03","","30","0","","","","","1350","2023-04-03 15:02:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2718","32320-003","32320-003-5","2023-04-03","","0","15","","","","","750","2023-04-03 15:03:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2719","68601-018","68601-018-3","2023-04-03","","625","0","","","","","625","2023-04-03 15:03:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2720","38570-004","38570-004-4","2023-04-03","","100","0","","","","","100","2023-04-03 15:05:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2721","37688-005","37688-005-10","2023-04-03","","0","150","","","","","1000","2023-04-03 15:06:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2722","17571-004","17571-004-2","2023-04-03","","188","0","","","","","374","2023-04-03 15:06:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2723","71831-003","71831-003-1","2023-04-03","","500","0","","","","","500","2023-04-03 15:06:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2724","71302-024","71302-024-4","2023-04-03","","150","0","","","","","300","2023-04-03 15:07:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2725","17571-003","17571-003-2","2023-04-03","","188","0","","","","","374","2023-04-03 15:07:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2726","71302-023","71302-023-4","2023-04-03","","150","0","","","","","300","2023-04-03 15:07:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2727","37688-004","37688-004-10","2023-04-03","","0","150","","","","","1000","2023-04-03 15:08:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2728","71831-002","71831-002-1","2023-04-03","","500","0","","","","","500","2023-04-03 15:08:24");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2729","32320-002","32320-002-6","2023-04-04","","0","15","","","","","750","2023-04-05 03:57:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2730","68601-017","68601-017-4","2023-04-04","","625","0","","","","","0","2023-04-05 03:57:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2731","62178-005","62178-005-1","2023-04-04","","188","0","","","","","562","2023-04-05 03:57:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2732","17708-021","17708-021-2","2023-04-04","","188","0","","","","","374","2023-04-05 03:57:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2733","74838-005","74838-005-4","2023-04-04","","125","0","","","","","0","2023-04-05 03:58:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2734","37688-007","37688-007-10","2023-04-04","","50","0","","","","","75","2023-04-05 03:58:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2735","02568-001","02568-001-10","2023-04-04","","0","50","","","","","0","2023-04-05 03:58:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2736","62113-022","62113-022-1","2023-04-04","","125","0","","","","","875","2023-04-05 04:04:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2737","62178-004","62178-004-1","2023-04-04","","188","0","","","","","562","2023-04-05 04:05:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2738","62178-001","62178-001-3","2023-04-04","","750","100","","","","","0","2023-04-05 04:05:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2739","74215-007","74215-007-3","2023-04-04","","500","0","","","","","0","2023-04-05 04:06:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2740","89184-006","89184-006-1","2023-04-04","","250","0","","","","","750","2023-04-05 04:06:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2741","16285-013","16285-013-5","2023-04-04","","750","0","","","","","0","2023-04-05 04:07:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2742","49030-001","49030-001-2","2023-04-04","","440","300","","","","","0","2023-04-05 04:08:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2743","37688-006","37688-006-10","2023-04-04","","50","0","","","","","1650","2023-04-05 04:08:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2744","32320-003","32320-003-6","2023-04-04","","0","15","","","","","750","2023-04-05 04:08:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2745","68601-018","68601-018-4","2023-04-04","","625","0","","","","","0","2023-04-05 04:09:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2746","17708-022","17708-022-2","2023-04-04","","188","0","","","","","374","2023-04-05 04:09:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2747","74838-006","74838-006-4","2023-04-04","","125","0","","","","","0","2023-04-05 04:09:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2748","37688-008","37688-008-10","2023-04-04","","50","0","","","","","75","2023-04-05 04:10:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2749","02568-002","02568-002-10","2023-04-04","","0","50","","","","","0","2023-04-05 04:10:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2750","68601-023","68601-023-1","2023-04-04","","1500","0","","","","","0","2023-04-05 04:13:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2751","16285-014","16285-014-1","2023-04-04","","0","175","","","","","500","2023-04-05 04:21:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2752","37688-004","37688-004-10","2023-04-04","","0","50","","","","","1000","2023-04-05 04:22:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2753","62113-021","62113-021-1","2023-04-04","","125","0","","","","","875","2023-04-05 04:22:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2754","62113-019","62113-019-2","2023-04-05","","188","0","","","","","374","2023-04-05 11:44:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2755","98925-009","98925-009-6","2023-04-05","","75","0","","","","","50","2023-04-05 11:45:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2756","95385-006","95385-006-3","2023-04-05","","250","350","","","","","0","2023-04-05 11:45:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2757","53651-002","53651-002-4","2023-04-05","","61","27","","","","","0","2023-04-05 11:46:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2758","99016-002","99016-002-2","2023-04-05","","40","0","","","","","100","2023-04-05 11:46:47");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2759","31229-001","31229-001-2","2023-04-05","","0","15","","","","","200","2023-04-05 11:47:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2760","81922-003","81922-003-1","2023-04-05","","63","0","","","","","187","2023-04-05 11:47:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2761","06088-025","06088-025-1","2023-04-05","","75","0","","","","","425","2023-04-05 11:47:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2762","89161-002","89161-002-2","2023-04-05","","63","0","","","","","124","2023-04-05 11:47:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2763","53651-006","53651-006-1","2023-04-05","","250","0","","","","","250","2023-04-05 11:49:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2764","62113-021","62113-021-2","2023-04-05","","125","0","","","","","750","2023-04-05 11:50:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2765","37688-004","37688-004-10","2023-04-05","","0","50","","","","","1000","2023-04-05 11:50:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2766","37688-007","37688-007-10","2023-04-05","","50","0","","","","","25","2023-04-05 11:51:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2767","74838-007","74838-007-4","2023-04-05","","125","0","","","","","0","2023-04-05 11:51:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2768","69589-015","69589-015-2","2023-04-05","","250","0","","","","","500","2023-04-05 11:51:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2769","89184-004","89184-004-2","2023-04-05","","125","0","","","","","250","2023-04-05 11:51:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2770","62113-017","62113-017-3","2023-04-05","","250","0","","","","","250","2023-04-05 11:52:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2771","62113-022","62113-022-2","2023-04-05","","125","0","","","","","750","2023-04-05 11:52:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2772","62113-020","62113-020-2","2023-04-05","","188","0","","","","","374","2023-04-05 11:52:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2774","18277-001","18277-001-1","2023-04-05","","500","0","","","","","0","2023-04-05 11:57:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2775","37688-006","37688-006-10","2023-04-05","","50","0","","","","","1600","2023-04-05 13:15:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2776","17571-005","17571-005-1","2023-04-05","","500","0","","","","","1500","2023-04-05 13:15:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2777","17571-002","17571-002-4","2023-04-05","","625","0","","","","","0","2023-04-05 13:16:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2778","31571-009","31571-009-3","2023-04-05","","2500","0","","","","","0","2023-04-05 13:16:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2779","68601-024","68601-024-1","2023-04-05","","1500","0","","","","","0","2023-04-05 13:16:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2780","16285-015","16285-015-1","2023-04-05","","0","175","","","","","500","2023-04-05 13:17:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2781","37688-005","37688-005-10","2023-04-05","","0","100","","","","","1000","2023-04-05 13:17:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2782","53651-007","53651-007-1","2023-04-05","","250","0","","","","","250","2023-04-05 13:17:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2783","98925-010","98925-010-6","2023-04-05","","75","0","","","","","50","2023-04-05 13:18:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2784","53651-003","53651-003-4","2023-04-05","","61","27","","","","","0","2023-04-05 13:18:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2785","99016-001","99016-001-3","2023-04-05","","40","0","","","","","100","2023-04-05 13:18:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2786","31229-002","31229-002-2","2023-04-05","","0","15","","","","","150","2023-04-05 13:18:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2787","81922-004","81922-004-1","2023-04-05","","63","0","","","","","187","2023-04-05 13:19:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2788","06088-026","06088-026-1","2023-04-05","","75","0","","","","","425","2023-04-05 13:19:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2789","89161-003","89161-003-2","2023-04-05","","63","0","","","","","124","2023-04-05 13:19:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2790","37688-008","37688-008-10","2023-04-05","","50","0","","","","","25","2023-04-05 13:19:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2791","74838-008","74838-008-4","2023-04-05","","125","0","","","","","0","2023-04-05 13:20:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2792","69589-016","69589-016-2","2023-04-05","","250","0","","","","","500","2023-04-05 13:20:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2794","89184-005","89184-005-2","2023-04-05","","125","0","","","","","250","2023-04-05 13:20:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2795","62113-018","62113-018-3","2023-04-05","","250","0","","","","","250","2023-04-05 13:21:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2796","62113-009","62113-009-4","2023-04-05","","400","0","","","","","0","2023-04-06 10:24:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2797","53651-006","53651-006-2","2023-04-06","","250","0","","","","","0","2023-04-06 16:46:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2798","92479-015","92479-015-4","2023-04-06","","450","0","","","","","50","2023-04-06 16:46:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2799","18277-001","18277-001-2","2023-04-06","","0","500","","","","","0","2023-04-06 16:50:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2800","37688-007","37688-007-10","2023-04-06","","25","0","","","","","0","2023-04-06 16:51:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2801","31571-010","31571-010-4","2023-04-06","","2500","100","","","","","0","2023-04-06 16:52:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2802","92479-017","92479-017-1","2023-04-06","","400","0","","","","","100","2023-04-06 16:52:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2803","53651-008","53651-008-1","2023-04-06","","125","0","","","","","375","2023-04-06 16:53:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2805","32320-002","32320-002-7","2023-04-06","","750","0","","","","","0","2023-04-06 16:56:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2806","43617-015","43617-015-2","2023-04-06","","300","0","","","","","900","2023-04-06 16:57:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2807","92479-013","92479-013-3","2023-04-06","","150","0","","","","","100","2023-04-06 16:57:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2808","85042-019","85042-019-4","2023-04-06","","186","2","","","","","0","2023-04-06 16:58:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2809","89184-007","89184-007-1","2023-04-06","","188","0","","","","","562","2023-04-06 16:58:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2810","06088-025","06088-025-2","2023-04-06","","50","0","","","","","375","2023-04-06 16:59:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2811","38570-005","38570-005-4","2023-04-06","","100","0","","","","","50","2023-04-06 17:04:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2812","95385-006","95385-006-4","2023-04-06","","0","200","","","","","0","2023-04-06 17:04:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2813","98925-009","98925-009-7","2023-04-06","","50","0","","","","","0","2023-04-06 17:05:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2814","16285-016","16285-016-2","2023-04-06","","100","0","","","","","525","2023-04-06 17:09:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2815","32320-001","32320-001-10","2023-04-06","","1350","150","","","","","0","2023-04-06 17:11:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2816","53651-007","53651-007-2","2023-04-06","","250","0","","","","","0","2023-04-06 17:11:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2817","92479-016","92479-016-4","2023-04-06","","450","0","","","","","50","2023-04-06 17:11:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2818","37688-008","37688-008-10","2023-04-06","","25","0","","","","","0","2023-04-06 17:12:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2819","31571-011","31571-011-4","2023-04-06","","0","100","","","","","1250","2023-04-06 17:12:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2820","92479-018","92479-018-1","2023-04-06","","400","0","","","","","100","2023-04-06 17:13:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2821","92479-014","92479-014-3","2023-04-06","","150","0","","","","","100","2023-04-06 17:13:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2822","92479-011","92479-011-3","2023-04-06","","150","0","","","","","100","2023-04-06 17:14:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2823","92479-012","92479-012-2","2023-04-06","","150","0","","","","","100","2023-04-06 17:14:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2824","85042-020","85042-020-4","2023-04-06","","186","2","","","","","0","2023-04-06 17:15:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2825","89184-008","89184-008-1","2023-04-06","","188","0","","","","","562","2023-04-06 17:15:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2827","06088-026","06088-026-2","2023-04-06","","50","0","","","","","375","2023-04-06 17:16:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2828","38570-006","38570-006-4","2023-04-06","","100","0","","","","","50","2023-04-06 17:17:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2829","98925-010","98925-010-7","2023-04-06","","50","0","","","","","0","2023-04-06 17:17:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2830","16285-017","16285-017-2","2023-04-06","","100","0","","","","","525","2023-04-06 17:17:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2831","32320-003","32320-003-7","2023-04-06","","750","0","","","","","0","2023-04-06 17:24:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2832","53651-009","53651-009-1","2023-04-06","","125","0","","","","","375","2023-04-06 17:25:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2833","43617-016","43617-016-2","2023-04-06","","300","0","","","","","900","2023-04-06 17:26:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2834","01461-001","01461-001-1","2023-04-06","","75","0","","","","","1425","2023-04-07 03:51:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2835","16285-016","16285-016-3","2023-04-07","","88","0","","","","","437","2023-04-07 12:26:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2836","31571-012","31571-012-3","2023-04-07","","1250","100","","","","","0","2023-04-07 12:26:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2837","95385-005","95385-005-3","2023-04-07","","162","338","","","","","0","2023-04-07 12:26:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2838","74215-009","74215-009-1","2023-04-07","","375","0","","","","","1125","2023-04-07 12:27:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2839","69589-013","69589-013-3","2023-04-07","","250","0","","","","","250","2023-04-07 12:27:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2840","53651-014","53651-014-1","2023-04-07","","0","250","","","","","500","2023-04-07 12:31:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2841","71302-023","71302-023-5","2023-04-07","","100","0","","","","","200","2023-04-07 12:31:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2842","62113-021","62113-021-3","2023-04-07","","250","0","","","","","500","2023-04-07 12:31:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2843","88242-002","88242-002-1","2023-04-07","","150","0","","","","","0","2023-04-07 12:32:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2844","88242-001","88242-001-1","2023-04-07","","300","0","","","","","0","2023-04-07 12:32:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2845","06088-023","06088-023-3","2023-04-07","","250","0","","","","","0","2023-04-07 12:33:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2846","85042-023","85042-023-1","2023-04-07","","188","0","","","","","562","2023-04-07 12:33:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2847","68601-019","68601-019-3","2023-04-07","","625","0","","","","","625","2023-04-07 12:34:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2848","47949-002","47949-002-2","2023-04-07","","75","0","","","","","100","2023-04-07 12:34:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2849","62178-002","62178-002-3","2023-04-07","","250","0","","","","","0","2023-04-07 12:35:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2850","62113-022","62113-022-3","2023-04-07","","250","0","","","","","500","2023-04-07 12:36:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2851","01461-001","01461-001-2","2023-04-07","","75","0","","","","","1350","2023-04-07 12:36:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2852","81922-002","81922-002-2","2023-04-07","","250","0","","","","","500","2023-04-07 12:37:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2853","93406-012","93406-012-5","2023-04-07","","250","0","","","","","800","2023-04-07 12:37:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2854","53651-015","53651-015-1","2023-04-07","","0","250","","","","","500","2023-04-07 12:38:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2855","71302-024","71302-024-5","2023-04-07","","100","0","","","","","200","2023-04-07 12:38:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2856","16285-017","16285-017-3","2023-04-07","","88","0","","","","","437","2023-04-07 12:39:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2857","31571-011","31571-011-5","2023-04-07","","1250","100","","","","","0","2023-04-07 12:39:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2858","95385-004","95385-004-3","2023-04-07","","162","338","","","","","0","2023-04-07 12:39:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2859","69589-014","69589-014-3","2023-04-07","","250","0","","","","","250","2023-04-07 12:40:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2860","06088-024","06088-024-3","2023-04-07","","250","0","","","","","0","2023-04-07 12:40:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2861","85042-024","85042-024-1","2023-04-07","","188","0","","","","","562","2023-04-07 12:40:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2862","68601-020","68601-020-3","2023-04-07","","625","0","","","","","625","2023-04-07 12:41:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2863","47949-003","47949-003-2","2023-04-07","","75","0","","","","","100","2023-04-07 12:41:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2864","17571-003","17571-003-3","2023-04-08","","188","0","","","","","186","2023-04-08 10:10:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2865","71302-023","71302-023-6","2023-04-08","","50","0","","","","","150","2023-04-08 10:10:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2866","37688-004","37688-004-10","2023-04-08","","0","50","","","","","1000","2023-04-08 10:10:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2867","93406-013","93406-013-3","2023-04-08","","125","0","","","","","375","2023-04-08 10:11:10");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2868","62178-007","62178-007-1","2023-04-08","","0","250","","","","","500","2023-04-08 10:11:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2869","85033-002","85033-002-1","2023-04-08","","430","0","","","","","70","2023-04-08 10:13:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2870","37736-008","37736-008-5","2023-04-08","","0","150","","","","","0","2023-04-08 13:44:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2871","37688-007","37688-007-10","2023-04-08","","0","100","","","","","0","2023-04-08 13:44:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2872","02568-001","02568-001-10","2023-04-08","","0","25","","","","","0","2023-04-08 13:44:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2873","38570-003","38570-003-5","2023-04-08","","100","0","","","","","0","2023-04-08 13:45:03");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2874","63744-010","63744-010-1","2023-04-08","","100","0","","","","","400","2023-04-08 13:45:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2875","17708-019","17708-019-3","2023-04-08","","250","0","","","","","250","2023-04-08 13:45:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2876","53651-008","53651-008-2","2023-04-08","","50","0","","","","","325","2023-04-08 13:45:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2877","69369-002","69369-002-1","2023-04-08","","188","0","","","","","562","2023-04-08 13:48:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2878","62178-008","62178-008-1","2023-04-08","","0","250","","","","","500","2023-04-08 13:49:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2879","62178-006","62178-006-1","2023-04-08","","100","0","","","","","1400","2023-04-08 13:49:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2880","98481-001","98481-001-2","2023-04-08","","250","0","","","","","500","2023-04-08 14:02:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2881","62113-009","62113-009-5","2023-04-08","","0","400","","","","","0","2023-04-08 14:02:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2882","74215-010","74215-010-1","2023-04-08","","375","0","","","","","1125","2023-04-08 14:03:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2883","01461-001","01461-001-3","2023-04-08","","75","0","","","","","1275","2023-04-08 14:03:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2884","17571-003","17571-003-4","2023-04-08","","186","1","","","","","0","2023-04-08 14:04:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2885","53651-012","53651-012-1","2023-04-08","","25","0","","","","","475","2023-04-08 14:10:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2886","53651-010","53651-010-1","2023-04-08","","63","0","","","","","187","2023-04-08 14:11:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2887","74838-010","74838-010-1","2023-04-08","","125","0","","","","","375","2023-04-08 14:11:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2888","10925-001","10925-001-1","2023-04-09","","150","0","","","","","350","2023-04-08 17:10:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2889","69369-001","69369-001-2","2023-04-09","","375","0","","","","","750","2023-04-08 17:10:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2890","74215-008","74215-008-2","2023-04-09","","250","0","","","","","500","2023-04-08 17:19:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2891","37688-006","37688-006-10","2023-04-09","","100","0","","","","","1500","2023-04-08 17:20:11");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2892","53651-013","53651-013-1","2023-04-09","","25","0","","","","","475","2023-04-08 17:20:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2893","17571-004","17571-004-3","2023-04-09","","374","1","","","","","0","2023-04-08 17:21:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2894","71302-024","71302-024-6","2023-04-09","","50","0","","","","","150","2023-04-08 17:21:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2895","37688-005","37688-005-10","2023-04-09","","0","50","","","","","1000","2023-04-08 17:22:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2896","93406-014","93406-014-3","2023-04-09","","125","0","","","","","375","2023-04-08 17:22:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2897","53651-011","53651-011-1","2023-04-09","","63","0","","","","","187","2023-04-08 17:23:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2898","74838-009","74838-009-1","2023-04-09","","125","0","","","","","375","2023-04-08 17:24:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2899","37736-009","37736-009-5","2023-04-09","","0","150","","","","","0","2023-04-08 17:24:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2900","37688-008","37688-008-10","2023-04-09","","0","100","","","","","0","2023-04-08 17:24:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2901","02568-002","02568-002-10","2023-04-09","","0","25","","","","","0","2023-04-08 17:24:49");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2902","38570-004","38570-004-5","2023-04-09","","100","0","","","","","0","2023-04-08 17:25:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2903","63744-011","63744-011-1","2023-04-09","","100","0","","","","","400","2023-04-08 17:25:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2904","17708-020","17708-020-3","2023-04-09","","250","0","","","","","250","2023-04-08 17:26:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2905","53651-009","53651-009-2","2023-04-09","","50","0","","","","","325","2023-04-08 17:26:29");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2906","69369-003","69369-003-1","2023-04-09","","188","0","","","","","562","2023-04-08 17:26:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2907","62178-005","62178-005-2","2023-04-09","","0","50","","","","","562","2023-04-09 10:30:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2908","89161-002","89161-002-3","2023-04-09","","124","1","","","","","0","2023-04-09 10:30:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2909","17708-021","17708-021-3","2023-04-09","","188","0","","","","","186","2023-04-09 10:30:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2910","81922-003","81922-003-2","2023-04-09","","63","0","","","","","124","2023-04-09 10:30:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2911","53651-014","53651-014-2","2023-04-09","","250","0","","","","","250","2023-04-09 15:11:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2912","74838-013","74838-013-1","2023-04-09","","125","0","","","","","375","2023-04-09 15:11:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2913","47877-001","47877-001-3","2023-04-09","","0","300","","","","","1000","2023-04-09 15:11:48");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2914","98689-001","98689-001-1","2023-04-09","","500","0","","","","","0","2023-04-09 15:12:08");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2915","53651-008","53651-008-3","2023-04-09","","325","50","","","","","0","2023-04-09 15:16:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2916","47949-002","47949-002-3","2023-04-09","","100","0","","","","","0","2023-04-09 15:16:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2917","62178-004","62178-004-2","2023-04-09","","0","50","","","","","562","2023-04-09 15:17:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2918","62178-006","62178-006-2","2023-04-09","","100","0","","","","","1300","2023-04-09 15:17:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2919","01461-001","01461-001-4","2023-04-09","","75","0","","","","","1200","2023-04-09 15:17:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2920","16285-018","16285-018-1","2023-04-09","","100","0","","","","","1400","2023-04-09 15:20:05");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2921","81922-002","81922-002-3","2023-04-09","","500","0","","","","","0","2023-04-09 15:20:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2922","53651-009","53651-009-3","2023-04-09","","325","50","","","","","0","2023-04-09 15:20:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2923","47949-003","47949-003-3","2023-04-09","","100","0","","","","","0","2023-04-09 15:20:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2925","89161-003","89161-003-3","2023-04-09","","124","1","","","","","0","2023-04-09 15:21:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2926","17708-022","17708-022-3","2023-04-09","","188","0","","","","","186","2023-04-09 15:22:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2927","81922-004","81922-004-2","2023-04-09","","63","0","","","","","124","2023-04-09 15:22:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2928","53651-015","53651-015-2","2023-04-09","","250","0","","","","","250","2023-04-09 15:23:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2929","74838-014","74838-014-1","2023-04-09","","125","0","","","","","375","2023-04-09 15:24:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2930","62178-003","62178-003-3","2023-04-07","","250","0","","","","","0","2023-04-10 10:25:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2931","53651-012","53651-012-2","2023-04-10","","250","0","","","","","225","2023-04-10 10:49:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2932","07829-005","07829-005-1","2023-04-10","","135","0","","","","","365","2023-04-10 10:50:46");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2933","38645-001","38645-001-1","2023-04-10","","500","0","","","","","0","2023-04-10 10:50:57");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2934","62113-019","62113-019-3","2023-04-10","","0","100","","","","","374","2023-04-10 10:51:21");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2935","62178-005","62178-005-3","2023-04-10","","0","75","","","","","562","2023-04-10 10:51:52");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2936","43617-015","43617-015-3","2023-04-10","","900","0","","","","","0","2023-04-10 10:52:12");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2937","22254-001","22254-001-8","2023-04-10","","250","150","","","","","0","2023-04-10 10:52:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2938","02568-001","02568-001-10","2023-04-10","","0","50","","","","","0","2023-04-10 10:52:51");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2939","37688-007","37688-007-10","2023-04-10","","0","100","","","","","0","2023-04-10 10:54:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2940","74838-011","74838-011-1","2023-04-10","","125","0","","","","","375","2023-04-10 10:55:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2941","62178-004","62178-004-3","2023-04-10","","0","75","","","","","562","2023-04-10 10:55:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2942","62113-020","62113-020-3","2023-04-10","","0","100","","","","","374","2023-04-10 10:56:01");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2943","5019-001","5019-001-4","2023-04-10","","750","0","","","","","33750","2023-04-10 13:01:39");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2944","01051-001","01051-001-1","2023-04-10","","450","0","","","","","1350","2023-04-10 13:01:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2945","89184-006","89184-006-2","2023-04-10","","250","0","","","","","500","2023-04-10 13:02:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2946","37688-006","37688-006-10","2023-04-10","","50","0","","","","","1450","2023-04-10 13:02:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2947","16285-018","16285-018-2","2023-04-10","","275","0","","","","","1125","2023-04-10 13:02:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2948","53651-013","53651-013-2","2023-04-10","","250","0","","","","","225","2023-04-10 13:03:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2949","07829-004","07829-004-1","2023-04-10","","135","0","","","","","365","2023-04-10 13:03:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2950","02568-002","02568-002-10","2023-04-10","","0","50","","","","","0","2023-04-10 13:04:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2951","37688-008","37688-008-10","2023-04-10","","0","100","","","","","0","2023-04-10 13:04:37");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2952","74838-012","74838-012-1","2023-04-10","","125","0","","","","","375","2023-04-10 13:05:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2953","43617-016","43617-016-3","2023-04-10","","900","0","","","","","0","2023-04-10 13:05:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2954","16285-014","16285-014-2","2023-04-10","","0","175","","","","","500","2023-04-10 13:07:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2955","74215-011","74215-011-1","2023-04-10","","250","0","","","","","750","2023-04-10 13:07:25");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2956","39246-001","39246-001-1","2023-04-10","","500","0","","","","","0","2023-04-10 13:07:35");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2957","24785-001","24785-001-1","2023-04-10","","0","500","","","","","1000","2023-04-10 13:07:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2958","62178-005","62178-005-4","2023-04-11","","0","50","","","","","562","2023-04-11 14:43:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2959","53651-010","53651-010-2","2023-04-11","","187","1","","","","","0","2023-04-11 14:43:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2960","85042-021","85042-021-2","2023-04-11","","188","0","","","","","187","2023-04-11 14:43:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2961","16285-016","16285-016-4","2023-04-11","","85","0","","","","","352","2023-04-11 14:44:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2962","93406-013","93406-013-4","2023-04-11","","125","0","","","","","250","2023-04-11 14:44:31");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2963","53651-014","53651-014-3","2023-04-11","","250","0","","","","","0","2023-04-11 14:44:45");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2964","17661-001","17661-001-1","2023-04-11","","500","0","","","","","0","2023-04-11 14:45:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2965","06018-009","06018-009-5","2023-04-11","","50","0","","","","","50","2023-04-11 14:45:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2966","17599-001","17599-001-3","2023-04-11","","125","0","","","","","105","2023-04-11 14:45:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2967","03289-001","03289-001-1","2023-04-11","","125","0","","","","","375","2023-04-11 14:46:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2968","62178-009","62178-009-1","2023-04-11","","500","0","","","","","0","2023-04-11 14:47:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2969","62178-004","62178-004-4","2023-04-11","","0","50","","","","","562","2023-04-11 14:47:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2970","62178-006","62178-006-3","2023-04-11","","100","0","","","","","1200","2023-04-11 14:47:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2971","98481-001","98481-001-3","2023-04-11","","500","0","","","","","0","2023-04-11 14:47:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2972","05729-001","05729-001-1","2023-04-11","","500","0","","","","","0","2023-04-11 14:48:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2973","09472-019","09472-019-1","2023-04-11","","50","0","","","","","200","2023-04-11 14:48:28");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2974","07829-005","07829-005-2","2023-04-11","","50","0","","","","","315","2023-04-11 14:48:44");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2975","37688-006","37688-006-10","2023-04-11","","50","0","","","","","1400","2023-04-11 14:49:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2976","74215-008","74215-008-3","2023-04-11","","500","0","","","","","0","2023-04-11 14:49:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2977","93406-014","93406-014-4","2023-04-11","","125","0","","","","","250","2023-04-11 14:50:00");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2978","53651-015","53651-015-3","2023-04-11","","250","0","","","","","0","2023-04-11 14:50:17");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2979","16285-015","16285-015-2","2023-04-11","","0","175","","","","","500","2023-04-11 14:50:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2980","06018-010","06018-010-5","2023-04-11","","50","0","","","","","50","2023-04-11 14:50:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2981","17599-002","17599-002-3","2023-04-11","","125","0","","","","","105","2023-04-11 14:51:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2982","03289-002","03289-002-1","2023-04-11","","125","0","","","","","375","2023-04-11 14:51:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2983","62178-010","62178-010-1","2023-04-11","","500","0","","","","","0","2023-04-11 14:51:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2984","53651-011","53651-011-2","2023-04-11","","187","1","","","","","0","2023-04-11 14:52:43");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2985","85042-022","85042-022-2","2023-04-11","","188","0","","","","","187","2023-04-11 14:53:06");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2986","16285-017","16285-017-4","2023-04-11","","85","0","","","","","352","2023-04-11 14:53:27");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2987","09472-020","09472-020-1","2023-04-11","","50","0","","","","","200","2023-04-11 14:53:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2988","07829-004","07829-004-2","2023-04-11","","50","0","","","","","315","2023-04-11 14:53:58");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2989","16285-016","16285-016-5","2023-04-12","","50","0","","","","","302","2023-04-12 12:10:18");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2990","37389-003","37389-003-2","2023-04-12","","200","300","","","","","0","2023-04-12 12:18:07");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2991","06088-025","06088-025-3","2023-04-12","","125","0","","","","","250","2023-04-12 12:18:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2992","89184-007","89184-007-2","2023-04-12","","0","25","","","","","562","2023-04-12 12:19:04");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2993","62178-005","62178-005-5","2023-04-12","","0","200","","","","","562","2023-04-12 12:19:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2994","62113-019","62113-019-4","2023-04-12","","0","50","","","","","374","2023-04-12 12:19:56");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2995","74215-009","74215-009-2","2023-04-12","","375","0","","","","","750","2023-04-12 12:20:20");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2996","06018-009","06018-009-6","2023-04-12","","50","0","","","","","0","2023-04-12 12:20:54");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2997","98481-003","98481-003-1","2023-04-12","","125","0","","","","","375","2023-04-12 12:21:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2998","37688-007","37688-007-10","2023-04-12","","0","75","","","","","0","2023-04-12 12:21:41");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("2999","89184-004","89184-004-3","2023-04-12","","25","0","","","","","225","2023-04-12 12:21:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3000","53651-016","53651-016-1","2023-04-12","","500","500","","","","","0","2023-04-12 12:22:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3001","62113-017","62113-017-4","2023-04-12","","50","0","","","","","200","2023-04-12 12:23:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3002","62113-020","62113-020-4","2023-04-12","","0","50","","","","","374","2023-04-12 12:23:22");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3003","62178-004","62178-004-5","2023-04-12","","0","200","","","","","562","2023-04-12 12:23:42");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3004","62178-008","62178-008-2","2023-04-12","","500","250","","","","","0","2023-04-12 12:24:02");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3005","62113-022","62113-022-4","2023-04-12","","250","0","","","","","250","2023-04-12 12:24:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3006","62178-006","62178-006-4","2023-04-12","","150","0","","","","","1050","2023-04-12 12:24:40");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3007","53651-018","53651-018-1","2023-04-12","","500","625","","","","","0","2023-04-12 12:25:19");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3008","71302-023","71302-023-7","2023-04-12","","150","0","","","","","0","2023-04-12 12:25:38");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3009","62113-021","62113-021-4","2023-04-12","","250","0","","","","","250","2023-04-12 12:25:55");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3010","62178-007","62178-007-2","2023-04-12","","500","250","","","","","0","2023-04-12 12:26:16");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3011","53651-012","53651-012-3","2023-04-12","","225","50","","","","","0","2023-04-12 12:27:23");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3012","18277-003","18277-003-1","2023-04-12","","125","0","","","","","375","2023-04-12 12:28:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3013","17571-005","17571-005-2","2023-04-12","","500","0","","","","","1000","2023-04-12 14:20:34");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3014","16285-017","16285-017-5","2023-04-12","","50","0","","","","","302","2023-04-12 14:21:13");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3015","37389-002","37389-002-2","2023-04-12","","200","300","","","","","0","2023-04-12 14:21:36");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3016","06088-026","06088-026-3","2023-04-12","","125","0","","","","","250","2023-04-12 14:21:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3017","89184-008","89184-008-2","2023-04-12","","0","25","","","","","562","2023-04-12 14:22:15");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3018","53651-013","53651-013-3","2023-04-12","","225","50","","","","","0","2023-04-12 14:22:30");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3019","18277-002","18277-002-1","2023-04-12","","125","0","","","","","375","2023-04-12 14:22:53");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3020","53651-019","53651-019-1","2023-04-12","","500","625","","","","","0","2023-04-12 14:24:09");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3021","71302-024","71302-024-7","2023-04-12","","150","0","","","","","0","2023-04-12 14:24:33");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3022","06018-010","06018-010-6","2023-04-12","","50","0","","","","","0","2023-04-12 14:24:50");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3023","98481-002","98481-002-1","2023-04-12","","125","0","","","","","375","2023-04-12 14:25:26");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3024","37688-008","37688-008-10","2023-04-12","","0","75","","","","","0","2023-04-12 14:25:59");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3025","89184-005","89184-005-3","2023-04-12","","25","0","","","","","225","2023-04-12 14:26:14");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3026","53651-017","53651-017-1","2023-04-12","","500","500","","","","","0","2023-04-12 14:26:32");
INSERT INTO crm_1681128164_458_loan_payment_details VALUES("3027","62113-018","62113-018-4","2023-04-12","","50","0","","","","","200","2023-04-12 14:26:53");



CREATE TABLE `crm_1681128164_458_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681128164_458_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=828 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681128164_458_login_log VALUES("773","admin","1","2023-04-10 20:03:43");
INSERT INTO crm_1681128164_458_login_log VALUES("774","admin","1","2023-04-10 20:04:00");
INSERT INTO crm_1681128164_458_login_log VALUES("775","admin","1","2023-04-10 20:06:57");
INSERT INTO crm_1681128164_458_login_log VALUES("776","admin","1","2023-04-10 20:28:00");
INSERT INTO crm_1681128164_458_login_log VALUES("777","admin","1","2023-04-10 21:15:26");
INSERT INTO crm_1681128164_458_login_log VALUES("778","admin","1","2023-04-10 21:41:58");
INSERT INTO crm_1681128164_458_login_log VALUES("779","admin","1","2023-04-12 12:02:47");
INSERT INTO crm_1681128164_458_login_log VALUES("780","admin","1","2023-04-12 12:02:50");
INSERT INTO crm_1681128164_458_login_log VALUES("781","hihihi","0","2023-04-13 09:20:26");
INSERT INTO crm_1681128164_458_login_log VALUES("782","admin","1","2023-04-13 09:21:54");
INSERT INTO crm_1681128164_458_login_log VALUES("783","hihihi","0","2023-04-13 09:22:02");
INSERT INTO crm_1681128164_458_login_log VALUES("784","hihihi","0","2023-04-13 09:24:44");
INSERT INTO crm_1681128164_458_login_log VALUES("785","hihihi","0","2023-04-13 09:31:25");
INSERT INTO crm_1681128164_458_login_log VALUES("786","admin","1","2023-04-13 09:41:15");
INSERT INTO crm_1681128164_458_login_log VALUES("787","qqq","0","2023-04-13 10:13:37");
INSERT INTO crm_1681128164_458_login_log VALUES("788","admin","1","2023-04-13 10:21:40");
INSERT INTO crm_1681128164_458_login_log VALUES("789","qqq","0","2023-04-13 10:22:16");
INSERT INTO crm_1681128164_458_login_log VALUES("790","qqq","0","2023-04-13 10:35:26");
INSERT INTO crm_1681128164_458_login_log VALUES("791","admin","1","2023-04-13 10:43:09");
INSERT INTO crm_1681128164_458_login_log VALUES("792","qqq","0","2023-04-13 10:43:37");
INSERT INTO crm_1681128164_458_login_log VALUES("793","admin","1","2023-04-13 10:44:24");
INSERT INTO crm_1681128164_458_login_log VALUES("794","qqq","0","2023-04-13 10:44:35");
INSERT INTO crm_1681128164_458_login_log VALUES("795","admin","1","2023-04-13 10:45:37");
INSERT INTO crm_1681128164_458_login_log VALUES("796","qqq","0","2023-04-13 10:45:50");
INSERT INTO crm_1681128164_458_login_log VALUES("797","hihihi","0","2023-04-13 10:45:59");
INSERT INTO crm_1681128164_458_login_log VALUES("798","admin","1","2023-04-13 10:52:24");
INSERT INTO crm_1681128164_458_login_log VALUES("799","qqq","0","2023-04-13 10:52:49");
INSERT INTO crm_1681128164_458_login_log VALUES("800","qqq","0","2023-04-13 10:53:38");
INSERT INTO crm_1681128164_458_login_log VALUES("801","admin","1","2023-04-13 10:53:53");
INSERT INTO crm_1681128164_458_login_log VALUES("802","qqq","0","2023-04-13 10:54:11");
INSERT INTO crm_1681128164_458_login_log VALUES("803","admin","1","2023-04-13 11:58:48");
INSERT INTO crm_1681128164_458_login_log VALUES("804","aaa","0","2023-04-13 12:01:12");
INSERT INTO crm_1681128164_458_login_log VALUES("805","admin","1","2023-04-13 12:01:22");
INSERT INTO crm_1681128164_458_login_log VALUES("806","hihihi","0","2023-04-13 12:03:24");
INSERT INTO crm_1681128164_458_login_log VALUES("807","admin","1","2023-04-13 12:13:40");
INSERT INTO crm_1681128164_458_login_log VALUES("808","qqq","0","2023-04-13 12:13:50");
INSERT INTO crm_1681128164_458_login_log VALUES("809","admin","1","2023-04-13 12:56:36");
INSERT INTO crm_1681128164_458_login_log VALUES("810","qqq","0","2023-04-13 12:59:38");
INSERT INTO crm_1681128164_458_login_log VALUES("811","admin","1","2023-04-13 12:59:51");
INSERT INTO crm_1681128164_458_login_log VALUES("812","qqq","0","2023-04-13 13:44:56");
INSERT INTO crm_1681128164_458_login_log VALUES("813","admin","1","2023-04-13 14:43:59");
INSERT INTO crm_1681128164_458_login_log VALUES("814","admin","1","2023-04-13 14:44:29");
INSERT INTO crm_1681128164_458_login_log VALUES("815","admin","1","2023-04-13 15:28:46");
INSERT INTO crm_1681128164_458_login_log VALUES("816","qqq","0","2023-04-13 15:28:56");
INSERT INTO crm_1681128164_458_login_log VALUES("817","test001","0","2023-04-13 15:29:27");
INSERT INTO crm_1681128164_458_login_log VALUES("818","admin","1","2023-04-13 15:33:45");
INSERT INTO crm_1681128164_458_login_log VALUES("819","admin","1","2023-04-13 15:43:13");
INSERT INTO crm_1681128164_458_login_log VALUES("820","qqq","0","2023-04-13 15:45:15");
INSERT INTO crm_1681128164_458_login_log VALUES("821","admin","1","2023-04-13 15:47:21");
INSERT INTO crm_1681128164_458_login_log VALUES("822","admin","1","2023-04-13 15:57:29");
INSERT INTO crm_1681128164_458_login_log VALUES("823","admin","1","2023-04-13 15:58:15");
INSERT INTO crm_1681128164_458_login_log VALUES("824","hi","0","2023-04-13 15:58:32");
INSERT INTO crm_1681128164_458_login_log VALUES("825","admin","1","2023-04-13 15:58:44");
INSERT INTO crm_1681128164_458_login_log VALUES("826","hi","0","2023-04-13 16:01:10");
INSERT INTO crm_1681128164_458_login_log VALUES("827","admin","1","2023-04-13 16:01:20");



CREATE TABLE `crm_1681128164_458_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681128164_458_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681128164_458_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `admin1` int(11) NOT NULL DEFAULT '0',
  `ban_phonenum` int(11) NOT NULL DEFAULT '0',
  `ban_ic` int(11) NOT NULL DEFAULT '0',
  `ban_loanamount` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681128164_458_users VALUES("0","superadmin","$2y$10$RnPbSJCGYLNSmJPPGgMTh.MQfbgId8HsddSo4cX41MePsqCqaGgiK","1","superadmin","123344","0123456789","0","0","0","0","0","0","0000-00-00 00:00:00");
INSERT INTO crm_1681128164_458_users VALUES("3","admin","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","1","admin","123344","01234567890","-12500","0","0","0","0","0","2022-11-11 14:44:18");
INSERT INTO crm_1681128164_458_users VALUES("7","lam","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","0","lam","2147483647","0109338967","148318","1","0","0","0","0","0000-00-00 00:00:00");
INSERT INTO crm_1681128164_458_users VALUES("8","tony","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","0","tony","2147483647","01758957895","19724","1","0","0","0","0","2022-11-29 03:42:49");
INSERT INTO crm_1681128164_458_users VALUES("9","roy","$2y$10$c.XjikReNpcyJ0sjxumI8.DU3BoLiQOfxkXSyueneiCGIKqJ6.GZG","0","roy","2147483647","01785446461","10453","1","0","0","0","0","2022-11-29 03:43:19");
INSERT INTO crm_1681128164_458_users VALUES("16","adrian","$2y$10$v1f6OHcMVFoPUaWwJ/7UlOE5HgpV4nq3JIzCHK2PfzRcJz9fmiBQa","0","adrian","2569874","012123456","1025","1","0","0","0","0","2022-12-14 01:27:06");
INSERT INTO crm_1681128164_458_users VALUES("17","nick","$2y$10$InAAAMP4IQe/gzGmN8F1qe/nuT5HAPS/yqY54s1ofyCsRhJPveuJ.","0","nick","00000","00000","2250","1","0","0","0","0","2023-02-07 09:21:31");
INSERT INTO crm_1681128164_458_users VALUES("18","jimmy","$2y$10$8VRyZs8.d8juuoDK3hhblOqIVUadx8Spz7z6mJhWVM7dgg9ZPmney","0","jimmy","0","0","3871","1","0","0","0","0","2023-02-17 07:35:37");
INSERT INTO crm_1681128164_458_users VALUES("22","NL","$2y$10$oto5ZaLOFgfdi3H91gvdJ.e8fvBilKCxEzsj1CpJchY6cEVgufNcC","0","NL","040920100933","01116677499","48410","7","0","0","0","0","2023-04-03 06:29:57");
INSERT INTO crm_1681128164_458_users VALUES("28","test123","$2y$10$fDG4D5j2O0sg8bDRF5JmvO9OpwcXaDbGHdLsMEOPBoTqYW7ll1K3O","0","test123","-","-","0","1","1","1","1","1","2023-04-12 02:20:48");
INSERT INTO crm_1681128164_458_users VALUES("31","hihihi","$2y$10$bQ7WS9CWBUhftDDc5iv1/egGEKC1gjcnRhaN.6SHl15q9jKe/XQWq","0","hihihi","-","-","0","1","1","1","1","1","2023-04-12 02:28:56");
INSERT INTO crm_1681128164_458_users VALUES("32","qqq","$2y$10$b0O1q5APm7c2pRQZc1Zg4u.UvH1BKhe7VFIhRwzw4anH/s9svuy6q","0","qqq","-","-","0","1","1","1","1","1","2023-04-13 02:00:03");
INSERT INTO crm_1681128164_458_users VALUES("33","aaa","$2y$10$PLB2D8Oa0Zt2uX6fkCDaA.swxua42tqLqi.Iacsjz60dqRwCAeQ/C","0","aaa","-","-","0","1","1","1","0","1","2023-04-13 03:58:56");
INSERT INTO crm_1681128164_458_users VALUES("34","test001","$2y$10$7FyOSxwG3hYMMxwZqS/cq.gH5wOAOJcBB77oXyRXViVpIxxffnLDm","0","test001","-","-","0","1","1","1","1","1","2023-04-13 07:29:14");
INSERT INTO crm_1681128164_458_users VALUES("35","admintest","$2y$10$k.BOyUn3hzeusvAVyRZBdukUZGpgJUBm.y0wQ94Fa6EaxHHYYtIwG","0","admintest","-","-","0","1","1","1","0","0","2023-04-13 07:34:41");
INSERT INTO crm_1681128164_458_users VALUES("36","check","$2y$10$EvRORgTfJoGQdWc24BBxNOjrF25FYbc.jOiLmcRplBzFg7Q3nim2i","0","check","-","-","0","1","1","1","0","1","2023-04-13 07:43:55");
INSERT INTO crm_1681128164_458_users VALUES("37","hi","$2y$10$gOtgemJ.Q/bF4nEKFj1gIes4L9gePJalMDuIVX2k7IkhSVYJIZKeK","0","hi","-","-","0","1","1","1","1","1","2023-04-13 07:48:07");



CREATE TABLE `crm_1681195439_698_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195439_698_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195439_698_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195439_698_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195439_698_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195439_698_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195439_698_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195439_698_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195439_698_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195439_698_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195439_698_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195439_698_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195439_698_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195439_698_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195439_698_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195439_698_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195439_698_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681195439_698_users VALUES("23","admin","$2y$10$Zstv3yEj8KhMDUhBotXbyOoJ1n.XhePw5rm/AHkRkUR/wMbGSnEua","1","superadmin","","","0","0","2023-04-11 06:44:02");



CREATE TABLE `crm_1681195494_584_bank_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681195494_584_bank_details VALUES("187","A0001","","","","","","","");



CREATE TABLE `crm_1681195494_584_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195494_584_branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `hqinitial_funding` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195494_584_cash_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195494_584_credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `crm_1681195494_584_customer_details` (
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
  `CTOS` int(1) NOT NULL DEFAULT '0',
  `introducer` int(255) DEFAULT NULL,
  `payer` int(255) DEFAULT NULL,
  `agent_fee` int(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681195494_584_customer_details VALUES("187","A0001","test","FALSE","111111111111",""," 0123456789","","","","test","Active","","0","","","","23");



CREATE TABLE `crm_1681195494_584_employment_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681195494_584_employment_details VALUES("187","A0001","","","","","","0","0","","","","","","");



CREATE TABLE `crm_1681195494_584_funds_dividends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195494_584_loan_contract_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_loan_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tepi_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_agreement_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_monthly_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one_time_interest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195494_584_loan_delinquentloan_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_id` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `loan_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delinquent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_loan_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `crm_1681195494_584_loan_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `loan_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `loan_amount` float NOT NULL,
  `intrest` float NOT NULL,
  `deposit` float NOT NULL,
  `gst` float NOT NULL,
  `rebate` float NOT NULL DEFAULT '0',
  `tenure` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people1` int(11) NOT NULL,
  `people2` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remaining_amount` float NOT NULL,
  `date` date NOT NULL,
  `created` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=847 DEFAULT CHARSET=utf8mb4;

INSERT INTO crm_1681195494_584_loan_details VALUES("845","A0001","A0001-001","2023-04-11","10000","1000","0","0","0","20","30","æœˆè´¦","0123456789","23","-1","0","9550","2023-06-10","23","2023-04-11 07:01:55");
INSERT INTO crm_1681195494_584_loan_details VALUES("846","A0001","A0001-002","2023-04-11","10000","1000","0","600","0","20","30","æœˆè´¦","0123456789","23","-1","0","10000","2023-05-11","23","2023-04-11 07:02:38");



CREATE TABLE `crm_1681195494_584_loan_payment_details` (
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
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2836 DEFAULT CHARSET=utf8;

INSERT INTO crm_1681195494_584_loan_payment_details VALUES("2835","A0001-001","A0001-001-1","2023-04-11","","450","750","","","","","9550","2023-04-11 08:50:10");



CREATE TABLE `crm_1681195494_584_loan_tepi_details` (
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
  `tepi_status` int(11) NOT NULL DEFAULT '0',
  `loan_type` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `crm_1681195494_584_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681195494_584_login_log VALUES("773","admin","1","2023-04-11 14:50:53");
INSERT INTO crm_1681195494_584_login_log VALUES("774","admin","1","2023-04-11 14:51:11");
INSERT INTO crm_1681195494_584_login_log VALUES("775","admin","1","2023-04-11 14:57:44");
INSERT INTO crm_1681195494_584_login_log VALUES("776","admin","1","2023-04-11 15:52:17");
INSERT INTO crm_1681195494_584_login_log VALUES("777","admin","1","2023-04-11 15:58:48");
INSERT INTO crm_1681195494_584_login_log VALUES("778","admin","1","2023-04-11 16:13:47");
INSERT INTO crm_1681195494_584_login_log VALUES("779","admin","1","2023-04-11 16:43:10");
INSERT INTO crm_1681195494_584_login_log VALUES("780","admin","1","2023-04-11 16:55:55");
INSERT INTO crm_1681195494_584_login_log VALUES("781","admin","1","2023-04-12 13:59:30");



CREATE TABLE `crm_1681195494_584_operating_expenses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681195494_584_operating_expenses VALUES("46","23","2023-04-11","2023-04-11 08:50:43","Other","test","100","23","2023-04-11 08:50:43");



CREATE TABLE `crm_1681195494_584_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1540 DEFAULT CHARSET=utf8mb4;

INSERT INTO crm_1681195494_584_score VALUES("1537","23","04","2023","-10000");
INSERT INTO crm_1681195494_584_score VALUES("1538","23","04","2023","-9400");
INSERT INTO crm_1681195494_584_score VALUES("1539","23","04","2023","450");



CREATE TABLE `crm_1681195494_584_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO crm_1681195494_584_users VALUES("23","admin","$2y$10$dakrhTlmv.BKdfu2/rPIpeJ2j5gUe4Cud2giJDyZ3LoN2E2wyYp4C","1","superadmin","","","450","0","2023-04-11 06:44:56");



CREATE TABLE `crm_1681196355_521_administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1681196355_521_center_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1681196355_521_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1681196355_521_customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1681196355_521_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `new_IC` varchar(255) NOT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `Guarantor_Name` varchar(255) DEFAULT NULL,
  `Guarantor_Telephone` varchar(255) DEFAULT NULL,
  `Guarantor_Info` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `customer_pic` varchar(255) DEFAULT NULL,
  `customer_pic_ic` varchar(255) DEFAULT NULL,
  `customer_guarantor_pic` varchar(255) DEFAULT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1681196355_521_customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1681196355_521_recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `crm_1681196355_521_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `cus_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

INSERT INTO cus_status VALUES("1","Incomplete Documents");
INSERT INTO cus_status VALUES("2","Dealing In Progress");
INSERT INTO cus_status VALUES("3","Considering");
INSERT INTO cus_status VALUES("4","Seen, But No Reply");
INSERT INTO cus_status VALUES("5","Unreachable");
INSERT INTO cus_status VALUES("6","Blacklist (Money Lender)");
INSERT INTO cus_status VALUES("7","Over-Commitment");
INSERT INTO cus_status VALUES("8","Committing Multiple Loans");
INSERT INTO cus_status VALUES("9","Blacklist (Company)");
INSERT INTO cus_status VALUES("10","Unstable Income");
INSERT INTO cus_status VALUES("11","Salary By Cash");
INSERT INTO cus_status VALUES("12","Uncompliable Request");
INSERT INTO cus_status VALUES("13","High Interest");
INSERT INTO cus_status VALUES("14","Low Salary");
INSERT INTO cus_status VALUES("15","Got A New Job");
INSERT INTO cus_status VALUES("16","Got Better Loan Offer");
INSERT INTO cus_status VALUES("17","Competitor Cut-in");
INSERT INTO cus_status VALUES("18","Rejected Without Reason");
INSERT INTO cus_status VALUES("19","Foreigner");
INSERT INTO cus_status VALUES("20","Underage");
INSERT INTO cus_status VALUES("21","Not Interested");
INSERT INTO cus_status VALUES("22","Government Official");
INSERT INTO cus_status VALUES("23","Unstable Hawker");
INSERT INTO cus_status VALUES("24","iPhone User");
INSERT INTO cus_status VALUES("25","Double Inquiry");
INSERT INTO cus_status VALUES("26","Pencen / Retired");
INSERT INTO cus_status VALUES("27","Admin Rejected");
INSERT INTO cus_status VALUES("28","Scammer");
INSERT INTO cus_status VALUES("29","Confirm Don't Want");
INSERT INTO cus_status VALUES("30","Unemployed");
INSERT INTO cus_status VALUES("31","Chinese");
INSERT INTO cus_status VALUES("32","Company's Client");
INSERT INTO cus_status VALUES("33","Unqualified");
INSERT INTO cus_status VALUES("34","No Apply");
INSERT INTO cus_status VALUES("35","No Online Banking");
INSERT INTO cus_status VALUES("36","No Pick Up");



CREATE TABLE `customer_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repair` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outbalance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inbalance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO customer_expenses VALUES("1","1","1665331200","","","","","","1");
INSERT INTO customer_expenses VALUES("17","5","1672934400","","","","","","19");
INSERT INTO customer_expenses VALUES("18","5","1672934400","","","","","","20");
INSERT INTO customer_expenses VALUES("19","5","1672934400","","","","","","21");
INSERT INTO customer_expenses VALUES("20","5","1672934400","","","","","","22");
INSERT INTO customer_expenses VALUES("21","5","1672934400","","","","","","24");
INSERT INTO customer_expenses VALUES("22","5","1672934400","","","","","","25");
INSERT INTO customer_expenses VALUES("23","5","1672934400","","","","","","26");
INSERT INTO customer_expenses VALUES("24","5","1673020800","","","","","","19");
INSERT INTO customer_expenses VALUES("25","5","1673020800","","","","","","20");
INSERT INTO customer_expenses VALUES("26","5","1673020800","","","","","","21");
INSERT INTO customer_expenses VALUES("27","5","1673020800","","","","","","22");
INSERT INTO customer_expenses VALUES("28","5","1673020800","","","","","","24");
INSERT INTO customer_expenses VALUES("29","5","1673020800","","","","","","25");
INSERT INTO customer_expenses VALUES("30","5","1673020800","","","","","","26");
INSERT INTO customer_expenses VALUES("31","10","1678377600","","","","","","63");
INSERT INTO customer_expenses VALUES("32","10","1678464000","","","","","","63");
INSERT INTO customer_expenses VALUES("33","10","1678464000","","","","","","64");
INSERT INTO customer_expenses VALUES("34","10","1678464000","","","","","","65");
INSERT INTO customer_expenses VALUES("35","10","1678464000","","","","","","66");
INSERT INTO customer_expenses VALUES("36","10","1679932800","20","","","","","63");
INSERT INTO customer_expenses VALUES("37","10","1679932800","20","","","","","64");
INSERT INTO customer_expenses VALUES("38","10","1679932800","20","","","","","65");
INSERT INTO customer_expenses VALUES("39","10","1679932800","20","","","","","66");



CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_IC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_IC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_Telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_Info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_pic_ic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_guarantor_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent_id` int(11) NOT NULL,
  `how_to_know` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO customers VALUES("1","my-customer-01","000000-00-0000","customer address， customer address","customer address","","","Occupation","0123334444","","","F","my-customer-01 Guarantor","000000-00-1234","0123333333","Guarantor info","","2022-10-10 13:25:48","","","","1","","");
INSERT INTO customers VALUES("11","123","123","123","","","","123","213","","","F","","","","","","2023-01-06 11:37:04","","","","6","","");
INSERT INTO customers VALUES("13","customer A","123456789012","-","","","","-","0123456789","","","M","","","","","","2023-02-06 13:40:45","","","","11","","");
INSERT INTO customers VALUES("14","123","123","123","","","","123","123","","","F","","","","","","2023-01-31 14:59:12","","","","1","","");
INSERT INTO customers VALUES("15","Mira","test","sfsdsf","sdfs","sdf","sdf","sd","sdf","sdfsdf","","F","sdfs","sdf","sfd","sdfs","","2023-02-09 14:50:05","","","","11","","");
INSERT INTO customers VALUES("29","abc","","d3dff","","","","","013809313","","","F","","","","","","2023-02-18 08:53:13","","","","11","ed","");
INSERT INTO customers VALUES("30","Annie","","B21-08, Zen Condo, Jln Bunga Tanjung, ","Bt 14, Puchong, 47100 Selangor.","","","","+60Â 12-280Â 6645","","","F","","","","","","2023-02-20 06:59:34","","","","11","","");
INSERT INTO customers VALUES("31","123","","123","123","123","123","","123","123","","M","","","","","","2023-02-21 01:38:18","","","","11","123","123");
INSERT INTO customers VALUES("32","321","","123","321","321","321","","123","321","","F","","","","","","2023-02-21 01:38:48","","","","11","123","321");
INSERT INTO customers VALUES("33","Annie","","B21-08, Zen Condo, Jln Bunga Tanjung,","Bt 14, Puchong, 47100 Selangor.","","","","+60122806645","","","F","","","","","","2023-02-27 14:36:10","","","","11","","");
INSERT INTO customers VALUES("34","test customer","","-","","","","","-","","","M","","","","","","2023-03-01 09:50:23","123.jpeg","","","12","","");
INSERT INTO customers VALUES("35","test user","","1, jalan qwe 1","","","","","0123456789","","","M","","","","","","2023-03-02 17:43:03","123.jpeg","blue-gradient-background.png","","15","-","-");
INSERT INTO customers VALUES("36","test","","123","","","","","123","","","F","","","","","","2023-03-10 11:33:34","","","","11","123","123");
INSERT INTO customers VALUES("37","alan","123456","aâ€†liâ€†bâ€†bâ€†jâ€†jâ€†kâ€†mâ€†mâ€†bâ€†b","","","","ä¹°å–è½¦1234","12455566","","","F","","","","","","2023-03-17 00:09:23","","","","15","","");
INSERT INTO customers VALUES("38","Sean","","Maxwell Towers","","","","","+6018-781Â 8042","","","M","","","","","","2023-03-19 21:43:11","","","","11","Others","");



CREATE TABLE `customers_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `center_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amt_per_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_terms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_out` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crossed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crossed_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clear_payment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO customers_card VALUES("1","1","1","200","5","10-10-2022","30","0","1000","200","","","500","","1","");
INSERT INTO customers_card VALUES("19","0","5","","12","01-12-2022","14","100","1000","200","","13-12-2022","200","","6","M1234");
INSERT INTO customers_card VALUES("20","0","5","","9","02-12-2022","01","0","500","50","","01-01-1970","150","","6","C123");
INSERT INTO customers_card VALUES("21","0","5","","12","03-12-2022","01","0","700","0","","15-12-2022","200","","6","i123");
INSERT INTO customers_card VALUES("22","0","5","","13","04-12-2022","14","50","800","50","","17-12-2022","200","","6","M333");
INSERT INTO customers_card VALUES("24","0","5","","7","05-12-2022","01","0","350","0","","12-12-2022","100","1","6","C222");
INSERT INTO customers_card VALUES("25","0","5","","6","06-12-2022","01","0","400","0","","12-12-2022","100","1","6","i555");
INSERT INTO customers_card VALUES("26","0","5","","21","07-12-2022","01","0","1600","0","","28-12-2022","400","","10","M88");
INSERT INTO customers_card VALUES("27","0","5","","15","09-01-2023","10","1000","10000","1000","","24-01-2023","5000","","6","M1234");
INSERT INTO customers_card VALUES("28","0","5","","20","09-01-2023","01","0","1000","100","","29-01-2023","200","1","6","A1234");
INSERT INTO customers_card VALUES("29","0","5","","7","11-01-2023","07","0","500","50","","18-01-2023","150","1","6","C111");
INSERT INTO customers_card VALUES("31","0","5","","7","04-01-2023","07","0","1000","100","","25-01-2023","200","1","6","C999");
INSERT INTO customers_card VALUES("32","0","5","","7","12-01-2023","07","0","1000","100","","26-01-2023","200","1","10","C333");
INSERT INTO customers_card VALUES("33","0","5","","5","13-01-2023","01","0","500","50","","28-01-2023","150","","10","c444");
INSERT INTO customers_card VALUES("34","0","5","","20","12-01-2023","30","0","3000","0","","03-03-2023","1800","","10","c555");
INSERT INTO customers_card VALUES("35","0","5","","3","03-02-2023","01","0","100","0","","06-02-2023","50","1","10","M111");
INSERT INTO customers_card VALUES("36","0","5","","6","25-01-2023","07","0","1000","150","","06-02-2023","250","1","13","C767");
INSERT INTO customers_card VALUES("37","0","5","","5","25-01-2023","01","0","1000","300","","30-01-2023","200","","10","C709");
INSERT INTO customers_card VALUES("38","0","5","","9","26-01-2023","10","0","500","0","","04-02-2023","150","","13","M387");
INSERT INTO customers_card VALUES("39","0","5","","9","25-01-2023","01","0","500","100","","03-02-2023","100","","10","C529");
INSERT INTO customers_card VALUES("40","0","5","","6","26-01-2023","07","200","2000","0","","01-02-2023","500","","13","M759");
INSERT INTO customers_card VALUES("41","0","5","","6","27-01-2023","07","100","1000","100","","02-02-2023","300","","10","C793");
INSERT INTO customers_card VALUES("42","0","5","","9","28-01-2023","01","0","1000","250","","06-02-2023","250","","10","C773");
INSERT INTO customers_card VALUES("43","0","5","","6","29-01-2023","01","0","500","100","","04-02-2023","150","","10","C767");
INSERT INTO customers_card VALUES("44","0","5","","9","30-01-2023","10","100","1000","200","","08-02-2023","200","","10","C795");
INSERT INTO customers_card VALUES("45","0","5","","6","31-01-2023","07","100","1000","200","","06-02-2023","200","","10","C796");
INSERT INTO customers_card VALUES("46","0","5","","13","28-01-2023","14","100","1000","0","","10-02-2023","300","","13","M798");
INSERT INTO customers_card VALUES("47","0","5","","7","30-01-2023","07","0","1000","0","","06-02-2023","400","","13","M946");
INSERT INTO customers_card VALUES("48","0","5","","6","30-01-2023","07","100","1000","0","","05-02-2023","300","","13","M3482");
INSERT INTO customers_card VALUES("49","0","5","","7","31-01-2023","07","300","3000","0","","07-02-2023","300","","10","C797");
INSERT INTO customers_card VALUES("50","0","5","","14","31-01-2023","15","0","500","0","","14-02-2023","100","","13","C290");
INSERT INTO customers_card VALUES("51","0","5","","7","01-02-2023","07","200","1000","0","","08-02-2023","300","","13","M891");
INSERT INTO customers_card VALUES("52","0","5","","6","02-02-2023","07","100","1000","0","","08-02-2023","300","","13","I858");
INSERT INTO customers_card VALUES("53","0","5","","6","02-02-2023","07","200","1000","0","","08-02-2023","300","","13","M3512");
INSERT INTO customers_card VALUES("54","0","5","","9","02-02-2023","10","100","1000","200","","11-02-2023","150","","10","M3501");
INSERT INTO customers_card VALUES("55","0","5","","6","03-02-2023","07","50","1000","200","","09-02-2023","300","","10","M3479");
INSERT INTO customers_card VALUES("56","0","5","","7","04-02-2023","07","0","1000","0","","11-02-2023","300","","10","C127");
INSERT INTO customers_card VALUES("57","0","5","","5","06-02-2023","01","0","1000","300","","11-02-2023","200","","10","C709");
INSERT INTO customers_card VALUES("58","0","5","","6","07-02-2023","07","100","1000","300","","13-02-2023","200","","10","M3523");
INSERT INTO customers_card VALUES("60","0","5","","7","01-03-2023","7","0","1000","0","","08-03-2023","100","","6","1000");
INSERT INTO customers_card VALUES("61","0","5","","0","01-03-2023","1","0","0","0","","01-03-2023","500","1","10","M3046");
INSERT INTO customers_card VALUES("62","0","5","","0","08-03-2023","1","0","500","0","","08-03-2023","500","1","6","C555");
INSERT INTO customers_card VALUES("63","35","10","500","7","10-03-2023","01","2000","1500","500","","","500","","15","");
INSERT INTO customers_card VALUES("64","35","10","100","10","11-03-2023","07","0","1000","0","","","200","","15","");
INSERT INTO customers_card VALUES("65","35","10","200","5","11-03-2023","01","1000","800","100","","","200","","15","");
INSERT INTO customers_card VALUES("66","35","10","100","30","02-03-2023","01","3000","2500","500","","","500","","15","");
INSERT INTO customers_card VALUES("67","0","5","","6","01-03-2023","01","100","1000","100","","07-03-2023","300","","13","M3549");
INSERT INTO customers_card VALUES("68","0","5","","13","02-03-2023","1","0","1000","150","","15-03-2023","250","","13","M3572");
INSERT INTO customers_card VALUES("69","0","5","","6","03-03-2023","1","0","500","100","","09-03-2023","150","","13","I876");
INSERT INTO customers_card VALUES("70","0","5","","6","04-03-2023","1","0","1000","200","","10-03-2023","250","","13","M3550");
INSERT INTO customers_card VALUES("71","0","5","","7","07-03-2023","1","100","1000","200","","01-01-1970","300","","13","C648");
INSERT INTO customers_card VALUES("72","0","5","","10","07-03-2023","1","0","1000","250","","17-03-2023","250","","13","C796");
INSERT INTO customers_card VALUES("73","0","5","","10","07-03-2023","1","0","10000","1000","","17-03-2023","1000","","13","C725");
INSERT INTO customers_card VALUES("74","0","5","","6","08-03-2023","1","0","1000","300","","14-03-2023","300","","13","C798");
INSERT INTO customers_card VALUES("75","0","5","","6","09-03-2023","1","0","1000","300","","15-03-2023","200","1","13","M264");
INSERT INTO customers_card VALUES("76","0","5","","9","10-03-2023","1","0","500","50","","19-03-2023","100","1","13","M501");



CREATE TABLE `design_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price_within` double NOT NULL,
  `price_above` double NOT NULL,
  `center_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO design_list VALUES("1","French Pleat","10","12","6","11");
INSERT INTO design_list VALUES("2","Singapore Pleat","12","14","6","11");



CREATE TABLE `domain_list_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(256) NOT NULL,
  `table_prefix` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `first_method` int(11) NOT NULL DEFAULT '1',
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

INSERT INTO domain_list_setting VALUES("1","crm2.ecomdemo.xyz","","1","1","2023-04-01 12:46:28.155562");
INSERT INTO domain_list_setting VALUES("6","testingcrm","crm_1672226998_31_","1","1","2022-12-28 11:30:00.000000");
INSERT INTO domain_list_setting VALUES("7","testcrm12","crm_1672227014_785_","1","1","2022-12-28 11:30:15.000000");
INSERT INTO domain_list_setting VALUES("9","first1","crm_1672369053_65_","1","1","2023-01-02 01:52:14.506639");
INSERT INTO domain_list_setting VALUES("12","second1.ecomdemo.xyz","crm_1672465889_871_","1","0","2023-01-02 01:52:38.597393");
INSERT INTO domain_list_setting VALUES("13","third1.ecomdemo.xyz","crm_1672493553_901_","1","1","2022-12-31 13:44:07.980794");
INSERT INTO domain_list_setting VALUES("14","fourth.ecomdemo.xyz","crm_1672494306_309_","1","1","2022-12-31 13:45:07.000000");
INSERT INTO domain_list_setting VALUES("15","example.ecomdemo.xyz","crm_1672624682_287_","1","1","2023-01-02 01:58:03.000000");
INSERT INTO domain_list_setting VALUES("16","crm.cometosee.co","crm_1672626712_34_","1","1","2023-01-02 08:14:11.267028");
INSERT INTO domain_list_setting VALUES("18","demo001.ecomdemo.xyz","crm_1675149678_350_","1","1","2023-01-31 07:21:20.000000");
INSERT INTO domain_list_setting VALUES("20","crm2jackg99.ecomdemo.xyz","crm_1680615448_740_","1","1","2023-04-04 13:37:30.000000");
INSERT INTO domain_list_setting VALUES("21","elitecminternational.com.ecomdemo.xyz","crm_1680658850_23_","1","1","2023-04-05 01:40:52.000000");
INSERT INTO domain_list_setting VALUES("22","testing00.ecomdemo.xyz","crm_1680674204_182_","1","1","2023-04-05 05:56:45.000000");
INSERT INTO domain_list_setting VALUES("23","ntl.ecomdemo.xyz","crm_1680688048_925_","1","1","2023-04-05 09:47:31.000000");
INSERT INTO domain_list_setting VALUES("24","testjackg99.ecomdemo.xyz","crm_1680835808_707_","1","1","2023-04-07 02:50:10.000000");
INSERT INTO domain_list_setting VALUES("27","ntltestdomain23.ecomdemo.xyz","crm_1680872610_463_","1","1","2023-04-07 13:03:32.000000");
INSERT INTO domain_list_setting VALUES("28","abrakadabrantldom.ecomdemo.xyz","crm_1680874885_659_","1","1","2023-04-07 13:41:27.000000");
INSERT INTO domain_list_setting VALUES("31","abrakadabrantldom35345.ecomdemo.xyz","crm_1681127735_75_","1","1","2023-04-10 11:55:36.000000");
INSERT INTO domain_list_setting VALUES("32","ntltestd3434om.ecomdemo.xyz","crm_1681128008_143_","1","1","2023-04-10 12:00:10.000000");
INSERT INTO domain_list_setting VALUES("33","ntltestdom234234.ecomdemo.xyz","crm_1681128164_458_","1","1","2023-04-10 12:02:46.000000");
INSERT INTO domain_list_setting VALUES("35","newabl.ecomdemo.xyz","crm_1681195494_584_","1","1","2023-04-11 06:44:56.000000");
INSERT INTO domain_list_setting VALUES("36","crmcheck.ecomdemo.xyz","crm_1681196355_521_","1","1","2023-04-11 06:59:18.000000");



CREATE TABLE `function_authorized` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `function` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

INSERT INTO function_authorized VALUES("1","1","Customer Card","1","2023-01-27 06:03:11");
INSERT INTO function_authorized VALUES("2","1","Customer Card","0","2023-01-27 06:03:12");
INSERT INTO function_authorized VALUES("3","1","Customer Card","1","2023-01-27 06:03:12");
INSERT INTO function_authorized VALUES("4","2","Customer Card","1","2023-01-27 06:04:07");
INSERT INTO function_authorized VALUES("5","3","Customer Card","1","2023-01-27 06:04:07");
INSERT INTO function_authorized VALUES("6","4","Customer Card","1","2023-01-27 06:04:08");
INSERT INTO function_authorized VALUES("7","5","Customer Card","1","2023-01-27 06:04:08");
INSERT INTO function_authorized VALUES("13","1","Collection","1","2023-01-27 06:05:03");
INSERT INTO function_authorized VALUES("14","2","Collection","1","2023-01-27 06:05:04");
INSERT INTO function_authorized VALUES("15","3","Collection","1","2023-01-27 06:05:04");
INSERT INTO function_authorized VALUES("16","4","Collection","1","2023-01-27 06:05:05");
INSERT INTO function_authorized VALUES("17","5","Collection","1","2023-01-27 06:05:05");
INSERT INTO function_authorized VALUES("18","1","Monthly Report","1","2023-01-27 06:05:08");
INSERT INTO function_authorized VALUES("19","2","Monthly Report","1","2023-01-27 06:05:09");
INSERT INTO function_authorized VALUES("20","3","Monthly Report","1","2023-01-27 06:05:09");
INSERT INTO function_authorized VALUES("21","4","Monthly Report","1","2023-01-27 06:05:10");
INSERT INTO function_authorized VALUES("22","5","Monthly Report","1","2023-01-27 06:05:10");
INSERT INTO function_authorized VALUES("23","1","Daily Report","1","2023-01-27 06:05:14");
INSERT INTO function_authorized VALUES("24","2","Daily Report","1","2023-01-27 06:05:14");
INSERT INTO function_authorized VALUES("25","3","Daily Report","1","2023-01-27 06:05:15");
INSERT INTO function_authorized VALUES("26","4","Daily Report","1","2023-01-27 06:05:15");
INSERT INTO function_authorized VALUES("27","5","Daily Report","1","2023-01-27 06:05:15");
INSERT INTO function_authorized VALUES("28","1","Uncollected Report","1","2023-01-27 06:05:18");
INSERT INTO function_authorized VALUES("29","2","Uncollected Report","1","2023-01-27 06:05:19");
INSERT INTO function_authorized VALUES("30","3","Uncollected Report","1","2023-01-27 06:05:19");
INSERT INTO function_authorized VALUES("31","4","Uncollected Report","1","2023-01-27 06:05:20");
INSERT INTO function_authorized VALUES("32","5","Uncollected Report","1","2023-01-27 06:05:20");
INSERT INTO function_authorized VALUES("33","1","Customer Status Check","1","2023-01-27 06:05:23");
INSERT INTO function_authorized VALUES("34","2","Customer Status Check","1","2023-01-27 06:05:23");
INSERT INTO function_authorized VALUES("35","3","Customer Status Check","1","2023-01-27 06:05:24");
INSERT INTO function_authorized VALUES("36","4","Customer Status Check","1","2023-01-27 06:05:25");
INSERT INTO function_authorized VALUES("37","5","Customer Status Check","1","2023-01-27 06:05:26");
INSERT INTO function_authorized VALUES("38","1","Uncollected Report","0","2023-01-27 06:05:55");
INSERT INTO function_authorized VALUES("39","1","Uncollected Report","1","2023-01-27 06:05:58");
INSERT INTO function_authorized VALUES("40","5","User Maintenance","1","2023-01-27 06:12:51");
INSERT INTO function_authorized VALUES("41","5","Customer Card","0","2023-01-27 06:12:58");
INSERT INTO function_authorized VALUES("42","1","User Maintenance","1","2023-01-27 07:09:21");
INSERT INTO function_authorized VALUES("43","2","User Maintenance","1","2023-01-27 07:09:22");
INSERT INTO function_authorized VALUES("44","3","User Maintenance","1","2023-01-27 07:09:23");
INSERT INTO function_authorized VALUES("45","4","User Maintenance","1","2023-01-27 07:09:23");
INSERT INTO function_authorized VALUES("46","4","User Maintenance","0","2023-01-27 07:09:24");
INSERT INTO function_authorized VALUES("47","3","User Maintenance","0","2023-01-27 07:09:24");
INSERT INTO function_authorized VALUES("48","2","User Maintenance","0","2023-01-27 07:09:24");
INSERT INTO function_authorized VALUES("49","1","User Maintenance","0","2023-01-27 07:09:25");
INSERT INTO function_authorized VALUES("50","5","Customer Status Check","0","2023-01-27 08:10:33");
INSERT INTO function_authorized VALUES("51","1","Monthly Report","0","2023-01-27 08:20:00");
INSERT INTO function_authorized VALUES("52","1","Monthly Report","1","2023-01-27 08:20:08");
INSERT INTO function_authorized VALUES("53","1","Customer Card","0","2023-01-27 08:20:24");
INSERT INTO function_authorized VALUES("54","1","Customer Card","1","2023-01-27 08:20:29");
INSERT INTO function_authorized VALUES("55","1","Collection","0","2023-01-27 08:21:01");
INSERT INTO function_authorized VALUES("56","1","Collection","1","2023-01-27 08:21:06");
INSERT INTO function_authorized VALUES("57","5","User Maintenance","0","2023-01-27 09:07:01");
INSERT INTO function_authorized VALUES("58","5","User Maintenance","1","2023-01-27 09:07:07");
INSERT INTO function_authorized VALUES("59","5","User Maintenance","0","2023-01-27 09:11:00");
INSERT INTO function_authorized VALUES("60","5","User Maintenance","1","2023-01-27 09:11:04");
INSERT INTO function_authorized VALUES("61","6","Customer Card","1","2023-01-28 02:56:56");
INSERT INTO function_authorized VALUES("62","6","Collection","1","2023-01-28 02:57:12");
INSERT INTO function_authorized VALUES("63","6","Monthly Report","1","2023-01-28 02:57:18");
INSERT INTO function_authorized VALUES("64","6","Daily Report","1","2023-01-28 02:57:21");
INSERT INTO function_authorized VALUES("65","6","Uncollected Report","1","2023-01-28 02:57:24");
INSERT INTO function_authorized VALUES("66","6","Customer Status Check","1","2023-01-28 02:57:29");
INSERT INTO function_authorized VALUES("67","6","Customer Status Check","0","2023-01-28 02:57:35");
INSERT INTO function_authorized VALUES("68","6","Customer Status Check","1","2023-01-28 02:57:39");
INSERT INTO function_authorized VALUES("69","6","Uncollected Report","0","2023-01-28 02:57:42");
INSERT INTO function_authorized VALUES("70","6","Daily Report","0","2023-01-28 02:57:46");
INSERT INTO function_authorized VALUES("71","6","Monthly Report","0","2023-01-28 02:57:49");
INSERT INTO function_authorized VALUES("72","6","Monthly Report","1","2023-01-28 02:57:57");
INSERT INTO function_authorized VALUES("73","6","Customer Status Check","0","2023-01-28 02:58:02");
INSERT INTO function_authorized VALUES("74","6","User Maintenance","1","2023-01-28 02:58:05");
INSERT INTO function_authorized VALUES("75","6","Customer","1","2023-01-28 03:17:03");
INSERT INTO function_authorized VALUES("76","6","Customer","0","2023-01-28 03:17:06");
INSERT INTO function_authorized VALUES("77","6","Customer","1","2023-01-28 03:17:07");
INSERT INTO function_authorized VALUES("78","6","Product List","1","2023-01-28 03:17:10");
INSERT INTO function_authorized VALUES("79","6","Monthly Report","0","2023-01-28 03:19:25");
INSERT INTO function_authorized VALUES("80","6","Collection","0","2023-01-28 03:19:29");
INSERT INTO function_authorized VALUES("81","6","Customer Card","0","2023-01-28 03:19:32");
INSERT INTO function_authorized VALUES("82","6","User Maintenance","0","2023-01-28 03:20:07");
INSERT INTO function_authorized VALUES("83","6","User Maintenance","1","2023-01-28 03:20:08");
INSERT INTO function_authorized VALUES("84","6","Customer Card","1","2023-01-28 03:22:07");
INSERT INTO function_authorized VALUES("85","6","Customer Card","0","2023-01-28 03:25:33");
INSERT INTO function_authorized VALUES("86","6","Order List","1","2023-02-04 04:28:52");
INSERT INTO function_authorized VALUES("87","9","Customer Card","1","2023-02-07 03:48:36");
INSERT INTO function_authorized VALUES("88","9","Collection","1","2023-02-07 03:48:39");
INSERT INTO function_authorized VALUES("89","9","Monthly Report","1","2023-02-07 03:48:43");
INSERT INTO function_authorized VALUES("90","9","Daily Report","1","2023-02-07 03:48:46");
INSERT INTO function_authorized VALUES("91","9","Uncollected Report","1","2023-02-07 03:48:49");
INSERT INTO function_authorized VALUES("92","9","Customer Status Check","1","2023-02-07 03:48:53");
INSERT INTO function_authorized VALUES("93","9","User Maintenance","1","2023-02-07 03:48:57");
INSERT INTO function_authorized VALUES("94","9","Customer","1","2023-02-07 07:00:07");
INSERT INTO function_authorized VALUES("95","9","Customer","0","2023-02-07 07:00:08");
INSERT INTO function_authorized VALUES("96","9","Customer","1","2023-02-07 07:00:11");
INSERT INTO function_authorized VALUES("97","9","Customer","0","2023-02-07 07:00:12");
INSERT INTO function_authorized VALUES("98","9","Customer","1","2023-02-07 07:00:21");
INSERT INTO function_authorized VALUES("99","9","Customer","0","2023-02-07 07:00:22");
INSERT INTO function_authorized VALUES("100","9","Product List","1","2023-02-07 07:00:26");
INSERT INTO function_authorized VALUES("101","9","Product List","0","2023-02-07 07:00:26");
INSERT INTO function_authorized VALUES("102","9","Product List","0","2023-02-07 07:00:28");
INSERT INTO function_authorized VALUES("103","9","Order List","1","2023-02-07 07:00:31");
INSERT INTO function_authorized VALUES("104","9","Order List","0","2023-02-07 07:00:32");
INSERT INTO function_authorized VALUES("105","9","Inquiry List","1","2023-02-15 08:40:02");
INSERT INTO function_authorized VALUES("106","1","Inquiry List","1","2023-02-15 08:52:49");
INSERT INTO function_authorized VALUES("107","1","Inquiry List","0","2023-02-15 08:52:50");
INSERT INTO function_authorized VALUES("108","2","Inquiry List","1","2023-02-15 08:52:51");
INSERT INTO function_authorized VALUES("109","2","Inquiry List","0","2023-02-15 08:52:52");
INSERT INTO function_authorized VALUES("110","3","Inquiry List","1","2023-02-15 08:52:52");
INSERT INTO function_authorized VALUES("111","3","Inquiry List","0","2023-02-15 08:52:54");
INSERT INTO function_authorized VALUES("112","4","Inquiry List","1","2023-02-15 08:52:54");
INSERT INTO function_authorized VALUES("113","4","Inquiry List","0","2023-02-15 08:52:55");
INSERT INTO function_authorized VALUES("114","5","Inquiry List","1","2023-02-15 08:52:56");
INSERT INTO function_authorized VALUES("115","5","Inquiry List","0","2023-02-15 08:52:56");
INSERT INTO function_authorized VALUES("116","5","Inquiry List","0","2023-02-15 08:52:58");
INSERT INTO function_authorized VALUES("117","6","Inquiry List","1","2023-02-15 08:52:59");
INSERT INTO function_authorized VALUES("118","6","Inquiry List","0","2023-02-15 08:52:59");
INSERT INTO function_authorized VALUES("119","6","Inquiry List","0","2023-02-15 08:53:01");
INSERT INTO function_authorized VALUES("120","10","Customer Card","1","2023-03-01 01:48:27");
INSERT INTO function_authorized VALUES("121","10","Collection","1","2023-03-01 01:48:32");
INSERT INTO function_authorized VALUES("122","10","Monthly Report","1","2023-03-01 01:48:35");
INSERT INTO function_authorized VALUES("123","10","Daily Report","1","2023-03-01 01:48:39");
INSERT INTO function_authorized VALUES("124","10","Uncollected Report","1","2023-03-01 01:48:43");
INSERT INTO function_authorized VALUES("125","10","Customer Status Check","1","2023-03-01 01:48:47");
INSERT INTO function_authorized VALUES("126","10","User Maintenance","1","2023-03-01 01:48:50");
INSERT INTO function_authorized VALUES("127","10","Customer","1","2023-03-01 01:48:53");
INSERT INTO function_authorized VALUES("128","10","Customer","0","2023-03-01 01:48:54");
INSERT INTO function_authorized VALUES("129","10","Product List","1","2023-03-01 01:48:57");
INSERT INTO function_authorized VALUES("130","10","Product List","0","2023-03-01 01:48:58");
INSERT INTO function_authorized VALUES("131","10","Order List","1","2023-03-01 01:49:04");
INSERT INTO function_authorized VALUES("132","10","Order List","0","2023-03-01 01:49:05");
INSERT INTO function_authorized VALUES("133","10","Inquiry List","1","2023-03-01 01:49:08");
INSERT INTO function_authorized VALUES("134","10","Inquiry List","0","2023-03-01 01:49:09");
INSERT INTO function_authorized VALUES("135","11","Customer Card","1","2023-04-05 09:38:18");
INSERT INTO function_authorized VALUES("136","11","Collection","1","2023-04-05 09:38:26");
INSERT INTO function_authorized VALUES("137","11","Monthly Report","1","2023-04-05 09:38:34");
INSERT INTO function_authorized VALUES("138","11","Daily Report","1","2023-04-05 09:38:40");
INSERT INTO function_authorized VALUES("139","11","Uncollected Report","1","2023-04-05 09:38:44");
INSERT INTO function_authorized VALUES("140","11","Customer Status Check","1","2023-04-05 09:38:48");
INSERT INTO function_authorized VALUES("141","11","User Maintenance","1","2023-04-05 09:39:46");



CREATE TABLE `function_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO function_list VALUES("1","Customer Card","Loan");
INSERT INTO function_list VALUES("2","Collection","Loan");
INSERT INTO function_list VALUES("3","Monthly Report","Loan");
INSERT INTO function_list VALUES("4","Daily Report","Loan");
INSERT INTO function_list VALUES("5","Uncollected Report","Loan");
INSERT INTO function_list VALUES("6","Customer Status Check","Loan");
INSERT INTO function_list VALUES("7","User Maintenance","All");
INSERT INTO function_list VALUES("8","Customer","Product");
INSERT INTO function_list VALUES("9","Product List","Product");
INSERT INTO function_list VALUES("10","Order List","Product");
INSERT INTO function_list VALUES("11","Inquiry List","Loan");



CREATE TABLE `inquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL DEFAULT '---',
  `website` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `insert_date` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `income` double NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_acc` varchar(255) NOT NULL,
  `bank_holder` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_confirmation` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `customer_remark` text NOT NULL,
  `cs_remark` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `cus_status` varchar(255) DEFAULT NULL,
  `center` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO inquiry VALUES("12","OBL Method","-- None --","","---","onebizloan.com","Friendintro","2023-02-24 14:57:07","OB - 004 - SEAN","WANG LENG CHAI","740411016845","0197828095","","Malay","Male","--- Select Ocupation Category ---","","0","--- Select Bank ---","","","","","","JOHOR","Johor","0","","","Success","","9","12");
INSERT INTO inquiry VALUES("13","OBL Method","-- None --","","---","onebizloan.com","Friendintro","2023-02-24 15:04:23","OB - 004 - SEAN","CHAN KOK WAI","890813146101","0126572775","","Malay","Male","-- Select Ocupation Category --","","0","--- Select Bank ---","","","","","","SELANGOR","Selangor","0","","","Success","","9","12");
INSERT INTO inquiry VALUES("14","OBL Method","-- None --","","---","","Leadform","2023-02-25 13:13:38","","abc ","12345","12345678","12345@hotmail.com","Chinese","Male","Operator and Security Related","operator ","5000","--- Select Bank ---","","","","","pudu ","kl ","Kuala Lumpur","6000","ok ","ok 
","Processing","Chinese","9","12");



CREATE TABLE `installment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `installment_id` varchar(255) NOT NULL,
  `user` int(11) NOT NULL,
  `center` int(11) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `payment_due_date` varchar(255) NOT NULL,
  `installment_amount` double NOT NULL,
  `lates_charge` double NOT NULL,
  `payment_made` double NOT NULL,
  `payment_amount` double NOT NULL,
  `loan_remark` varchar(255) NOT NULL,
  `loan_status` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `job_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO job_appointment VALUES("9","13","13","2023-02-18","2023-02-18 09:09:56");
INSERT INTO job_appointment VALUES("10","13","24","2023-02-20","2023-02-20 15:10:53");
INSERT INTO job_appointment VALUES("11","13","26","2023-02-21","2023-02-21 01:39:48");



CREATE TABLE `product_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `fabric_size` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'Blind',
  `price` double NOT NULL,
  `agent_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

INSERT INTO product_list VALUES("1","6","Jotex - Ultra","126","Curtain","52.6","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("2","6","Jotex - Como","126","Curtain","48","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("3","6","Jotex - Moss","126","Curtain","54","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("4","6","Jotex - Betta","126","Curtain","44.6","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("5","6","PRO - PW","126","Curtain","39.6","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("6","6","PRO - YW3","126","Curtain","42.6","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("7","6","PRO - VIE","126","Curtain","41","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("8","6","ZM - _9927","126","Curtain","46.8","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("9","6","ZM - _9928","126","Curtain","50.4","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("10","6","ZM - _9930","126","Curtain","46.8","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("11","6","ZM - _9931","126","Curtain","50.4","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("12","6","ZM - _9932","126","Curtain","46.8","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("13","6","ZM - _9933","126","Curtain","50.4","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("14","6","ZM - _9935","126","Curtain","50.4","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("15","6","ZM - _6330","126","Curtain","50.4","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("16","6","ZM - _6333","126","Curtain","38","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("17","6","ZM - _6335","126","Curtain","38","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("18","6","ZM - _6337","126","Curtain","46.8","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("19","6","ZM - _6338","126","Curtain","46.8","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("20","6","ZM - _6339","126","Curtain","46.8","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("21","6","ZM - Sheer","130","Curtain","32","11","2023-01-28 08:19:18");
INSERT INTO product_list VALUES("24","6","Roller Blind - Blackout CMBO 211","0","Blind","10.5","11","2023-02-20 07:54:49");
INSERT INTO product_list VALUES("25","6","Roller Blind - Blackout CMBO 212","0","Blind","10.5","11","2023-02-20 07:54:49");
INSERT INTO product_list VALUES("26","6","Roller Blind - Blackout CMBO 213","0","Blind","10.5","11","2023-02-20 07:56:23");
INSERT INTO product_list VALUES("27","6","Roller Blind - Blackout CMBO 214","0","Blind","10.5","11","2023-02-20 07:56:23");
INSERT INTO product_list VALUES("28","6","Roller Blind - Blackout CMBO 215","0","Blind","10.5","11","2023-02-20 07:56:23");
INSERT INTO product_list VALUES("29","6","Roller Blind - Blackout CMBO 216","0","Blind","10.5","11","2023-02-20 07:56:23");
INSERT INTO product_list VALUES("30","6","Roller Blind - Blackout CMBO 217","0","Blind","10.5","11","2023-02-20 07:56:23");
INSERT INTO product_list VALUES("31","6","Roller Blind - Blackout CMBO 218","0","Blind","10.5","11","2023-02-20 07:56:23");
INSERT INTO product_list VALUES("32","6","Roller Blind - Non-blackout CST 6011","0","Blind","10.5","11","2023-02-20 07:58:28");
INSERT INTO product_list VALUES("33","6","Roller Blind - Non-blackout CST 6012","0","Blind","10.5","11","2023-02-20 08:08:33");
INSERT INTO product_list VALUES("34","6","Roller Blind - Non-blackout CST 6013","0","Blind","10.5","11","2023-02-20 08:09:26");
INSERT INTO product_list VALUES("35","6","Roller Blind - Non-blackout CST 6014","0","Blind","10.5","11","2023-02-20 08:09:26");
INSERT INTO product_list VALUES("36","6","Roller Blind - Non-blackout CST 6015","0","Blind","10.5","11","2023-02-20 08:09:26");
INSERT INTO product_list VALUES("37","6","Roller Blind - Non-blackout CST 6016","0","Blind","10.5","11","2023-02-20 08:09:26");
INSERT INTO product_list VALUES("38","6","Roller Blind - Non-blackout CST 6017","0","Blind","10.5","11","2023-02-20 08:09:26");
INSERT INTO product_list VALUES("39","6","Roller Blind - Sunscreen CMS 001","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("40","6","Roller Blind - Sunscreen CMS 002","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("41","6","Roller Blind - Sunscreen CMS 003","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("42","6","Roller Blind - Sunscreen CMS 004","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("43","6","Roller Blind - Sunscreen CMS 005","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("44","6","Roller Blind - Sunscreen CMS 006","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("45","6","Roller Blind - Sunscreen CMS 007","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("46","6","Roller Blind - Sunscreen CMS 008","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("47","6","Roller Blind - Sunscreen CMS 009","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("48","6","Roller Blind - Sunscreen CMS 010","0","Blind","10.5","11","2023-02-20 08:10:30");
INSERT INTO product_list VALUES("58","6","Zebra Blind - CZ 9911","0","Blind","11.4","11","2023-02-20 08:18:31");
INSERT INTO product_list VALUES("59","6","Zebra Blind - CZ 9912","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("60","6","Zebra Blind - CZ 9913","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("61","6","Zebra Blind - CZ 9914","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("62","6","Zebra Blind - CZ 9915","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("63","6","Zebra Blind - CZ 9916","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("64","6","Zebra Blind - CZ 9917","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("65","6","Zebra Blind - CZ 9918","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("66","6","Zebra Blind - CZ 9919","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("67","6","Zebra Blind - CZ 9920","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("68","6","Zebra Blind - CZ 9921","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("69","6","Zebra Blind - CZ 9922","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("70","6","Zebra Blind - CZ 9923","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("71","6","Zebra Blind - CZ 9924","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("72","6","Zebra Blind - CZ 9925","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("73","6","Zebra Blind - CZ 9926","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("74","6","Zebra Blind - CZ 9927","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("75","6","Zebra Blind - CZ 9928","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("76","6","Zebra Blind - CZ 9929","0","Blind","11.4","11","2023-02-20 08:22:04");
INSERT INTO product_list VALUES("77","6","Zebra Blind - CZ 9931","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("78","6","Zebra Blind - CZ 9932","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("79","6","Zebra Blind - CZ 9933","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("80","6","Zebra Blind - CZ 9934","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("81","6","Zebra Blind - CZ 9935","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("82","6","Zebra Blind - CZ 9936","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("83","6","Zebra Blind - CZ 9937","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("84","6","Zebra Blind - CZ 9938","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("85","6","Zebra Blind - CZ 9939","0","Blind","15","11","2023-02-20 08:24:12");
INSERT INTO product_list VALUES("86","6","Zebra Blind - CZ 2881","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("87","6","Zebra Blind - CZ 2882","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("88","6","Zebra Blind - CZ 2883","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("89","6","Zebra Blind - CZ 2884","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("90","6","Zebra Blind - CZ 2885","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("91","6","Zebra Blind - CZ 2886","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("92","6","Zebra Blind - CZ 2887","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("93","6","Zebra Blind - CZ 2888","0","Blind","18.8","11","2023-02-20 08:25:11");
INSERT INTO product_list VALUES("94","6","Zebra Blind - CZ 2801 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("95","6","Zebra Blind - CZ 2802 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("96","6","Zebra Blind - CZ 2803 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("97","6","Zebra Blind - CZ 2804 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("98","6","Zebra Blind - CZ 2805 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("99","6","Zebra Blind - CZ 2806 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("100","6","Zebra Blind - CZ 2807 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("101","6","Zebra Blind - CZ 2808 BO","0","Blind","14.3","11","2023-02-20 08:27:11");
INSERT INTO product_list VALUES("102","6","Zebra Blind - CZ 9951 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("103","6","Zebra Blind - CZ 9952 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("104","6","Zebra Blind - CZ 9953 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("105","6","Zebra Blind - CZ 9954 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("106","6","Zebra Blind - CZ 9955 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("107","6","Zebra Blind - CZ 9956 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("108","6","Zebra Blind - CZ 9957 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("109","6","Zebra Blind - CZ 9958 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("110","6","Zebra Blind - CZ 9959 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("111","6","Zebra Blind - CZ 9960 BO","0","Blind","23.3","11","2023-02-20 08:28:32");
INSERT INTO product_list VALUES("112","6","Vertical Blind - Blackout","0","Blind","8.2","11","2023-02-20 08:29:28");
INSERT INTO product_list VALUES("113","6","Vertical Blind - Non-blackout","0","Blind","5","11","2023-02-20 08:29:28");
INSERT INTO product_list VALUES("114","6","Venetian Blind - White","0","Blind","9","11","2023-02-20 08:29:59");
INSERT INTO product_list VALUES("115","6","Venetian Blind - Blue Green","0","Blind","9","11","2023-02-20 08:29:59");



CREATE TABLE `quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL DEFAULT 'Pending',
  `date` date DEFAULT NULL,
  `agent_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO quotation VALUES("11","6","13","Completed","2023-02-01","11","2023-02-01 02:24:16");
INSERT INTO quotation VALUES("13","6","13","Confirmed","2023-02-04","11","2023-02-04 06:08:53");
INSERT INTO quotation VALUES("14","6","13","Pending","2023-02-04","11","2023-02-04 10:27:59");
INSERT INTO quotation VALUES("22","6","29","Pending","2023-02-18","11","2023-02-18 08:53:13");
INSERT INTO quotation VALUES("23","6","30","Pending","2023-02-20","11","2023-02-20 06:59:34");
INSERT INTO quotation VALUES("24","6","13","Completed","2023-02-20","11","2023-02-20 11:57:42");
INSERT INTO quotation VALUES("25","6","13","Pending","2023-02-21","11","2023-02-21 01:32:09");
INSERT INTO quotation VALUES("26","6","13","Confirmed","2023-02-21","11","2023-02-21 01:32:40");
INSERT INTO quotation VALUES("27","6","31","Pending","2023-02-21","11","2023-02-21 01:38:18");
INSERT INTO quotation VALUES("28","6","32","Pending","2023-02-21","11","2023-02-21 01:38:48");
INSERT INTO quotation VALUES("29","6","33","Pending","2023-02-27","11","2023-02-27 14:36:10");
INSERT INTO quotation VALUES("31","6","13","Pending","2023-03-25","11","2023-03-25 01:59:42");
INSERT INTO quotation VALUES("32","6","36","Pending","2023-03-25","11","2023-03-25 11:03:44");



CREATE TABLE `quotation_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `design_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `fabric_size` double NOT NULL,
  `price_1` double NOT NULL,
  `price_2` double NOT NULL,
  `price_3` double NOT NULL,
  `install` int(11) NOT NULL,
  `install_quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `hook` varchar(255) DEFAULT NULL,
  `mount` varchar(255) DEFAULT NULL,
  `tieback` varchar(255) DEFAULT NULL,
  `pully` varchar(255) DEFAULT NULL,
  `headtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO quotation_details VALUES("22","11","","1","0","0","2","0","0","0","0","0","0","0","0","105.2","","","","","");
INSERT INTO quotation_details VALUES("23","11","","22","0","0","1","0","0","0","0","0","0","0","0","12","","","","","");
INSERT INTO quotation_details VALUES("25","13","","16","0","0","2","0","0","0","0","0","0","0","0","76","","","","","");
INSERT INTO quotation_details VALUES("26","13","","22","0","0","1","0","0","0","0","0","0","0","0","12","","","","","");
INSERT INTO quotation_details VALUES("27","13","","23","0","0","0.5","0","0","0","0","0","0","0","0","7.5","","","","","");
INSERT INTO quotation_details VALUES("28","14","","7","0","0","3","0","0","0","0","0","0","0","0","123","","","","","");
INSERT INTO quotation_details VALUES("35","22","","1","0","0","0","0","0","0","0","0","0","0","0","52.6","","","","","");
INSERT INTO quotation_details VALUES("36","23","","1","0","0","0","0","0","0","0","0","0","0","0","52.6","","","","","");
INSERT INTO quotation_details VALUES("37","24","","1","1","1","1","12","20","20","47.34","12","10","0","0","69.34","","","","","");
INSERT INTO quotation_details VALUES("40","24","","4","1","1","1","12","20","20","40.14","12","10","0","0","62.14","","","","","");
INSERT INTO quotation_details VALUES("41","24","","24","0","0","1","12","20","0","210","0","0","1","1","240","","","","","");
INSERT INTO quotation_details VALUES("42","25","","115","0","0","1","10","10","0","180","0","0","1","1","210","","","","","");
INSERT INTO quotation_details VALUES("43","26","","1","4","2","1","12","20","10","47.34","20","12","0","0","79.34","","","","","");
INSERT INTO quotation_details VALUES("44","27","","2","5","2","1","12","30","10","43.2","28","12","0","0","83.2","","","","","");
INSERT INTO quotation_details VALUES("45","28","","25","0","0","1","5","5","0","210","0","0","1","2","270","","","","","");
INSERT INTO quotation_details VALUES("46","29","","1","1","1","1","100","100","126","284.04","108","90","0","0","482.04","","","","","");
INSERT INTO quotation_details VALUES("48","31","","1","1","1","1","20","20","20","68.38","24","20","0","0","112.38","","","","","");
INSERT INTO quotation_details VALUES("49","32","","27","0","0","1","13","12","0","210","0","0","1","1","240","","","","","");



CREATE TABLE `recently_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO recently_login VALUES("1","1","1676601697");
INSERT INTO recently_login VALUES("2","2","1672368785");
INSERT INTO recently_login VALUES("3","3","1672632128");
INSERT INTO recently_login VALUES("4","4","1672393422");
INSERT INTO recently_login VALUES("5","5","1672624974");
INSERT INTO recently_login VALUES("6","6","1680251705");
INSERT INTO recently_login VALUES("7","7","1672714915");
INSERT INTO recently_login VALUES("8","9","1672715616");
INSERT INTO recently_login VALUES("9","10","1678265795");
INSERT INTO recently_login VALUES("10","11","1680331551");
INSERT INTO recently_login VALUES("11","12","1680861156");
INSERT INTO recently_login VALUES("12","13","1680251873");
INSERT INTO recently_login VALUES("13","15","1680794642");
INSERT INTO recently_login VALUES("14","17","1680858273");



CREATE TABLE `super_admin_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` varchar(256) NOT NULL,
  `loginid` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO super_admin_login VALUES("1","admin","admin","admin123","superadmin");



CREATE TABLE `track_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `center_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO track_list VALUES("1","Aluminium Track Silver","12","6","11");
INSERT INTO track_list VALUES("2","Aluminium Track White","15","6","11");
INSERT INTO track_list VALUES("3","Aluminium Track Brown","15","6","11");
INSERT INTO track_list VALUES("4","Wooden Rod","20","6","11");
INSERT INTO track_list VALUES("5","Metal Rod","28","6","11");



CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `superadmin` int(1) NOT NULL DEFAULT '0',
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ic` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL DEFAULT '0',
  `superior` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users VALUES("0","superadmin","$2y$10$RnPbSJCGYLNSmJPPGgMTh.MQfbgId8HsddSo4cX41MePsqCqaGgiK","1","superadmin","123344","0123456789","0","0","0000-00-00 00:00:00");
INSERT INTO users VALUES("1","admin","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","1","admin","123344","01234567890","-4000","0","2022-11-11 14:44:18");
INSERT INTO users VALUES("7","lam","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","0","lam","2147483647","0109338967","148586","1","0000-00-00 00:00:00");
INSERT INTO users VALUES("8","tony","$2y$10$SJ9Ik/QECdVVZ/AGg6RzW.LN4gewUkYiEwoiLMJlkIHXQZyIth9p2","0","tony","2147483647","01758957895","19391","1","2022-11-29 03:42:49");
INSERT INTO users VALUES("9","roy","$2y$10$c.XjikReNpcyJ0sjxumI8.DU3BoLiQOfxkXSyueneiCGIKqJ6.GZG","0","roy","2147483647","01785446461","10080","1","2022-11-29 03:43:19");
INSERT INTO users VALUES("16","adrian","$2y$10$v1f6OHcMVFoPUaWwJ/7UlOE5HgpV4nq3JIzCHK2PfzRcJz9fmiBQa","0","adrian","2569874","012123456","1025","1","2022-12-14 01:27:06");
INSERT INTO users VALUES("17","nick","$2y$10$InAAAMP4IQe/gzGmN8F1qe/nuT5HAPS/yqY54s1ofyCsRhJPveuJ.","0","nick","00000","00000","1500","1","2023-02-07 09:21:31");
INSERT INTO users VALUES("18","jimmy","$2y$10$8VRyZs8.d8juuoDK3hhblOqIVUadx8Spz7z6mJhWVM7dgg9ZPmney","0","jimmy","0","0","3745","1","2023-02-17 07:35:37");
INSERT INTO users VALUES("22","NL","$2y$10$oto5ZaLOFgfdi3H91gvdJ.e8fvBilKCxEzsj1CpJchY6cEVgufNcC","0","NL","040920100933","01116677499","49225","7","2023-04-03 06:29:57");

