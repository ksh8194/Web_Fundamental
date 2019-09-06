<%@page import="java.util.Calendar"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page pageEncoding="utf-8"%>
<%
	//String name = request.getParameter("name"); => xxxxxxxxx
	request.setCharacterEncoding("utf-8");
	String path = request.getRealPath("/upload/files");
	
	Calendar c = Calendar.getInstance();
	int year = c.get(Calendar.YEAR);
	int month = c.get(Calendar.MONTH)+1;
	
	path += "\\"+year+"\\"+month;
	
	File f= new File(path);
	
	if(!f.exists()){
		f.mkdirs();
	}
	MultipartRequest multi = null;
	try{
		multi = new MultipartRequest(request,path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	}catch(Exception e){
		e.printStackTrace();
	}
	String name = multi.getParameter("name");
	String fileName = multi.getFilesystemName("file");
	String uploadName = multi.getOriginalFileName("file");
	File f1 = new File(f,fileName);
	long fileSize = f1.length()/1024;
%>

name : <%=name %><br>
file system name : <%=fileName %> (<%=fileSize %>kb)<br>
file origin name : <%=uploadName %><br>


