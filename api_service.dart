
import 'dart:async';
class ApiService {
  Future<dynamic> fetchDataFromAPI() async {
    await Future.delayed(Duration(seconds: 1));
    return 'Some API Data';
  }
}
