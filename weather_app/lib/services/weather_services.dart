import 'package:http/http.dart' as http;

class WeatherServices {

  Future<void> getCurrentWeather(String query) async {
    final endpoint = 'http://api.weatherapi.com/v1/current.json?key=de4bf245cadd4ba787f60126251112&q=$query';

    final response = await http.get(Uri.parse(endpoint));

    print(response.body);
    

  }

}