import 'dart:convert';
import 'package:food_app/models.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl = 'https://6488a9fe0e2469c038fe302f.mockapi.io/yummyfood';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Restaurant> restaurant =
            it.map((e) => Restaurant.fromJson(e)).toList();
        return restaurant;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
