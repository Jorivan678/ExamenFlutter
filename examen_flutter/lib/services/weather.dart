class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition <= 804 && condition > 800) {
      return '๐ฉ';
    } else if (condition < 400 && condition > 299) {
      return '๐ง';
    } else if (condition < 600 && condition > 399) {
      return 'โ๏ธ';
    } else if (condition < 300) {
      return 'โ๏ธ';
    } else if (condition < 700 && condition > 599) {
      return '๐ช๏ธ';
    } else if (condition < 800 && condition > 699) {
      return '๐';
    } else if (condition == 1000) {
      return 'โ๏ธ';
    } else if (condition < 900 && condition > 804) {
      return '๐ค๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'Es hora de un ๐ฆ';
    } else if (temp > 20) {
      return 'Tiempo para unos shorts y una ๐';
    } else if (temp < 10) {
      return 'Tal vez necesites ๐งฃ y unos ๐งค';
    } else {
      return 'Lleva un ๐งฅ en caso de necesitarlo';
    }
  }
}
