import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();

  Future<void> resetPassword() async {
    final String username = usernameController.text;

    final Uri url = Uri.parse('http://localhost:8080/resetPassword');
    final Map<String, String> body = {'username': username};

    try {
      final response = await http.post(url, body: body);

      if (response.statusCode == 200) {
        // Password reset request successful
        print('Password reset request successful');
      } else {
        // Error sending password reset request
       // print('Failed to send password reset request');
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: resetPassword,
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ForgotPasswordPage(),
  ));
}
