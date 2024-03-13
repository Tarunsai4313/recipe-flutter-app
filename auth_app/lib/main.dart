import 'package:auth_app/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'afganiMutton.dart';
import 'createAccount.dart';
import 'dashboard_page.dart';
import 'ForgotPass.dart';

//import 'package:flutter/google_fonts/google_fonts.dart';
import 'dart:convert';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    final String username = usernameController.text;
    final String password = passwordController.text;

    final Uri url = Uri.parse('http://localhost:8080/login');
    final Map<String, String> body = {'username': username, 'password': password};

    try {
      final response = await http.post(url, body: body);

      if (response.statusCode == 200) {
        // Handle successful login
        print('Login successful!');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
      } else {
        // Handle failed login
        print('Login failed. Please try again.');
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/loginimage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250, left: 40, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 229, 232, 235),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15.0),
                      Text("Sign into Continue",
                      ),
                      SizedBox(height: 30.0),
                      TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 12.0),
                          icon: Icon(
                            Icons.mail,
                            color: Color.fromARGB(253, 0, 0, 0),
                          ),
                          labelText: 'username',
                          filled: false,
                          fillColor:
                              Color.fromARGB(255, 255, 255, 255).withOpacity(1),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 12.0),
                          icon: Icon(
                            Icons.lock,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          labelText: 'password',
                          filled: false,
                          fillColor: Colors.white.withOpacity(1),
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: login,
                        child: Text('LOGIN'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 0, 0, 0),
                            foregroundColor: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement forgot password functionality
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordPage()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
  onPressed: () {
    // Implement create account functionality
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpPage(), // Corrected: Use SignUpPage
      ),
    );
  },
  child: Text(
    'Create new Account',
    style: TextStyle(color: Colors.white),
  ),
),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
