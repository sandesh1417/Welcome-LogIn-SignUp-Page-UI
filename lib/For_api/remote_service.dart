//import 'package:api_mvc/models/post.dart';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<String> getToken(String userName,String password) async {
    //  var client = http;

    try {
      var uri = Uri.parse('https://newdemo.mydynamicerp.com//v1/token');
      final response = await http.post(uri, body: {
        // 'userName': 'admin',
        "userName":userName,
        // 'password': 'Nepal@123',
        "password":password,
        'grant_type': 'password'
      });

      log(response.body.toString());

      if (response.statusCode == 200) {
        return response.body;
        //return postsFromJson(json);
      }
      return "Failed";
    } catch (e) {
      return e.toString();
    }
  }
}
