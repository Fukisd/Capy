<%-- 
    Document   : user
    Created on : Oct 21, 2024, 1:04:43 PM
    Author     : a
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="capytravel.users.UsersDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
    </head>
    <body>
        <nav>
            <ul>
                <li><a href="#">User Management</a></li>
                <li><a href="#">Flight Management</a></li>
                <li><a href="#">Hello Admin</a></li>
            </ul>
        </nav>


        <form action="CapyTravelController">
            <input type="text" name="searchValue" 
                   value="<%= request.getParameter("searchValue")%>"/>
            <input type="submit" value="search" name="actionUser" />
        </form>

        <table>
            <thead>
                <tr>
                    <th>UserId</th>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList<UsersDTO> list = (ArrayList<UsersDTO>) request.getAttribute("USER_LIST");
                    for (UsersDTO UserList : list) { 
                %>
                <tr>
                    <td>1</td>
                    <td><%=UserList.getUserName()%></td>
                    <td><%= UserList.getPassword()%></td>
                    <td><a href="#">Details</a> | <a href="#">Delete</a></td>
                </tr>
                <% }%>
            </tbody>
        </table>
            
            
        <style>
            /* Styling the overall body */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f8f9fa; /* Light background color */
            }

            /* Styling the navigation bar */
            nav {
                background-color: #007bff;
                padding: 10px;
            }

            nav ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
            }

            nav ul li {
                display: inline;
                margin-right: 20px;
            }

            nav ul li a {
                color: white;
                text-decoration: none;
                font-size: 16px;
            }

            /* Styling the form and search bar */
            form {
                margin: 20px;
                text-align: center;
            }

            input[type="text"] {
                padding: 5px;
                width: 300px;
                border-radius: 4px;
                border: 1px solid #ccc;
            }

            input[type="submit"] {
                padding: 5px 10px;
                background-color: #007bff;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            /* Styling the table */
            table {
                width: 80%; /* Increase width of table to 80% */
                margin: 20px auto;
                border-collapse: collapse;
                text-align: left; /* Align text to the left */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow */
            }

            th, td {
                padding: 12px 15px; /* Larger padding for better spacing */
                border: 1px solid #ddd;
            }

            th {
                background-color: #007bff;
                color: white;
                text-align: left; /* Left align the header */
                font-weight: bold;
                font-size: 14px;
            }

            td {
                background-color: #f9f9f9;
                font-size: 13px; /* Slightly smaller font for table content */
            }

            tr:nth-child(even) td {
                background-color: #f1f1f1; /* Alternate row color */
            }

            /* Styling the action links */
            a {
                color: #007bff;
                text-decoration: none;
                margin: 0 5px;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
        
    </body>
</html>
