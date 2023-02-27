import 'package:http/http.dart' as http;
import 'dart:convert';

Future<DateTime> getCurrentTimeInCanarias() async {
  final response = await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/Atlantic/Canary'));
  if (response.statusCode == 200) {
    final dynamic responseJson = jsonDecode(response.body);
    final String dateString = responseJson['datetime'];
    DateTime dateTime = DateTime.parse(dateString);
    return dateTime;
  } else {
    throw Exception('Failed to load current time');
  }
}
