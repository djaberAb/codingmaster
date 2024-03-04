import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _response = '';

  @override
  void initState() {
    super.initState();
    fetchDataAuth();
  }

  Future<void> fetchDataAuth() async {
    try {
      final response = await http.post(
        Uri.parse('https://progres.mesrs.dz/api/authentication/v1/'),
        body: {
          'username': 'your_username ',
          'password': 'your_password',
        },
      );
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final authToken = responseData['token'];
        setState(() {
          _response = authToken;
        });
      } else {
        setState(() {
          _response = 'Failed to fetch data';
        });
      }
    } catch (error) {
      setState(() {
        _response = 'Error: $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('REST API Example'),
        ),
        body: Center(
          child: Text(_response),
        ),
      ),
    );
  }
}
