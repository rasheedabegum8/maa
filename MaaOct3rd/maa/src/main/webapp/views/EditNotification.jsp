<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>MPRTS|Dashboard</title>
	<meta name="description" content="Maa Properties">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>

    <style>
        .navbar-brand {
            font-size: 18px !important;
        }
        /* #document-full{
        	height:300px;
        } */
    </style>


</head>

<body>
   <!-- Preloader -->
	<div id="preloader">
		<i class="circle-preloader"></i> <img
			src="resources/img/logo/rounded_logo.png" alt="">
	</div>
   

    <div id="right-panel" class="right-panel" style="margin-top: 0px;">
      
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">
                <div class="col-md-12 col-sm-12 col-xs-12" id="assetMblVersn">
                    <div class="card" id="responseCard">
                       <div class="card-header">
                            <div class="row">
                                <div class="col-8">
                                    <strong class="card-title"><a type="button" href="notification?prtyid=${prptyid}&prptyName=${prptyName}" class="btn btn-info btn-sm" style="color: #fff"><i class="fa fa-arrow-left"></i></a>&nbsp; Edit Notification</strong>
                                </div>
                            </div>
                        </div> 
                        <div class="card-body">
                        
                        
                        
                        
                        <form action="updateNotification" method="POST" onsubmit="return checkForm(this);">
    			<input type="hidden" class="form-control" id="prptyid" name="prptyid" value='${prptyid}'>
					<input type="hidden" class="form-control" id="prptyName" name="prptyName" value='${prptyName}'>
					 <input type="hidden" class="form-control" name="notfyId" value='${id}'>
					 <input type="hidden" class="form-control" name="flag" id="flag" value='${flag}'>
					 <input type="hidden" class="form-control" name="f_flatno" id="f_flatno" value='${flatno}'>
					  <input type="hidden" class="form-control" name="desc" id="desc" value='${desc}'>
					 
      
    
        						<div class="row"> 
                                <div class="col mx-auto">
                                    <div class="card">
                                        <div class="card-header"><strong>Notification Details: NOTIFY-${id}</strong></div>
                                        <div class="card-body card-block">
                                            <div class="form-group">
                                                <label for="company" class=" form-control-label">Title<span style="color:red" >*</span></label>
                                                <input type="text" id="etitle" name="etitle" value="${title}" placeholder="Title" class="form-control" minlength="2" maxlength="75" required>
                                                <span style="color:#a832a2">75 characters only allowed</span>
                                            </div>
                                            <div class="form-group"> 
                                                <label for="company" class=" form-control-label">Date<span style="color:red" >*</span></label>
                                                <input type="date" id="edate" name="edate" value="${notficationdate}" placeholder="Title" class="form-control" required>
                                            </div>

											<div class="form-group">
													<div class="form-check-inline form-check"><span style="color:red" >*</span>
														<label for="inline-radio1" class="form-check-label ">
															<input type="radio" id="expensefor_ed" name="notificfor"
															value="1" class="form-check-input" required>Full
															Property
														</label> &nbsp;&nbsp; <label for="inline-radio2"
															class="form-check-label "> <input type="radio"
															id="expensefor_ed1" name="notificfor" value="0"
															class="form-check-input" required>Only Assets
														</label>
													</div>
												</div>

                                            <div class="form-group" id="assetDiv_ed">
                                               <label for="company" class="form-control-label">Notification Association</label>
                                                <select class="custom-select" id="e_flatno" name="flatno" >
                                                        <option value="">Select Asset</option>
                                                         <c:forEach var="asset" items="${assetList}">
                                                         <option value="${asset.flatno}">${asset.flatno}</option>
                                                         </c:forEach>
                                                      </select>
                                                </div>

                                            <div class="form-group">
                                                <label for="company" class=" form-control-label">Description<span style="color:red" >*</span></label>
                                                <div class="editor-full">
                                                    <div id="document-full" class="ql-scroll-y">
											<textarea id="e_description" name="description" data-rule-required='true'
											rows='1' class="ckeditor" class="form-control" maxlength="500" required >									
										</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
     
    	<center> <button type="submit" class="btn btn-info btn-sm">Save changes</button>
		 </center> 
      
      </form>
                      
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
				
				<!--Notification ID Modal popup start here-->
				
				<div class="modal fade" id="notificationIdModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><span id="vid"></span></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		  <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                             <div class="owner-image my-4 text-center">
                                        <img src="resources/images/home-images/bell.png" class="img-fluid">
                                    </div>
                                   
                          <div class="row pl-5">
                                      <div class="col">
                                            <label class=" form-control-label">Date:</label></div>
                                        <div class="col">
                                            <p class="form-control-static"><span id="vdate"></span></p>
                                        </div>
                                    </div>
                                    <div class="row pl-5">
                                        <div class="col col-md-5">
                                            <label class=" form-control-label">Unit No:</label></div>
                                        <div class="col col-md-7">
                                            <p class="form-control-static"><span id="vflatno"></span></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-7 col-md-4 col-sm-12 col-xs-12 mt-4">
                                    <label class=" form-control-label pt-4">Title:</label>
                                    <p class="form-control-static text-justify"><span id="vtitle"></span></p>

                                    <label class=" form-control-label">Description:</label>
                                    <p class="form-control-static text-justify">
                                    <span id="vdesc"></span>
                                    
                                    </p>


                                </div>
                            </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
      
      </div>
    </div>
  </div>
