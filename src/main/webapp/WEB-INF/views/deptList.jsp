<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import ="java.util.*, com.spring.hr.model.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>부서별 현황 </title>
		<style>
		      table {
		        width: 100%;
		        border-top: 1px solid #444444;
		        border-collapse: collapse;
		      }
		      th, td {
		        border-bottom: 1px solid #444444;
		        padding: 10px;
		        text-align: center;
		      }
		      table,tr,td{
				  border:1px solid #000000;
				  border-collapse:collapse;
				}
				tr.colored:nth-child(even){
				  background-color:#F6F6F6;
				  color:#000000;
				}
				tr.colored:nth-child(odd){
				  background-color:#D5D5D5;
				  color:#000000;
				}
	    </style>
	</head>
	
	<body>
	<div align="center">
		<h2>부서 현황</h2>
		<hr width="500" color="red"/>
		
		<table width="500" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td>부서코드</td>
				<td>부서명</td>
				<td>매니저ID</td>
				<td>위치코드</td>
			</tr>
			
			<c:forEach items="${deptList}" var="dept">
			<tr>
				<td>${dept.deptId}</td>
				<td>${dept.deptName}</td>
				<td>${dept.deptMgr}</td>
				<td>${dept.locationId}</td>
			</tr>
			</c:forEach>
		</table>
	
	</div>
	
	</body>
</html>