// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

class PostController extends GetxController {
  var posts = <Map<String, dynamic>>[].obs; // RxList tipinde olmalı

  void fetchData() async {
    try {
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if (response.statusCode == 200) {
        List<dynamic> decodedData = jsonDecode(response.body);
        posts.assignAll(decodedData.cast<Map<String, dynamic>>()); // RxList'e atama
        for (var data in posts) {
          print('Title: ${data['title']}');
          print('Description: ${data['body']}');
        }
      } else {
        print("Request failed status: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
