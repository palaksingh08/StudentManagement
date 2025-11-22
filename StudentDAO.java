package com.sms.dao;

import com.sms.model.Student;
import com.sms.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    public List<Student> getAllStudents() throws SQLException {
        List<Student> list = new ArrayList<>();
        String sql = "SELECT * FROM students ORDER BY id DESC";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Student s = mapRow(rs);
                list.add(s);
            }
        }
        return list;
    }

    public Student getStudentById(int id) throws SQLException {
        String sql = "SELECT * FROM students WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) return mapRow(rs);
            }
        }
        return null;
    }

    public boolean addStudent(Student s) throws SQLException {
        String sql = "INSERT INTO students(roll_no, name, email, dob, gender, branch, year, phone, address) VALUES(?,?,?,?,?,?,?,?,?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, s.getRollNo());
            ps.setString(2, s.getName());
            ps.setString(3, s.getEmail());
            ps.setDate(4, s.getDob());
            ps.setString(5, s.getGender());
            ps.setString(6, s.getBranch());
            ps.setInt(7, s.getYear());
            ps.setString(8, s.getPhone());
            ps.setString(9, s.getAddress());
            return ps.executeUpdate() > 0;
        }
    }

    public boolean updateStudent(Student s) throws SQLException {
        String sql = "UPDATE students SET roll_no=?, name=?, email=?, dob=?, gender=?, branch=?, year=?, phone=?, address=? WHERE id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, s.getRollNo());
            ps.setString(2, s.getName());
            ps.setString(3, s.getEmail());
            ps.setDate(4, s.getDob());
            ps.setString(5, s.getGender());
            ps.setString(6, s.getBranch());
            ps.setInt(7, s.getYear());
            ps.setString(8, s.getPhone());
            ps.setString(9, s.getAddress());
            ps.setInt(10, s.getId());
            return ps.executeUpdate() > 0;
        }
    }

    public boolean deleteStudent(int id) throws SQLException {
        String sql = "DELETE FROM students WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        }
    }

    private Student mapRow(ResultSet rs) throws SQLException {
        Student s = new Student();
        s.setId(rs.getInt("id"));
        s.setRollNo(rs.getString("roll_no"));
        s.setName(rs.getString("name"));
        s.setEmail(rs.getString("email"));
        s.setDob(rs.getDate("dob"));
        s.setGender(rs.getString("gender"));
        s.setBranch(rs.getString("branch"));
        s.setYear(rs.getInt("year"));
        s.setPhone(rs.getString("phone"));
        s.setAddress(rs.getString("address"));
        return s;
    }
}
