package com.sms.model;

import java.sql.Date;

public class Student {
    private int id;
    private String rollNo;
    private String name;
    private String email;
    private Date dob;
    private String gender;
    private String branch;
    private int year;
    private String phone;
    private String address;

    public Student(){}
    // getters and setters
    public int getId(){return id;} public void setId(int id){this.id=id;}
    public String getRollNo(){return rollNo;} public void setRollNo(String rollNo){this.rollNo=rollNo;}
    public String getName(){return name;} public void setName(String name){this.name=name;}
    public String getEmail(){return email;} public void setEmail(String email){this.email=email;}
    public Date getDob(){return dob;} public void setDob(Date dob){this.dob=dob;}
    public String getGender(){return gender;} public void setGender(String gender){this.gender=gender;}
    public String getBranch(){return branch;} public void setBranch(String branch){this.branch=branch;}
    public int getYear(){return year;} public void setYear(int year){this.year=year;}
    public String getPhone(){return phone;} public void setPhone(String phone){this.phone=phone;}
    public String getAddress(){return address;} public void setAddress(String address){this.address=address;}
}
