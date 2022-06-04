class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition <= 804 && condition > 800) {
      return '🌩';
    } else if (condition < 400 && condition > 299) {
      return '🌧';
    } else if (condition < 600 && condition > 399) {
      return '☔️';
    } else if (condition < 300) {
      return '☃️';
    } else if (condition < 700 && condition > 599) {
      return '🌪️';
    } else if (condition < 800 && condition > 699) {
      return '🌞';
    } else if (condition == 1000) {
      return '☀️';
    } else if (condition < 900 && condition > 804) {
      return '🌤️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'Es hora de un 🍦';
    } else if (temp > 20) {
      return 'Tiempo para unos shorts y una 👕';
    } else if (temp < 10) {
      return 'Tal vez necesites 🧣 y unos 🧤';
    } else {
      return 'Lleva un 🧥 en caso de necesitarlo';
    }
  }
}
