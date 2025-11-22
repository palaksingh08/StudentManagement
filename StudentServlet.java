package com.sms.servlet;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet("/students")
public class StudentServlet extends javax.servlet.http.HttpServlet {
    private StudentDAO dao = new StudentDAO();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        try {
            if ("new".equals(action)) {
                req.getRequestDispatcher("student_form.jsp").forward(req, resp);
                return;
            } else if ("edit".equals(action)) {
                int id = Integer.parseInt(req.getParameter("id"));
                Student s = dao.getStudentById(id);
                req.setAttribute("student", s);
                req.getRequestDispatcher("student_form.jsp").forward(req, resp);
                return;
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(req.getParameter("id"));
                dao.deleteStudent(id);
                resp.sendRedirect("students");
                return;
            }
            List<Student> list = dao.getAllStudents();
            req.setAttribute("students", list);
            req.getRequestDispatcher("students.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idStr = req.getParameter("id");
            Student s = new Student();
            s.setRollNo(req.getParameter("roll_no"));
            s.setName(req.getParameter("name"));
            s.setEmail(req.getParameter("email"));

            String dobStr = req.getParameter("dob");
            if (dobStr != null && !dobStr.isEmpty()) s.setDob(Date.valueOf(dobStr));

            s.setGender(req.getParameter("gender"));
            s.setBranch(req.getParameter("branch"));
            s.setYear(Integer.parseInt(req.getParameter("year")));
            s.setPhone(req.getParameter("phone"));
            s.setAddress(req.getParameter("address"));

            if (idStr == null || idStr.isEmpty()) {
                dao.addStudent(s);
            } else {
                s.setId(Integer.parseInt(idStr));
                dao.updateStudent(s);
            }
            resp.sendRedirect("students");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
