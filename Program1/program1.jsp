<!--
     Design a table alumni -
     (alumni id,Name,email,contact_no,present_occupation,year_of_passing,program_name[graduate/undergraduate]).

     write JSp code to design the registration from for accepting the details of alumni.

     Store it in a database. Accept the year of passing and display the alumni's details for that
     year.
-->
<html>
<head>
<title>Registration</title>
<style>
     body
     {
      font-size:x-large;    
     }
     h2
     {
      text-align:center;
      font-size:x-large;
     }
</style>
</head>
<body>
    <h2>Registration Form</h2>
    <form action="demo.jsp" method="post">
      Name : <input type="text" name="name" id="Name" placeholder="Enter Your Name" required><br><br>
      Email : <input type="email" name="email" id="Email" placeholder="Enter Your Email id" required><br><br>
      Contact Number : <input type="text" name="contact" id="Contact" placeholder="Enter Your Contact Number" required><br><br>
      Present Occupation : <input type="text" name="occupation" id="Occupation" placeholder="Enter Your Present Occupation" required><br><br>
      Year Of Passing : <input type="text" name="year" id="Year" placeholder="Enter Year Of Passing" required><br><br>
      Program Name : <select name="select">
                     <option value="Undergraduate">Undergraduate</option>
                     <option value="Graduate">Graduate</option>
                    </select><br>
      <input type="submit" value="Register"><br>
     </form>

      <form action="program11.jsp" method="post">
      Year Of Passing : <input type="text" name="y" id="Yea" placeholder="Enter Year Of Passing" required><br><br>
      <input type="submit" value="Register"><br>
     </form>
</body>
</html>