</div>
	
            </div>
            <!-- .animated -->
        </div>
        <!-- /.content -->
        <div class="clearfix"></div>
       
    </div>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    
    <script>
    var flag=$('#flag').val();
    var flatno=$('#f_flatno').val();
    var desc=$('#desc').val();
    $('#e_description').val(desc);

	/* var html = desc.replace(/<[^>]+>/gm, '').replace(/&nbsp;/g, ' ');
	CKEDITOR.instances.e_description.setData(desc);
	 */
    if(flag==1){
		$('#assetDiv_ed').hide();
		$('#expensefor_ed').prop("checked",true)
		}
	else {
		$('#assetDiv_ed').show();
		$('#expensefor_ed1').prop("checked",true)
		} 

	 var�idTypeVal�=�$("select[name='flatno']");
		
		�idTypeVal.find('option[value="'�+�flatno�+�'"]').attr('selected', true);

  //  $("#e_flatno>[value="+flatno+"]").attr("selected", "true");
    
function sendMail(){
	var notiftnfor;var flatno; 
	var prptyid=$('#prptyid').val();
	var prptyName=$('#prptyName').val();
	    
	var title=$('#title').val();
	var notfDate=$('#notfDate').val();	
	if (document.getElementById('expensefor').checked) {
		 notiftnfor = document.getElementById('expensefor').value;
		}
	else{
		notiftnfor = document.getElementById('expensefor1').value;
		}
	if(notiftnfor==0){
		flatno=$('#flatno').val();
	}
	var description=$('#description').val();

var data={title:title,notfDate:notfDate,notiftnfor:notiftnfor,
		  flatno:flatno,description:description,prptyid:prptyid,prptyName:prptyName}
	 $.ajax({
	    	type : "POST",
	        asyn : false,
	        url  : "sendNotificationMail",
	        contentType: "application/json", // NOT dataType!
	        data : JSON.stringify(data),
	        success  : function(response){
	        	
	        }
		    });
	
}
</script>
    <script>
function viewNotification(id,flag){
	
	 $.ajax({
	    	type : "GET",
	        asyn : false,
	        contentType: "application/json", // NOT dataType!
	        url  : "getNotificationById?id="+id+"",
	        success  : function(response){
	        	var id1="NOTIFY-"+response.id;
	        	$('#vid').text(id1);
	        	$('#vtitle').text(response.title);
	        	$('#vdate').text(response.notificationdate);
	        	//$('#vflatno').text(response.flatno);

	        	if(flag==1){
	        		$('#vflatno').text('Full-Property');
		        	
		        	}else{
		        		$('#vflatno').text(response.flatno);
			        	}
	        	var htString=response.description
	        	var html = htString.replace(/<[^>]+>/gm, '').replace(/&nbsp;/g, ' ');
	        	$('#vdesc').text(html);
	        }
		    });
	}

function deleteNotification(id){
	var prptyid=$('#prptyid').val();
	var prptyName=$('#prptyName').val();
	var retVal = confirm("Do you want to delete?"); 
	  if( retVal == true ) {
			 $.ajax({
			    	type : "GET",
			        asyn : false,
			        contentType: "application/json", // NOT dataType!
			        url  : "deleteNotification?id="+id+"",
			        success  : function(response){
				        if(response=="success"){
					        alert("Notification deleted successfully");
					        window.location.href="notification?prtyid="+prptyid+"&prptyName="+prptyName+"";
					        }
				        else{
				        	alert("Notification not deleted");
				        	window.location.href="notification?prtyid="+prptyid+"&prptyName="+prptyName+"";
					        }
			        }
				    });
          return true;
       } else {
         // document.write ("User does not want to continue!");
          return false;
       } 
}

$('#expensefor_ed').click(function(){
    
	$('#assetDiv_ed').hide();
	
	$('#expensefor_ed1').prop("checked",false);
	$('#e_flatno').prop("required",false);
	$('#e_flatno').val('');
   
    }) ;
$('#expensefor_ed1').click(function(){
 
    
	$('#expensefor_ed').prop("checked",false);
    	$('#assetDiv_ed').show();
    	$('#e_flatno').prop("required",true);
        //}
    }) ;

/* if(response.flag==1){
	$('#assetDiv_ed').hide();
	$('#expensefor_ed').prop("checked",true)
	}
else {
	$('#assetDiv_ed').show();
	$('#expensefor_ed1').prop("checked",true)
	}  */
</script>

    
    <script>
    function checkForm(form)
    {
      var cmt_len = CKEDITOR.instances['e_description'].getData().replace(/<[^>]*>/gi, '').length;
      if(cmt_len==0) {
          alert( 'Please enter Notification description' );
          return false;
      }
      return true;
    }
    

    </script>
    
</body>

</html>