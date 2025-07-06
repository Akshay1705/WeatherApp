<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Weather App - practiceBy Akshay</title>
  <link rel="stylesheet" href="style.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>

<body>

  <div class="mainContainer">
    <!-- Form -->
    <form action="weather" method="post" class="searchInput">
      <input type="text" placeholder="Enter City Name" id="searchInput"
        value="${not empty city ? city : ''}" name="city" required />
      <button id="searchButton" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
    </form>

    <!-- Weather Details -->
    <c:if test="${not empty temperature}">
      <div class="weatherDetails">
        <div class="weatherIcon">
          <!-- Weather Icon -->
          <img id="weather-icon"
            src="https://openweathermap.org/img/wn/${iconCode}@2x.png"
            alt="${weatherCondition}" />
          <h2>${temperature} °C</h2>
        </div>

        <div class="cityDetails">
		  <div class="desc"><strong>${city}</strong></div>
		  <div class="date">
		    <fmt:parseDate value="${date}" pattern="yyyy-MM-dd" var="parsedDate" />
		    <fmt:formatDate value="${parsedDate}" pattern="dd-MM-yyyy" />
		  </div>
		</div>

        <div class="windDetails">
          <div class="humidityBox">
            <img src="https://cdn-icons-png.flaticon.com/512/728/728093.png" alt="Humidity" />
            <div class="humidity">
              <span>Humidity</span>
              <h2>${humidity}%</h2>
            </div>
          </div>

          <div class="windSpeed">
            <img src="https://cdn-icons-png.flaticon.com/512/481/481896.png" alt="Wind Speed" />
            <div class="wind">
              <span>Wind Speed</span>
              <h2>${windSpeed} km/h</h2>
            </div>
          </div>
        </div>
      </div>
    </c:if>

    <!-- Error Message -->
    <c:if test="${not empty error}">
      <div class="error">${error}</div>
    </c:if>
  </div>

</body>
</html>
