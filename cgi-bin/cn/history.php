<?php
include('header.php');

if(isset($_REQUEST['cust_cardid']))
{
	$sql = "SELECT * FROM customers_card WHERE id =".$_REQUEST['cust_cardid'];
	$result = mysqli_query($conn,$sql);
	if($result->num_rows > 0)
	{
		$row = $result->fetch_assoc();
		$card_id = $row['id'];
		$customer_id = $row['customer_id'];
		$center_id = $row['center_id'];
		$amt_per_day = $row['amt_per_day'];
		$no_of_terms = $row['no_of_terms'];
		$start_date = $row['start_date'];
		$duration = $row['duration'];
		$advance = $row['advance'];
		$loan_out = $row['loan_out'];
		$clear_payment = $row['clear_payment'];
		$deposit = $row['deposit'];
		$crossed = $row['crossed'];
		$crossed_date = $row['crossed_date'];
		$profit = $row['profit'];
	}
	$fetch_cust_info = "SELECT * FROM customers WHERE id=".$customer_id;
	$result_cust = mysqli_query($conn,$fetch_cust_info);
	if($result_cust->num_rows > 0)
	{
		$result_row = $result_cust->fetch_assoc();
		$name = $result_row['name'];
		$new_IC = $result_row['new_IC'];
		$address_1 = $result_row['address_1'];
		$occupation = $result_row['occupation'];
		$telephone_1 = $result_row['telephone_1'];
		$fax = $result_row['fax'];
		$gender = $result_row['gender'];
		$customer_pic = $result_row['customer_pic'];
		$customer_guarantor_pic = $result_row['customer_guarantor_pic'];
		$Guarantor_Name = $result_row['Guarantor_Name'];
	}
	
	$select_collection = "SELECT * FROM collection WHERE card_id =".$_REQUEST['cust_cardid'];
	$result = mysqli_query($conn,$select_collection);
	$total_amount =0;
	$total_interest =0;
	$date_hwe_blue = array();
	if($result->num_rows > 0)
	{
		while($row = $result->fetch_assoc())
		{
			//$date_hwe_blue[]= $row['d_date_disp'];
			$date_hwe_blue[$row['d_date_disp']]['amount'] = $row['amount'];
			$date_hwe_blue[$row['d_date_disp']]['interest'] = $row['interest'];
			$total_amount += $row['amount'];
			$total_interest += $row['interest'];
		}
	}
	
	
	$amount_balance =$loan_out+$profit-$total_amount;
}
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>卡收集历史</h1>
          </center>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <?php 
	$previous = "javascript:history.go(-1)";
	if(isset($_SERVER['HTTP_REFERER'])) {
		$previous = $_SERVER['HTTP_REFERER'];
	}?>
	<a href="<?php echo $previous;?>" class="btn btn-info">BACK</a>
    <section>
    	<div class="container">
        	<table border="1" align="center" style="width: 100%;">
            <tbody><tr>
              <td colspan="2"><table border="1">
                <tbody><tr>
                  <td>顾客 ID </td>
                  <td><label><?php echo $customer_id.' - '.$name ;?> </label></td>
                </tr>
                <tr>
                  <td>卡片 ID </td>
                  <td><label><?php echo $card_id ;?></label></td>
                </tr>
              </tbody></table>
        <br>
	    <table width="100%" cellspacing="1" cellpadding="1" border="1" >
          <tbody>
          
          <?php 
		 	//echo $no_of_days = '+'.$duration+$no_of_terms.' days';
			$no_of_days = '+'.$no_of_terms.' days';
			$end_date = date('d-m-Y', strtotime($no_of_days));
			$array = array(); 
  
			// Use strtotime function 
			$Variable1 = date('d-m-Y',strtotime($start_date)); 
			$Variable2 = date('d-m-Y',strtotime($end_date));
			
			function getDatesFromRange($start, $end, $format = 'd-m-Y') { 
      
				// Declare an empty array 
				$array = array(); 
				  
				// Variable that store the date interval 
				// of period 1 day 
				$interval = new DateInterval('P1D'); 
			  
				$realEnd = new DateTime($end); 
				$realEnd->add($interval); 
			  
				$period = new DatePeriod(new DateTime($start), $interval, $realEnd); 
			  
				// Use loop to store date into array 
				foreach($period as $date) {                  
					$array[] = $date->format($format);  
				} 
  
				// Return the array elements 
				return $array; 
			} 
			  
			// Function call with passing the start date and end date 
			$Date = getDatesFromRange($Variable1, $Variable2);
			?>
			
			<?php 
			$i = 1;
			$count = 1;
			//print_r($date_hwe_blue );
			//echo $Variable1;
			foreach($Date as $d)
			{
				//if($d != $Variable1)
				//{
					 $style ='';
					/* if(strtotime($d) < strtotime(date("d-m-Y"))){
						 $style = 'style="background:blue;color:#fff;"';
					 }
					 else
					 {
						 $style = 'style="background:red;color:#fff;"';
					 }
					 */
					 if(strtotime($d) <= strtotime(date("d-m-Y"))){
						 //$style = 'style="background:blue;color:#fff;"';
						 $style = 'style="background:red;color:#fff;"';
					 }
					 
					 /*foreach($date_hwe_blue as $dd_blue)
					 {
						 $dddddd =  date('d-m-Y',$dd_blue);
						 if($dddddd == $d)
						 {
							 $style = 'style="background:blue;color:#fff;"';
						 }
					 }*/
					 foreach($date_hwe_blue as $key_date => $dd_blue)
					 {
						 $dddddd =  date('d-m-Y',$key_date);
						 if($dddddd == $d)
						 {
							 if($dd_blue['amount'] == 0 && $dd_blue['interest'] == 0)
							 {
							 }
							 else
							 {
								 $style = 'style="background:blue;color:#fff;"';
							 }
						 }
					 }
					
					if($count == $i)
					{
						$count= $count+10;
						
					?>
					<tr>
                    <?php }?>
						<td <?php echo  $style;?>><?php echo $d;?></td>
					<?php if($count == $i)
					{
					?>
                    </tr>		
                    <?php 
					
					}?>
					<?php
					$i++;	
				//}
			}
			?>
        </tbody></table>
      <label><br>
      </label>
      <table width="100%" cellspacing="1" cellpadding="1">
        <tbody><tr>
          <td>名称</td>
          <td class="SpecialHeader"><?php echo $name;?></td>
          <td>期间</td>
          <td class="SpecialHeader"><div align="right"><?php echo $duration;?></div></td>
          </tr>
        <tr>
          <td>职业</td>
          <td class="SpecialHeader"><?php echo $occupation;?></td>
          <td>订金</td>
          <td class="SpecialHeader"><div align="right"><?php echo $deposit;?></div></td>
          </tr>
        <tr>
          <td>身份证 /护照</td>
          <td class="SpecialHeader"><?php echo $new_IC;?></td>
          <td>每天付款</td>
          <td class="SpecialHeader"><div align="right"><?php echo $amt_per_day;?></div></td>
          </tr>
        <tr>
          <td>地址</td>
          <td class="SpecialHeader"><p><?php echo $address_1;?></p></td>
          <td>借出 </td>
          <td class="SpecialHeader"><div align="right"><?php echo $loan_out;?></div></td>
          </tr>
        <tr>
          <td>电话</td>
          <td class="SpecialHeader"><?php echo $telephone_1;?></td>
          <td>金额余额 </td>
          <td class="SpecialHeader"><div align="right"><?php echo $amount_balance;?></div></td>
          </tr>
        <tr>
          <td>开始日期 </td>
          <td class="SpecialHeader"><?php echo $start_date;?></td>
          <td>总利息 </td>
          <td class="SpecialHeader"><div align="right"><?php echo $total_interest;?></div></td>
          </tr>
          <tr>
        <tr>
          <td>地位</td>
          <td class="SpecialHeader"><?php echo $clear_payment==1?"Completed":"Pending";?></td>
          <td>浮动余额</td>
          <td class="SpecialHeader"><div align="right">
          	<?php 
			$sql_query = "SELECT * FROM collection WHERE card_id = ".$_GET['cust_cardid'];
			$result = mysqli_query($conn,$sql_query);
			$count_hwe = 0;
			$amounts = 0;
			if(mysqli_num_rows($result)>0)
			{
				
				while($rowsss = mysqli_fetch_assoc($result))
				{
					if($rowsss['amount']!=0)
					{
						$count_hwe ++;
						$amounts += $rowsss['amount'];
					}
				}
			}
			
			echo $amounts-($amt_per_day*$count_hwe);
			?>
          </div></td>
        </tr>
      </tbody></table></td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2"><table width="100%" cellspacing="1" cellpadding="1">
        <thead>
            <tr>
                <td>中心</td>
                <td>日期</td>
                <td>收藏</td>
                <td>兴趣</td>
            </tr>
        </thead>
        <tbody>
        	<?php 
	        $select_collection = "SELECT * FROM collection WHERE card_id =".$_REQUEST['cust_cardid']." ORDER BY d_date_disp ASC";
			$result = mysqli_query($conn,$select_collection);
			$total_amount =0;
			$total_interest =0;
			if($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
				{
					
					$total_amount += $row['amount'];
					$total_interest += $row['interest'];
			?>
            <tr>
                <td><?php echo $row['center_id'];?></td>
                <td><?php date_default_timezone_set("Asia/Kuala_Lumpur"); echo date('d-m-Y',$row['d_date_disp']);?></td>
                <td><div align="right"><?php echo $row['amount'];?></div></td>
                <td><div align="right"><?php echo $row['interest'];?></div></td>
            </tr>
            
			<?php
				}
			}
			?>
         <tr>
          <td colspan="2">&nbsp;</td>
          <td><div align="right"><strong><?php echo $total_amount;?></strong></div></td>
          <td><div align="right"><strong><?php echo $total_interest;?></strong></div></td>
        </tr>
        <tr>
          <td colspan="3"><div align="right"></div></td>
          <td><div align="right"><strong><?php echo $total_amount+$total_interest;?></strong></div></td>
        </tr>
        
      </tbody></table></td>
    </tr>
    <tr>
      <td><img src="<?php echo SITEURL.'/customer_pictures/'.$customer_pic; ?>" alt="<?php echo $name;?>" width="200" height="200"></td>
      <td><img src="<?php echo SITEURL.'/customer_pictures/'.$customer_guarantor_pic; ?>" alt="<?php echo $Guarantor_Name;?>" width="200" height="200"></td>
    </tr>
  </tbody></table>
        </div>
    </section><br/>
</div>
<style>
.SpecialHeader {
    color: #0000FF;
}
body
{
	color:#000;
}
.span_hwe
{
	float:left;
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

</style>