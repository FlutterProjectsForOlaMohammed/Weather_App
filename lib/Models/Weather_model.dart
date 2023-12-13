class WeatherModel {
  final double avgTemp, minTemp, maxTemp;
  final String dayStatus, cityName, lastUpdated, image;

  WeatherModel(
      {required this.avgTemp,
      required this.minTemp,
      required this.maxTemp,
      required this.dayStatus,
      required this.cityName,
      required this.lastUpdated,
      required this.image});
  factory WeatherModel.fromJson(jsonData) {
    return WeatherModel(
      cityName: jsonData["location"]["name"],
      minTemp: jsonData["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      maxTemp: jsonData["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      dayStatus: jsonData["forecast"]["forecastday"][0]["day"]["condition"]
          ["text"],
      avgTemp: jsonData["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      lastUpdated: jsonData["current"]["last_updated"],
      image: jsonData["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
    );
  }
}
