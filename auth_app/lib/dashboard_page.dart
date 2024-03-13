import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auth_app/items.dart';
import 'starter.dart';
import 'main.dart';

class DashboardPage extends StatelessWidget {
  final String user = "Varun";

  void navigateNext(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Starter()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome',
            style: TextStyle(
              color: Colors.white,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HamMenu()));
          },
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0), // Background color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Biryani',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Image.asset(
              'assets/biryani.png', // Your image path
              height: 300, // Adjust image height as needed
              width: 300, // Set image width to fill the screen
              fit: BoxFit.cover, // Adjust image size and position
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.timer,
                  size: 40,
                  color: Colors.white,
                ), // Icon 1
                Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.white,
                ), // Icon 2
                Image.asset(
                  "assets/icons/chef.png",
                  scale: 1.5,
                  color: Colors.white,
                ) // Icon 3
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button 1 tap
                  },
                  child: Text(
                    '<',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button 1
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecipeDetailsPage()),
                    );
                  },
                  child: Text('Get Recipe'),
                ),
                ElevatedButton(
                  onPressed: () => navigateNext(context),
                  child: Text(
                    '>',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*   About Receipe  */
class RecipeDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Details', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 43, 58, 70), // Example color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Chicken Biryani Recipe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1. Basmati rice\n2. Chicken\n3. Spices\n4. Yogurt\n5. Onions\n6. Tomatoes\n7. Ghee\n8. Mint leaves\n9. Coriander leaves\n10. Saffron\n11. Water',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1. Marinate the chicken with spices and yogurt.\n2. Cook the basmati rice.\n3. Layer the rice and chicken in a pot.\n4. Add saffron-infused milk.\n5. Garnish with fried onions, mint, and coriander leaves.\n6. Cook on low heat for 20 minutes.\n7. Serve hot with raita.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class HamMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Column(
        
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/user.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        16.0), // Added space between image and username text
                Text(
                  'USERNAME', // Dynamic username text
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.list_alt_rounded),
                    title: Text('Items'),
                    onTap: () {
                      // Navigate to change pass
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyList()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Change Password'),
                    onTap: () {
                      // Navigate to change password screen
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Sign Out'),
                    onTap: () {
                      // Implement sign out functionality
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Exit'),
                    onTap: () {
                      // Implement sign out functionality
                      SystemNavigator.pop();
                    },
                  ),
                  // Add more ListTile widgets for additional menu items
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
