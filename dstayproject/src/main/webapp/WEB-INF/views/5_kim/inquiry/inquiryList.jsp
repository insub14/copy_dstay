<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>D-Store:Admin</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">


<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#dataTable").DataTable();
        });
    </script>
    
    

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script>
      $(function(){
        $('#reported1by1').addClass('active');
        
	   	
      });
	</script>

	<style>
		
		
	.clickableTr:hover{
		cursor:pointer;
		color:red;
	}
	
	.table-repsonsive{
		width:100%;
	}
	
	#dataTable_wrapper {
	width:90%;}
	
	#dataTable_wrapper div{
		margin-bottom:7px;
	}
  	
	.table-responsive>div{
		display:inline-block;
	}
	.page-link:hover{
		cursor:pointer;
	}
	
	.pagination > li > a, .pagination > li > span{
		margin:0px; 
		padding:10px; 
		background-color:white; 
		color:rgb(119,119,119);
		border:1px solid rgb(221, 221, 221);
	}
	.pagination > li.active > a, .pagination > li.active > span{
		background-color:rgb(51, 122, 183); 
		color:white;
	}
	
	#dataTable thead th{
			cursor:pointer;
	}
	
	#dataTable thead th:hover{
		text-decoration:underline;
	}
	
	
	</style>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    
   <!------------------------------- 네비게이터 인클루드 ----------------------------------->
	<jsp:include page="../common/navi-bar.jsp"/>
   
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      
      <!--  메인 내용 -->
      <div id="content">
        <div class="container-fluid">
          <br>
          <h3 class="h3 mb-1 text-gray-900">&nbsp; 문의내역 </h3><br>

          
            <!--첫번째 카드-->
                <div class="card shadow mb-4">
                
                    <!-- 모든 테이블 영역 -->
                    <div class="card-body">
                      <div class="table-responsive" align="center">
                        
                        <!-- 테이블-->
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                            <tr>
                              <th>문의번호</th>
                              <th>문의제목</th>
                              <th>작성자</th>
                              <th>문의날짜</th>
                              <th>처리완료</th>
                            </tr>
                          </thead>
                          <tbody>
                            <c:forEach var="inq" items="${ilist }" varStatus="inqStatus">
                            <tr class="clickableTr">
                              <td>${inq.no }</td>
                              <td>${inq.title }</td>
                              <td>${inq.memberNo }</td>
                              <td>${inq.date }</td>
                              <c:if test="${inq.answer eq '' }">
                              	<td>미답변</td>
                              </c:if>
                              <c:if test="${inq.answer ne ''}">
                              	<td>답변완료</td>
                              </c:if>
                            </tr>
                            </c:forEach>
                          </tbody>
                        </table>
                        <!-- end of 테이블-->
                        
    
                    </div>
                    <!-- End of 메인 내용 -->
    
                        
                      
                    <!-- end of 모든 테이블 영역-->
                  </div>
                   <!--end of 첫번째 카드-->
                </div>


        </div>
      </div>

	 <!-----------------------------------------------------  [5 footer]  ----------------------------------------------------->
      <jsp:include page="../common/footer.jsp"/>

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

	<script>
		$(function(){
			 $('#dataTable tbody').on( 'click', 'tr', function () {
			        var iNo =$(this).children().eq(0).text();
			        location.href="adminInquiryDetail.do?iNo="+iNo;
			 });
			
		});
	</script>

</body>

</html>
