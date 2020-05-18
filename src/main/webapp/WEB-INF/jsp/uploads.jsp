<%-- 
    Document   : uploads
    Created on : 13 Sep, 2017, 8:15:34 PM
    Author     : Dhaval
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete title="Save2Drive - Home">

    <jsp:attribute name="head_area">

    </jsp:attribute>

    <jsp:attribute name="body_area">
        <c:choose>
            <c:when test='${empty(user)}'>
                <section class="dashboard-counts no-padding-bottom center">
                    <div class="container-fluid">
                        <div class="row bg-white has-shadow">
                            <div class="col-xl-12" style="text-align:center">
                                <p style="font-size: 20px; color: red">You are not authenticated. Please authenticate with Google. </p>
                                <button id="auth-btn" class="btn btn-link btn-responsive" style="font-size: larger;" onclick="location.href = '${pageContext.request.contextPath}/api/oauth/google/redirect'">
                                    Click here to authenticate with Google
                                </button>
                            </div>
                        </div>
                    </div>
                </section>
            </c:when>
            <c:otherwise>
                <ul class="breadcrumb">
                    <div class="container-fluid">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item active">Your Uploads</li>
                    </div>
                </ul>
            </c:otherwise>
        </c:choose>
    </jsp:attribute>
    <jsp:attribute name="javascript">
        <script src="${pageContext.request.contextPath}/js/uploads.js"></script>
    </jsp:attribute>
</ui:templete>
