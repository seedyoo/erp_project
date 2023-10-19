<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>개인프로젝트</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
    <script src="${pageContext.request.contextPath}/js/jquery.color.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.animateNumber.min.js"></script>
</head>

<body>
 	<%@ include file="../common/header.jsp" %>

   <main>  
      <div class="container">
      <div class="row ">
      	<c:forEach var="lotto" items="${arrLotto}" varStatus="status"> 
 			<div class="col-lg-2 mt-3  d-flex justify-content-around">	
	        	
		        	<svg class="rounded-circle" margin="30" width="140" height="140" focusable="false" >
		        		<rect width="100%"  height="100%" fill="${lotto.background}"/>
		        			<text class="lotto" id="lotto${status.index}" text-anchor="middle" x="50%" y="50%" fill="${lotto.fontColor}" dy=".3em" font-size="60">
		        			${lotto.getNum()}	
		        			</text>
		        	</svg>		    
	
	        </div>	        
  		 </c:forEach>
  		 
      </div>
      <div class="row">
	  		 <div class="col-lg-12 d-flex justify-content-center">	
		
						<svg class="rounded-circle" width="140" height="140" focusable="false" >
			        		<rect width="100%"  height="100%" fill="white"/>
			        			<text text-anchor="middle" x="50%" y="50%" fill="black" dy=".3em" font-size="100">+</text>
			        	</svg>	    
		
		     </div>
      	</div>
      	
       <div class="row  ">
	  		 <div class="col-lg-12   d-flex justify-content-center">	
		
						<svg class="rounded-circle" width="140" height="140" focusable="false" >
			        		<rect width="100%"  height="100%" fill="red"/>
			        			<text id="bonus" text-anchor="middle" x="50%" y="50%" fill="white" dy=".3em" font-size="60">${bounsNum}</text>
			        	</svg>	    
		
		     </div>
      	</div>
    </div>
   </main> 

	<%@ include file = "../common/footer.jsp" %>
</body>

<script type="text/javascript">

$(document).ready(function(){	
	$( "#send-board" ).on( "click", function() {
		$("#modal-form").submit();
	});
});



$(document).ready(function() { 
	console.log($('#bonus').text() );
	
    $('#bonus').animateNumber(
		    {
		      number: $('#bonus').text() ,
		      color: 'green',
		      'font-size': 60,
		      numberStep: ''      
		    },
		    {
		      easing: 'swing',
		      duration: 2000
		    }
		  );
    
	$('.lotto').each(function(i, e){
	    console.log($(this).text() + " " + i);
	    
	    $('#lotto' + i).animateNumber(
			    {
			      number: $(this).text() ,
			      color: 'green',
			      'font-size': 60,
			      numberStep: ''      
			    },
			    {
			      easing: 'swing',
			      duration: 2000
			    }
			  );
	    

				  
			  
	});
});




</script>

</html>

