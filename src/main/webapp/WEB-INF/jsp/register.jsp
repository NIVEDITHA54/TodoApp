<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <p>Register to manage your todos</p>
       
        <form:form action="/register" modelAttribute="user">
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <form:label path="name">First Name</form:label>
              <form:input path="name" type="text" class="form-control" placeholder="First Name" required="required"/>
              <form:errors path="name" cssClass="text-warning" />
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <form:label path="lastName">Last Name</form:label>
              <form:input path="lastName" type="text" class="form-control" placeholder="Last Name" required="required"/>
              <form:errors path="name" cssClass="text-warning" />
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <form:label path="email">Email</form:label>
              <form:input path="email" type="email" class="form-control" placeholder="Email" required="required"/>
              <form:errors path="name" cssClass="text-warning" />
            </div>
          </div>
          <div class="control-group">
            <div class="form-group col-xs-12 floating-label-form-group controls">
              <form:label path="username">User Name</form:label>
              <form:input path="username" type="text" class="form-control" placeholder="User Name" required="required"/>
              <form:errors path="name" cssClass="text-warning" />
            </div>
          </div>
          
            <div class="control-group">
              <div class="form-group col-xs-12 floating-label-form-group controls">
                <form:label path="password">Password</form:label>
                <form:input path="password" type="password" class="form-control" placeholder="Password" required="required"/>
                <form:errors path="name" cssClass="text-warning" />
              </div>
            </div>
           
          <br>
          <button type="submit" class="btn btn-primary" id="sendMessageButton">Submit</button>
        </form:form>
      </div>
    </div>
  </div>

  <hr>


<%@ include file="common/footer.jspf" %>