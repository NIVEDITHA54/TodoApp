<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
  <div class="container">
    <div class="row">
      

		<table class="table table-striped">
			<caption>Your todos are</caption>
			<thead>
				<tr>
					<th><label>Description</label></th>
					<th><label>Target Date</label></th>
					<th><label>Is it done</label></th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
						<td>${todo.done}</td>
						<td>
              <div class="clearfix"><a  class="btn btn-primary float-right"
							href="/update-todo?id=${todo.id}">Update</a></div></td>
						<td><div class="clearfix"><a  class="btn btn-primary float-right"
							href="/delete-todo?id=${todo.id}">Delete</a></div></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
      <div class="clearfix"><a  class="btn btn-primary float-right"
							href="/add-todo">Add Todo</a></div></td>

		
	</div>
	</div>
                
          
        <hr>
        
        <%@ include file="common/footer.jspf" %>
       