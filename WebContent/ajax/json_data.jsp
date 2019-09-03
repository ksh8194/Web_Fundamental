<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page contentType="application/json;charset=utf-8"%>

<%

	JSONObject jsonObj = new JSONObject();
	JSONArray jsonArray = new JSONArray();
	
	JSONObject item1 = new JSONObject();
	item1.put("name","ksh1");
	item1.put("clubid","story");

	
	JSONObject item2 = new JSONObject();
	item1.put("name","손정의1");
	item1.put("clubid","story3388");
	
	JSONObject item3 = new JSONObject();
	item1.put("name","손정의2");
	item1.put("clubid","story33881");

	jsonArray.add(item1);
	jsonArray.add(item2);
	jsonArray.add(item3);
	
	jsonObj.put("cafelist",jsonArray);//{"cafelist":[]}
	out.print(jsonObj.toString());

%>

