<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
		<form:form action="/add-todo" method="post" modelAttribute="todo">
			<form:hidden path="id" />
			<fieldset class="form-group">
				<form:label path="desc">Description</form:label>
				<form:input path="desc" type="text" class="form-control"
				required="required" />
				<form:errors path="desc" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="targetDate">Target Date</form:label>
				<form:input path="targetDate" type="text" class="form-control"
				required="required" />
				<form:errors path="targetDate" cssClass="text-warning" />
			</fieldset>

		    <button type="submit" class="btn btn-primary">Add</button>
		</form:form>
	  </div>
      
    </div>
  </div>
<%@ include file="common/footer.jspf" %>