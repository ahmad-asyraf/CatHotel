<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <%
            Class.forName("com.mysql.jdbc.Driver");
            String myURL = "jdbc:mysql://localhost/cat";
            Connection con = DriverManager.getConnection(myURL, "root", "root");
            String insertQuery = "SELECT * FROM customer WHERE username='" + session.getAttribute("username") + "'";
            Statement s = con.createStatement();
            ResultSet myRS = s.executeQuery(insertQuery);

            while (myRS.next()) {
        %>
        <title>Reservation</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<div class="formbold-main-wrapper">

  <div class="formbold-form-wrapper">
    <form action="reserveprocess.jsp" method="POST">
      <div class="formbold-mb-5">
        <label for="usernname" class="formbold-form-label"> username </label>
        <input
          type="text"
          name="name"
          id="name"
          placeholder="Full Name"
          class="formbold-form-input"
          value="<%=myRS.getString(1)%>"
        />
      </div>
    </head>
      <div class="formbold-mb-5">
        <label for="name" class="formbold-form-label"> Cat Name </label>
        <input type="text" placeholder="Enter your cat name" name="name" id="name" class="formbold-form-input">
      </div>
            <div class="formbold-mb-5">
        <label for="breed" class="formbold-form-label"> Cat Breed </label>
        <input type="text" placeholder="Enter your cat breed" name="breed" id="breed" class="formbold-form-input" >
      </div>
            <div class="formbold-mb-5">
        <label for="age" class="formbold-form-label"> Cat Age </label>
        <input type="text" placeholder="Enter your cat age" name="age" id="age" class="formbold-form-input">
      </div>
      <div class="flex flex-wrap formbold--mx-3">
        <div class="w-full sm:w-half formbold-px-3">
          <div class="formbold-mb-5 w-full">
            <label for="date" class="formbold-form-label"> Date </label>
            <input
              type="date"
              name="date"
              id="date"
              class="formbold-form-input"
            />
            <script type="text/javascript">
$(function(){
    var dtToday = new Date();
 
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
     day = '0' + day.toString();
    var maxDate = year + '-' + month + '-' + day;
    $('#inputdate').attr('min', maxDate);
});
</script>
          </div>
        </div>
        <div class="w-full sm:w-half formbold-px-3">
          <div class="formbold-mb-5">
            <label for="time" class="formbold-form-label"> Time </label>
            <input
              type="time"
              name="time"
              id="time"
              class="formbold-form-input"
            />
          </div>
        </div>
      </div>

      <div>
        <button class="formbold-btn">Make Reservation</button>
      </div>
    </form>
        
  </div>
</div>
                            <%
                }
                con.close();
            %>

        <style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  body {
    font-family: "Inter", Arial, Helvetica, sans-serif;
  }
  .formbold-mb-5 {
    margin-bottom: 20px;
  }
  .formbold-pt-3 {
    padding-top: 12px;
  }
  .formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
  }

  .formbold-form-wrapper {
    margin: 0 auto;
    max-width: 550px;
    width: 100%;
    background: white;
  }
  .formbold-form-label {
    display: block;
    font-weight: 500;
    font-size: 16px;
    color: #07074d;
    margin-bottom: 12px;
  }
  .formbold-form-label-2 {
    font-weight: 600;
    font-size: 20px;
    margin-bottom: 20px;
  }

  .formbold-form-input {
    width: 100%;
    padding: 12px 24px;
    border-radius: 6px;
    border: 1px solid #e0e0e0;
    background: white;
    font-weight: 500;
    font-size: 16px;
    color: #6b7280;
    outline: none;
    resize: none;
  }
  .formbold-form-input:focus {
    border-color: #6a64f1;
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold-btn {
    text-align: center;
    font-size: 16px;
    border-radius: 6px;
    padding: 14px 32px;
    border: none;
    font-weight: 600;
    background-color: #6a64f1;
    color: white;
    width: 100%;
    cursor: pointer;
  }
  .formbold-btn:hover {
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold--mx-3 {
    margin-left: -12px;
    margin-right: -12px;
  }
  .formbold-px-3 {
    padding-left: 12px;
    padding-right: 12px;
  }
  .flex {
    display: flex;
  }
  .flex-wrap {
    flex-wrap: wrap;
  }
  .w-full {
    width: 100%;
  }
  @media (min-width: 540px) {
    .sm\:w-half {
      width: 50%;
    }
  }
</style>
