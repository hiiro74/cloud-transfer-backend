<%--
  Created by IntelliJ IDEA.
  User: Dhaval
  Date: 27-09-2017
  Time: 04:22 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete title="Welcome to Save to Drive">
    <jsp:attribute name="head_area"/>
    <jsp:attribute name="body_area">
        <ul class="breadcrumb">
            <div class="container-fluid">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">Forms</li>
            </div>
        </ul>
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
				<!-- Forms Section-->
				<section class="forms">
				  <div class="container-fluid">
					  <div class="row">
						  <div class="col-lg-12">
							  <div class="card">
								  <div class="card-header d-flex align-items-center">
									  <h3 class="h4">New Upload</h3>
								  </div>
								  <div class="card-body">
									  <form method="post" id="uploadform" action="${pageContext.request.contextPath}/api/drive/upload">
										  <div class="form-group">
											  <label class="form-control-label">URL</label>
											  <input type="url" id="url" name="url" placeholder="Enter File URL here"
													 class="form-control">
										  </div>
										  <div class="form-group">
											  <label class="form-control-label">Filename</label>
											  <input type="text" id="filename" name="filename"
													 placeholder="Enter Filename here"
													 class="form-control">
											  <span class="help-block-none">File name is optional.</span>
										  </div>
										  <div class="form-group row">
											  <div class="col-sm-12 offset-sm-5">
												  <button type="submit" id="submit" class="btn btn-primary">Upload</button>
											  </div>
										  </div>
									  </form>
								  </div>
							  </div>
						  </div>
					  </div>
				  </div>
				</section>
			</c:otherwise>
		</c:choose>
    </jsp:attribute>
    <jsp:attribute name="javascript">
        <script src="${pageContext.request.contextPath}/js/submit_upload.js"></script>
    </jsp:attribute>
</ui:templete>
