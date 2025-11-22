<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>SMS — Students</title>
  <%@ include file="includes/header.jsp" %>
</head>
<body class="app-body">
  <nav class="navbar">
    <div class="nav-left">
      <div class="logo-box"></div>
      <div class="nav-title">SMS</div>
    </div>
    <div class="nav-right">
      <a href="dashboard.jsp">Dashboard</a>
      <a href="students.jsp">Students</a>
      <a href="logout">Logout</a>
    </div>
  </nav>

  <div class="container">
    <div class="form-card">
      <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>Students</h1>
        <a href="student_form.jsp" class="btn btn-primary">+ Add Student</a>
      </div>

      <table class="students-table">
        <thead>
          <tr><th>Roll No</th><th>Name</th><th>Branch</th><th>Year</th><th>Phone</th><th>Actions</th></tr>
        </thead>
        <tbody>
          <tr><td>0246IS221017</td><td>Palak Singh</td><td>CSE</td><td>4</td><td>9876543210</td><td><a href="#">View</a> | <a href="student_form.jsp">Edit</a></td></tr>
          <tr><td>0246IS221018</td><td>Rahul Verma</td><td>ME</td><td>2</td><td>9876501234</td><td><a href="#">View</a> | <a href="student_form.jsp">Edit</a></td></tr>
        </tbody>
      </table>
    </div>
  </div>

  <%@ include file="includes/footer.jsp" %>
</body>
</html>
