import 'dart:convert';

import 'package:everything_about_flutter_bloc/modules/user/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UserModel>> getUsers() async {
    List<UserModel> userModelList = [];
    String url = 'https://jsonplaceholder.typicode.com/users';
    try {
      var request = http.Request('GET', Uri.parse(url));
      http.StreamedResponse response = await request.send();

      String rawData = await response.stream.bytesToString();

      List list = json.decode(rawData);
      userModelList = list.map((e) => UserModel.fromMap(e)).toList();

      debugPrint(rawData.toString());
    } catch (e) {
      rethrow;
    }
    return userModelList;
  }
}
