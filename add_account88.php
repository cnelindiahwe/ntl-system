<?php
include('header.php');

if($_SERVER["REQUEST_METHOD"] == "POST") {
	$available = true;
	$agent_id = $_SESSION["agent_id"];
	$t_cust_id = "0";
	$t_center_id = $_POST['t_center_id'];
	$start_date = date("d-m-Y", strtotime($_POST['d_startDate']));
	$code = $_POST['code'];
	$f_loan_out = $_POST['f_loan_out'];
	$f_profit = $_POST['f_profit'];
	$f_deposit = $_POST['f_deposit'];
	$f_adv = $_POST['f_adv'];
	$t_duration = $_POST['t_duration'];
	$i_term = $_POST['i_term'] * $t_duration;
	$crossed_date = date("d-m-Y", strtotime($start_date) + ($i_term * 24 * 3600));

	$sql = "SELECT * FROM customers_card WHERE code != null;";
	$res = mysqli_query($conn, $sql);
	while ($myrow = mysqli_fetch_array($res)) {
		if ($myrow['code'] == $code)
			$available = false;
	}

	if ($available == true) {
		$sql = "INSERT INTO ".$table_prefix."customers_card (
		customer_id,
		center_id,
		no_of_terms,
		start_date,
		duration,
		advance,
		loan_out,
		deposit,
		crossed_date,
		profit,
		clear_payment,user_agent_id, code) VALUES ($t_cust_id ,
		'$t_center_id',
		'$i_term',
		'$start_date',
		'$t_duration',
		'$f_adv',
		'$f_loan_out',
		'$f_deposit',
		'$crossed_date',
		'$f_profit',
		'',
		$agent_id, '$code')";	
		if (mysqli_query($conn, $sql)) {
		    echo "<script>alert('Created successfully.')</script>";
		    echo "<script>window.location = 'account88.php';</script>";
		} else {
		    echo "<script>alert('An unknown problem occurred, please try again later.')</script>";
		}
	} else {
	    echo "<script>alert('Your code has been duplicated, please modify it and try again.')</script>";
	}
}
?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>Account Card</h1></center>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <?php 
	$previous = "javascript:history.go(-1)";
	if(isset($_SERVER['HTTP_REFERER'])) {
		$previous = $_SERVER['HTTP_REFERER'];
	}?>
	<a href="account88.php" class="btn btn-info">Back</a>
	<section>
    	<div class="container">
        	<form id="form1" name="form1" method="post">
            	<input name="t_cust_id" type="hidden" id="t_cust_id" value="<?php echo $t_cust_id; ?>" size="30" maxlength="30">
            	<!-- <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>身分證/護照</label>
                    </div>
                    <div class="col-md-6">
                    	<span class="SpecialHeader"><?php echo $new_IC; ?></span>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>姓名</label>
                    </div>
                    <div class="col-md-6">
                    	<span class="SpecialHeader"><?php echo $name; ?></span>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/> -->
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>Center ID</label>
                    </div>
                    <div class="col-md-6">
                    	                    
                    	<select name="t_center_id" class="form-control" style="width:50%">
                        <?php 
						$current_user_center= '';
						if($_SESSION["group_name"]!='superadmin')
						{
							$current_user_center = "WHERE id = ".$_SESSION["center_id"];
						}
						
						
							$select_center_deatil = "SELECT * FROM ".$table_prefix."center_detail ".$current_user_center." ORDER BY show_sequence ASC";
							$result = mysqli_query($conn,$select_center_deatil);
							if($result->num_rows > 0)
							{
								//$count=0;
								
								while($row = $result->fetch_assoc()){
										
						?>
                        <option value="<?php echo $row['id'];?>"><?php echo $row['center_name'];?></option>                            
                        <?php }}?>
                         <!--<option value="1">1 - Company</option>
                            <option value="2">2 - A</option>
                            <option value="3">3 - B</option>
                            <option value="4">4 - C</option>
                            <option value="5">5 - D</option>-->
                        </select>
                        
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>Lend Date</label>
                    </div>
                    <div class="col-md-6">
                    	
                    	<input name="d_startDate" type="date" required  id="d_startDate" class="form-control" value="">

                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <!-- <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>卡 No </label>
                    </div>
                    <div class="col-md-6">
                    	<span class="ErrMsg">自動生成</span> 
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/> -->
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>Code</label>
                    </div>
                    <div class="col-md-6">
                    
                    	<input name="code" type="text" required  id="code" class="form-control" value="">
                        
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>Lend Out</label>
                    </div>
                    <div class="col-md-6">
                    
                    	<input name="f_loan_out" required  class="form-control" type="text" id="f_loan_out" value="">
                        
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>Interest</label>
                    </div>
                    <div class="col-md-6">
                    	
                    	<input name="f_profit" required  class="form-control" type="text" id="f_profit" value="">
                      
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>Deposit</label>
                    </div>
                    <div class="col-md-6">
                    	
                    	<input name="f_deposit" required  class="form-control" type="text" id="f_deposit" value="">
                      
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>STP</label>
                    </div>
                    <div class="col-md-6">
                    	
                    	<input name="f_adv" required  type="text" class="form-control" id="f_adv" value="">
                      
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2">
                    	<label>Duration</label>
                    </div>
                    <div class="col-md-3">
                    
                    	<input name="i_term" type="text" required  id="i_term" class="form-control" value="">
                        
                    </div>
                    <div class="col-md-3">
                        
                        <select name="t_duration" class="form-control">
                            <option label="01 - Daily" value="1">01 - Daily</option>
                            <option label="07 - Weekly" value="7">07 - Weekly</option>
                            <option label="10 - 10 days" value="10">10 - 10 days</option>
                            <option label="14 - Bi Weekly" value="14">14 - Bi Weekly</option>
                            <option label="15 - half month" value="15">15 - half month</option>
                            <option label="20 - 20 days" value="20">20 - 20 days</option>
                            <option label="21 - 3 weeks" value="21">21 - 3 weeks</option>
                            <option label="30 - monthly" value="30">30 - monthly</option>
                        </select>
                       
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                </div>
                <br/>






                
                <div class="row form-group">
                	<div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                    	
                    	<input name="NewCard" class="btn btn-success" type="submit" id="NewCard" value="Create New Card">&nbsp;&nbsp; <input type="reset" class="btn btn-success" name="Submit2" value="Reset">
                       
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <br/>
            </form>
        </div>
    </section>
</div>
<style>
body
{
	color: #000;
}
.customer_table
{
	color: #000;
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
caption {
	height: 42px;
	padding-top: 6px !important;
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	font-weight: bold;
	color: #FFF;
	background-color: #038603;
	border-top-style: double;
	border-right-style: double;
	border-bottom-style: double;
	border-left-style: double;
	padding-top:0px;
	padding-bottom:0px;
	text-align: center;
	caption-side: top;
}
.ErrMsg {
    font-family: Arial, Helvetica, sans-serif;
    color: #FF0000;
}
.SubMenuCaption {
    font-family: Arial, Helvetica, sans-serif;
    font-weight: bold;
    color: #FFFFFF;
    /*background-color: #A7B5CE;*/
    border-top-style: none;
    border-right-style: none;
    border-bottom-style: none;
    border-left-style: none;
}

.SpecialHeader {
    color: #0000FF;
}
.btn-success
{
	background:#038603 !important;
}
</style>