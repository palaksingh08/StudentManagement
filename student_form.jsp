<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>SMS — Add/Edit Student</title>
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
      <h1>Add / Edit Student</h1>

      <form action="saveStudent" method="post" class="student-form">
        <div>
          <label>Roll No</label>
          <input name="roll" type="text">
        </div>
        <div>
          <label>Name</label>
          <input name="name" type="text">
        </div>

        <div>
          <label>Email</label>
          <input name="email" type="email">
        </div>
        <div>
          <label>DOB</label>
          <input name="dob" type="date">
        </div>

        <div>
          <label>Gender</label>
          <select name="gender">
            <option>Male</option><option>Female</option><option>Other</option>
          </select>
        </div>
        <div>
          <label>Branch</label>
          <input name="branch" type="text">
        </div>

        <div>
          <label>Year</label>
          <input name="year" type="number">
        </div>
        <div>
          <label>Phone</label>
          <input name="phone" type="text">
        </div>

        <div class="form-group wide">
          <label>Address</label>
          <textarea name="address" rows="3"></textarea>
        </div>

        <div class="form-actions">
          <button class="btn btn-primary">Save Student</button>
          <a href="students.jsp" class="btn btn-secondary">Cancel</a>
        </div>
      </form>

    </div>
  </div>

  <%@ include file="includes/footer.jsp" %>
</body>
</html>
