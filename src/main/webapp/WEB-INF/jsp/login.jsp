<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>


<div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <p>Login to manage your todos</p>
        
       
        <form action="/login" method="post">
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>User Name</label>
              <input type="text" class="form-control" placeholder="User Name" name="username" required="required" />
            </div>
          </div>
          
    
            <div class="control-group">
              <div class="form-group col-xs-12 floating-label-form-group controls">
                <label>Password</label>
                <input type="password" class="form-control" placeholder="Password" name="password" required="required"/>
              </div>
            </div>
           
          <br>
        
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        
      </div>
      
    </div>
  </div>

<%@ include file="common/footer.jspf" %>