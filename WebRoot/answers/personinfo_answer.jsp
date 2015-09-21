<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>|人物介绍</title>
		<link href="css/index.css" rel="stylesheet" type="text/css" />


		<script type="text/javascript" src="js/jquery.js"></script>

		<script type="text/javascript" src="js/tabs.js"></script>

	</head>


	<body>
		<center>
			<%@ include file="/header.jsp"%>
<input type="hidden" id="for_tab_input" value="3" />
			<div class="result">
				<s:if test="flag==0">
					<s:iterator value="answerCate" status="st" id="answerCate">
						<div id="link">
							<a href="investor?name=<s:property value="key" /> ">
								<h1>
									<s:property value="key" />&lt;&lt;点击查看人物详细信息
								</h1> </a>
						</div>
<s:iterator value="value" status="st" id="va">
						<div class="title_100">
							<h2>
								<s:property value="question" />
							</h2>
						</div>
						<div class="B_r">
						<div class="words_more">
                            <pre><div id="biankuang"><img id="touxiang" src="image/investor/<s:property value="key" />.jpg"alt="" /></div><s:property value="answer" escape="false" />
                            </pre>
						</div>
                        </div>
                        </s:iterator>
					</s:iterator>
				</s:if>
				
				<div class="g_r">	
<br/>
<div id="link">
	<h2>
		以下是google搜索的结果摘要：
	</h2>
</div>
<br/>
<br/>
<div class="B_r">
	<br /><br />
	<img id="loadImage" src="images/loadImage.gif" />
</div>	
</div>		
			</div>

			<%@ include file="/footer.jsp"%>
		</center>
	</body>
</html>
