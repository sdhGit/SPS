<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="${path}/resources/ckeditor/ckeditor.js"></script>

</head>
<body>




    <h2>��ǰ ��� </h2>
			<form action="uploadForm" id="uploadForm" method="POST" enctype="multipart/form-data" action="uploadForm">
			 	<table>
			 		<tr>
				        <td>��ǥ�̹��� :</td> 
				        <td><input type="file" name="titleImage" /></td>
				    </tr>
			 		<tr>
				        <td>��ǰ �̸� :</td> 
				        <td><input type="text" name="product_name" /></td>
				    </tr>
				    <tr>    
				        <td>���� :</td> 
				        <td><input type="text" name="product_price" /></td>
				    </tr>
				   <!--  <tr>
				        <td>��ǰ ���� :</td>
				        <td><input type="text" name="color" /></td>
			       	</tr> -->
				    <tr>    
				        <td>��ǰ ������ :</td>
				        <td>
				        <select name="item_Size">
					        	<option>����� ����</option>
					        	<option value="S">S</option>
					        	<option value="M">M</option>
					        	<option value="L">L</option>
		       			</select>
		       			</td>
			        </tr>
			        <!-- tr>
			        	<td>ī�װ� :</td>
			        	<td> 
			        		<select name="category">
					        	<option>������ �ּ���.</option>
					        	<option value="top">����</option>
					        	<option value="bottom">����</option>
					        	<option value="acc">�Ǽ��縮</option>
			       			</select>
			        	</td>
			        </tr> -->
			    
			        <tr>
				        <td colspan="2">
					        <textarea name="gdsDes" id="gdsDes" rows="5" cols="50">
		       				</textarea>
		       				<script>
						 var ckeditor_config = {
						   resize_enaleb : false,
						   enterMode : CKEDITOR.ENTER_BR,
						   shiftEnterMode : CKEDITOR.ENTER_P,
						   filebrowserUploadUrl : "/admin/goods/ckUpload"
						 };
						 
						 CKEDITOR.replace("gdsDes", ckeditor_config);
						</script>
	
				        </td>
			        </tr>
			         
			        <tr>
				        <td>
					        <!-- <input type="file" name="file" />
					        <input type="submit"/> -->
					        <input type="file" name="file" />
				        </td>
			     	</tr>
			     	
			         <tr>
				        <td>
					        <!-- <input type="file" name="file" />
					        <input type="submit"/> -->
					        <input multiple="multiple" type="file" name="sub_file" />
					          <input type="submit" value="����" />
				        </td>
			     	</tr>
			       
			     	
			     	
			     	
			       <!--  <input type="hidden" value="${ savedFileName }" name="name"> -->
			        <input type="hidden" value="/Users/Administrator/Desktop/jsp/Spring/workspace/homeProject/src/main/webapp/resources/goodsupload" name="goodsDir">
				</table>
		    </form>
				


</body>
</html>