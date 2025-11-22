📘 Student Management System (Java Servlet + JSP + MySQL)

A complete web-based Student Management System built using Java Servlets, JSP, JDBC, and MySQL.
This system allows administrators to manage students, view student data, insert/update/delete records, and maintain an organized academic workflow.

🚀 Features
👨‍🎓 Student Module

Add new students

Edit existing student details

Delete student records

View all students

Student profile form

👩‍🏫 Admin/Faculty Module

Secure login/logout

Dashboard with total students count

Manage student records through CRUD operations

🗄 Database

MySQL database with clean schema

Includes sms_db.sql for easy setup

Student table structure ready to use

🎨 Frontend (JSP Pages)

index.jsp – Login Page

dashboard.jsp – Admin Dashboard

student_form.jsp – Add/Edit Form

students.jsp – Student List Page

header.jsp / footer.jsp – Layout Components

Modern, clean UI using CSS

⚙ Backend (Java Servlets + DAO)

AuthServlet – Handles login

LogoutServlet – Handles session logout

StudentServlet – Add/Edit/Delete students

StudentDAO – Database operations

DBUtil – Database connection helper

🛠 Technologies Used
Layer	Technology
Frontend	JSP, HTML, CSS, JavaScript
Backend	Java, Servlets, JDBC
Database	MySQL
Build/Run	Apache Tomcat
Version Control	Git & GitHub
4️⃣ Folder Structure
Tomcat 9.0/
 └── webapps/
        └── StudentManagement/
              ├── index.jsp
              ├── dashboard.jsp
              ├── students.jsp
              ├── student_form.jsp
              ├── css/
              │     └── styles.css
              ├── js/
              │     └── app.js
              ├── includes/
              │     ├── header.jsp
              │     └── footer.jsp
              └── WEB-INF/
                    ├── web.xml
                    └── classes/

🗄 Database Setup (MySQL)

Open MySQL or phpMyAdmin

Create a database:

CREATE DATABASE sms_db;


Import the SQL file:

sms_db.sql

▶ How to Run the Project (Tomcat)

Install Apache Tomcat 9

Copy project folder to:

C:\tomcat\webapps\StudentManagement


Start Tomcat using:

startup.bat


Open browser:

http://localhost:8080/StudentManagement/

📝 Future Enhancements

Add Faculty Management

Add Subjects/Courses module

Add Attendance module

Add Marks & Result module

Add Admin Roles

Improve UI with Bootstrap or Tailwind

🤝 Contributing

Pull requests are welcome.
If you'd like to add new features, feel free to fork and improve.

📜 License

This project is open-source and free to use for learning.

