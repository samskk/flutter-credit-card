import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppUrl {
  static const String baseUrl =
      'https://flutter-assignment-api.herokuapp.com/v1';

  static const String login = baseUrl + '/auth/login';
  static const String register = baseUrl + '/auth/register';
}

Future<User> createUser(name, email, password) async {
  final response = await http.post(
    Uri.parse(AppUrl.register),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
        <String, String>{"name": name, "email": email, "password": password}),
  );
  print(response.statusCode);
  //return response;
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.

    return User.fromJson(jsonDecode(response.body));
    // return true;
  } else if (response.statusCode == 400) {
    print("hi");
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create user.');
  }
}

Future<User> loginUser(email, password) async {
  final response = await http.post(
    Uri.parse(AppUrl.register),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
      <String, String>{"email": "sampkk02@gmail.com", "password": "12345678q"},
    ),
  );
  print(response.statusCode);
  //return response;
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.

    return User.fromJson(jsonDecode(response.body));
    // return true;
  } else if (response.statusCode == 400) {
    print("hi");
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create user.');
  }else{
    throw Exception('Failed to create user.');
  }
}

class User {
  final String id;
  final String name;
  final String email;
  final String token;

  User({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        token: json['token']);
  }
}
