
Student Management System (Demo)
--------------------------------

Contents:
- src/  -> Java source files (servlets, DAO, models)
- WebContent/ -> JSP pages, css, js, images
- sql/sms_db.sql -> SQL to create DB and sample data

How to run:
1. Install MySQL and create database using sql/sms_db.sql.
2. Update DB credentials in src/com/sms/util/DBUtil.java.
3. Add MySQL Connector/J (JAR) to WEB-INF/lib or project classpath.
4. Build WAR (Eclipse: Export -> WAR) or compile and deploy to Tomcat.
5. Access http://localhost:8080/StudentManagement/

Demo credentials: admin / admin123

Notes:
- Passwords are stored in plain text for demo purposes. Use hashing (bcrypt) for production.
- Images are SVG placeholders included in WebContent/images.
