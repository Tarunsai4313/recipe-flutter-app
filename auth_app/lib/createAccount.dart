import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:auth_app/main.dart';

void main() {
  runApp(SignUp());
}

void authenticate(BuildContext context) {
  print("user created");
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 1000,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                alignment: Alignment.topLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    'assets/favicon.png',
                    width: 100,
                    height: 100,
                    alignment: Alignment.topLeft,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 100.0),
              Text(
                "Create New Account",
                textAlign: TextAlign.center,
                
              ),
              SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                  icon: Icon(
                    Icons.mail,
                    color: Color.fromARGB(252, 255, 255, 255),
                  ),
                  labelText: 'email',
                  filled: false,
                  fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(1),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                  icon: Icon(
                    Icons.supervised_user_circle_rounded,
                    color: Color.fromARGB(252, 255, 255, 255),
                  ),
                  labelText: 'username',
                  filled: false,
                  fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(1),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                  icon: Icon(
                    Icons.password_rounded,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  labelText: 'password',
                  filled: false,
                  fillColor: Colors.white.withOpacity(1),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                  icon: Icon(
                    Icons.verified_user_rounded,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  labelText: 'confirm password',
                  filled: false,
                  fillColor: Colors.white.withOpacity(1),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30.0),
              Center(
                child: ElevatedButton(
                  autofocus: false,
                  onPressed: () => authenticate(context),
                  child: Text('SIGNUP'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: TextButton(
                        onPressed: () {
                          // Implement create account functionality
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Text(
                            'Already Have Account? Login!',
                            style: TextStyle(color: Colors.white),
                        ),
                      ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}




/*


home: Scaffold(
        backgroundColor: Color.fromARGB(255, 37, 35, 35),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    'Create New Account',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                SizedBox(height: 20.0),
                TextField(
                  // controller: user,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                    icon: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.white,
                    ),
                    labelText: 'Username',
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  // controller: user,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                    icon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  // controller: user,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                    icon: Icon(
                      Icons.password_outlined,
                      color: Colors.white,
                    ),
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign up button press
                    print('Sign up clicked');
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),


*/