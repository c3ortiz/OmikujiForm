<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<title>Omikuji Form App</title>
</head>
<body>
    <h1 class="text-center">Bienvenido usuario!</h1>
    <form class="p-5" action="/omikuji" method="post">
      <div class="form-group">
          <label for="exampleFormControlSelect2">Pick a number from 1 to 9</label>
          <select class="custom-select custom-select-sm" name="number">
                <option selected value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
                <option value="4">Four</option>
                <option value="5">Five</option>
                <option value="6">Six</option>
                <option value="7">Seven</option>
                <option value="8">Eight</option>
                <option value="9">Nine</option>
          </select>
      </div>
      <div class="form-group">
          <label for="formGroupExampleInput">Enter the name of any city</label>
          <input type="text" class="form-control" id="formGroupExampleInput" name="city">
      </div>
      <div class="form-group">
                <label for="formGroupExampleInput">Enter the name of any real person</label>
                <input type="text" class="form-control" id="formGroupExampleInput" name="person">
      </div>
      <div class="form-group">
                <label for="formGroupExampleInput">Enter a professional endeavor or hobby</label>
                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Like coding!" name="hobby">
      </div>
      <div class="form-group">
                <label for="formGroupExampleInput">Enter any type of living thing</label>
                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="It must be alive!" name="livingThing">
      </div>
      <div class="form-group">
                 <label for="formGroupExampleInput">Say something nice to someone</label>
                 <input class="form-control form-control-lg" type="text" name="message">
      </div>
      <br />
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>
</html>