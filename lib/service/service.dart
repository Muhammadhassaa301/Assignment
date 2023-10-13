import 'dart:convert';

import 'package:assig/models/model.dart';
import 'package:http/http.dart' as http;

class AuthenicationService {
  Future<List<ProductModel>> productApi() async {
    String url = 'https://fakestoreapi.com/products';
    final response = await http.get(Uri.parse(url));
    jsonDecode(response.body);

    print(response.body);
    if (response.statusCode == 200) {
      return productModelFromJson(response.body);
    }
    if (response.statusCode == 500) {
      throw Exception('Server Not Responding');
    } else {
      throw Exception('Something Went Wrong');
    }
  }
}
