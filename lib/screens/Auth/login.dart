import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                String username = usernameController.text;
                String password = passwordController.text;
                final response = await http.post(
                  Uri.parse('https://your-api-url.com/login'),
                  body: {
                    'username': username,
                    'password': password,
                  },
                );
                if (response.statusCode == 200) {
                  final Map<String, dynamic> data = jsonDecode(response.body);
                  final String token = data['token'];

                  // Store the token securely in local storage
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('auth_token', token);

                  // Navigate to the next screen or perform actions after successful login
                } else {
                  // Handle login failure
                  print('Login failed: ${response.statusCode}');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
