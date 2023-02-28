<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="position:relative;height:200px;background-image:url(/resources/images/back.jpg);background-size:cover;background-position:center center;margin-top:102.59px;">
	<!-- <img alt="back" src="/resources/images/back.jpg" style="width:100%;"> -->
	<div style="position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);color:white;font-weight:bold;font-size:2em;text-shadow:3px 3px 5px rgba(0,0,0,0.5);">
		<%
        String uri = request.getRequestURI();
                    
        String sp = "/";
        String[] path = uri.split(sp);
        String pathFolder = path[3];
        String pathName="";
        switch(pathFolder){
        	case "board" :
        		pathName = "게시판";
        		break;
        	case "qna" :
        		pathName = "FAQ";
        		break;
        	case "member" :
        		pathName = "회원관리";
        		break;
        	case "admin" :
        		pathName = "관리자";
        		break;
        	case "cate" :
        		pathName = "원두추천";
        		break;
        	case "store" :
        		pathName = "스토어";
        		break;
        	default :
        		pathName = "비트커피";
        		break;
        }
        %>
        <%=pathName %>
	</div>
</div>
</body>
</html>