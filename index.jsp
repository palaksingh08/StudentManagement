<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>SMS — Login</title>
  <%@ include file="includes/header.jsp" %>
</head>
<body class="bg-hero">

  <header class="topbar">
    <div class="brand">
      <div class="logo-box"></div>
      <span class="brand-text">SMS</span>
    </div>
  </header>

  <main class="hero">
    <div class="hero-left animate__animated animate__fadeInLeft">
      <lottie-player src="https://assets2.lottiefiles.com/packages/lf20_jcikwtux.json"  background="transparent"  speed="1"  style="width:520px; height:420px;"  loop  autoplay></lottie-player>
      <h1>Student Management System</h1>
      <p class="muted">Clean. Fast. Professional — built for colleges. Futuristic design with smooth animations.</p>
    </div>

    <div class="hero-right animate__animated animate__fadeInUp">
      <div class="card login-card">
        <h3>Welcome Back</h3>
        <form action="auth" method="post" class="form">
          <input type="text" name="username" placeholder="Username" required/>
          <input type="password" name="password" placeholder="Password" required/>
          <button type="submit" class="btn btn-primary">Login</button>
        </form>
        <div class="muted small">Demo creds: <strong>admin / admin123</strong></div>
      </div>
    </div>
  </main>

  <%@ include file="includes/footer.jsp" %>
</body>
</html>
