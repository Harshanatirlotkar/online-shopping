<div class="container">


	<div class="row">
		<!--  would be display side bar -->
		<div class="cpl-md-3">
			<%@ include file="./shared/sidebar.jsp" %>
		</div>
		<!-- to display actual products -->
		<div class="col-md-9">
			<div class="row" >
				<!-- added breadcrum component -->
				<div class="col-lg-12" >
				
				<c:if test="${userClickedHome == true}" >
					<ol class="breadcrum" >
					
					<li> <a href="${contextRoot}/home">Home</a></li>
					<li class="active" >All Products</li>
 					
					</ol>
				
				
				</c:if>
				
				<c:if test="${userClickedCategoryProducts == true}" >
					<ol class="breadcrum" >
					
					<li> <a href="${contextRoot}/home">Home</a></li>
					<li class="active" >Category</li>
					<li class="active" >${category.name}</li>
 					
					</ol>
				
				
				</c:if>
				
				
				
				</div>
			</div>
		</div>


	</div>


</div>