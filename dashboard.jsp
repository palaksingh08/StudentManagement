<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>SMS — Dashboard</title>
  <%@ include file="includes/header.jsp" %>
</head>
<body class="app-body">
  <%@ include file="includes/header.jsp" %>

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
    <h1 class="page-title animate__animated animate__fadeInDown">Dashboard</h1>

    <div class="card-grid">
      <div class="card animate__animated animate__fadeInUp"><h3>Students</h3><p class="stat">128</p></div>
      <div class="card animate__animated animate__fadeInUp animate__delay-1s"><h3>Classes</h3><p class="stat">8</p></div>
      <div class="card animate__animated animate__fadeInUp animate__delay-2s"><h3>Departments</h3><p class="stat">6</p></div>
    </div>

    <div class="table-card">
      <h2>Recent Students</h2>
      <table class="students-table">
        <thead><tr><th>Name</th><th>Branch</th><th>Year</th></tr></thead>
        <tbody>
          <tr><td>Palak Singh</td><td>CSE</td><td>4</td></tr>
          <tr><td>Rahul Verma</td><td>ME</td><td>2</td></tr>
        </tbody>
      </table>
    </div>
  </div>

  <%@ include file="includes/footer.jsp" %>
</body>
</html>
