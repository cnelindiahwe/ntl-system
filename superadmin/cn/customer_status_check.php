<?php 
include('header.php');

if(isset($_REQUEST['customer_ic_name']))
{
	$value = $_REQUEST['customer_ic_name'];
	if($_SESSION["group_name"]!='superadmin')			
	{
		$search_query = "SELECT * FROM customers WHERE name LIKE '%$value%' OR new_IC LIKE '%$value%' and user_agent_id=".$_SESSION['agent_id'];
	}
	else
	{
		$search_query = "SELECT * FROM customers WHERE name LIKE '%$value%' OR new_IC LIKE '%$value%'";
	}
	
	$result = mysqli_query($conn, $search_query);
}
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="">
          <center> <h1>&#23458;&#25143;&#29366;&#24577;&#26816;&#26597;</h1>
          </center>
         
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6"><form method="get"><div class="row form-group"><div class="col-md-6"><label for="customer_id">&#23458;&#25143;&#36523;&#20221;&#35777;&#21495;</label>
                </div>
                            <div class="col-md-6"><input type="text" name="customer_ic_name" class="form-control" value="<?php echo $_REQUEST['customer_ic_name']; ?>"/></div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-6"></div>
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-success" name="search">&#25628;&#32034;</button><button type="reset" name="reset" class="btn btn-success">&#37325;&#21551;</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </section>
    
<section>
    	<div class="container">
        	<div class="row">
                    <table cellspacing="0" cellpadding="2" class="table table-striped table-bordered" style="width: 100%;">
                        <caption class="menu-header">
                        &#23458;&#25143;&#36164;&#26009;
                        </caption>
                        <thead>
                            <tr class="customer_table">
                                <th>&nbsp;</th>
                                
                                <th>&#39038;&#23458; ID  </th>
                                <th>&#39038;&#23458;&#22995;&#21517;</th>
                                <th>&#25252;&#29031;&#21495;&#30721; </th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php 
                            if ($result->num_rows > 0) 
							{
								$count=0;
								while($row = $result->fetch_assoc()) {
							?>
                            <tr>
                                <td></td>
                                
                                <td><a href="customer_card.php?t_cust_id=<?php echo $row['id'];?>&amp;Submit=1" target="_self"><?php echo $row['id'];?></a></td>
                                <td><?php echo $row['name'];?></td>
                                <td><?php echo $row['new_IC'];?></td>
                            </tr>
							<?php
								}
							}
							else
							{
							?>
                                                        
                            <tr>
                            	<td colspan="7" class="ErrMsg"><div align="center">***** &#25214;&#19981;&#21040;&#20250;&#21592;&#12290; &#35831;&#20877;&#35797;&#19968;&#27425; ***** </div></td>
                            </tr>
                           <?php }?>
                        </tbody>
                    </table>
                
          </div>
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