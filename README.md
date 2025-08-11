# Weather
# Weather App (Aura Component)

This Salesforce Aura Component fetches and displays both the **current weather** and a **5-day forecast** for a given city using the OpenWeatherMap API.  
It supports **dark mode**, weather condition icons, and a loading spinner for a better UI experience.

---

## 🚀 Features
- 🌤 **Current Weather Display**
- 📅 **5-Day Forecast** (vertically stacked cards)
- 🌙 **Dark Mode Toggle**
- ⏳ **Loading Spinner**
- 🌍 **OpenWeatherMap API Integration**
- 💻 Responsive design for both desktop and mobile

---

## 📂 Project Structure
WeatherApp/
│
├── aura/
│ ├── WeatherComponent/
│ │ ├── WeatherComponent.cmp # Aura Component Markup
│ │ ├── WeatherComponentController.js # Client-side Controller
│ │ ├── WeatherComponentHelper.js # Helper functions for API calls
│ │ ├── WeatherComponent.css # Styles (Light/Dark mode)
│ │ ├── WeatherComponent.design # Design attributes for app builder
│
├── classes/
│ ├── WeatherDetailsClass.cls # Apex Class (Backend Logic)
│ ├── WeatherDetailsClass.cls-meta.xml
