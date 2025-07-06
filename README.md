# 🌦️ Weather Web App

A simple weather forecasting web application that allows users to fetch real-time weather information for any city using the OpenWeatherMap API.

## 🔧 Technologies Used
- Java
- Servlet & JSP
- HTML, CSS, JavaScript
- JSTL (JSP Standard Tag Library)
- OpenWeatherMap API

## 📋 Features
- Real-time weather updates by city
- Displays temperature, humidity, wind speed, and weather conditions
- Clean and responsive UI
- Error handling for invalid city names

## 🚀 How to Run
1. Clone the repository
2. Import the project into Eclipse
3. Ensure the following JARs are placed inside `WEB-INF/lib`:
   - `jakarta.servlet.jsp.jstl-api-3.0.0.jar`
   - `jakarta.servlet.jsp.jstl-impl-3.0.0.jar`
   - `gson-2.10.1.jar`
4. Deploy the project on Apache Tomcat 10+
5. Visit `http://localhost:8080/WeatherApp/`

## 💡 Notes
- Make sure to replace the API key in the servlet with your own OpenWeatherMap API key.
- Ensure JSTL JARs are placed in the `WEB-INF/lib` directory.

## 📂 Project Structure
