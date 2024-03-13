import 'package:flutter/material.dart';
import 'starter.dart';
import 'package:auth_app/dashboard_page.dart';

class AfganiMutton extends StatelessWidget{
  const AfganiMutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Welcome',style:TextStyle(color: Colors.white,) ),
          leading: IconButton(
            icon: Icon(Icons.menu,color: Colors.white,),
            onPressed: () {/* Action */
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HamMenu()));},
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Container(
          color: Color.fromARGB(255, 0, 0, 0), // Background color
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Afgani Mutton',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),),
              ClipRRect(
                  borderRadius: BorderRadius.circular(150.0), // Adjust corner radius as desired
                  child: Image.asset(
                    'assets/afgani.jpg', // Your image path
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.timer,size:40,color: Colors.white,), // Icon 1
                  Icon(Icons.search,size: 40,color: Colors.white,), // Icon 2
                  Image.asset("assets/icons/chef.png",scale:1.5,color: Colors.white,) // Icon 3
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //back
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Starter()),
                      );
                    },
                    child: Text('<',style: TextStyle(fontSize: 30),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecipeDetailsPage()),
                    );
                    },
                    child: Text('Get Recipe'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // next page
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AfganiMutton()),
                      );
                    },
                    child: Text('>',style: TextStyle(fontSize: 30),),
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
  const RecipeDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text('Recipe Details', style: TextStyle(color: Colors.white)),
  backgroundColor: Color.fromARGB(255, 43, 58, 70), // Example color
),
body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0), // Add padding around content
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Recipe Details',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Process',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  '1. Marinate the mutton with yogurt, ginger-garlic paste, garam masala powder, and salt for at least 2 hours.\n'
                    '2. Heat oil in a pan and sauté onions until golden brown.\n'
                    '3. Add the marinated mutton and cook until browned on all sides.\n'
                    '4. Add chopped green chilies (if using) and cook for a minute.\n'
                    '5. Add water or mutton stock to cover the meat and bring to a boil.\n'
                    '6. Reduce heat, cover, and simmer for about 45 minutes, or until the mutton is tender.\n'
                    '7. In a separate bowl, whisk together fresh cream, milk, crushed black peppercorns, cumin powder, turmeric powder, and dried roasted fenugreek leaves powder.\n'
                    '8. Add the cream mixture to the simmering mutton and cook for 10-15 minutes, or until the sauce thickens slightly.\n'
                    '9. Garnish with chopped coriander leaves, mint leaves, and (optional) a whole black cardamom and bay leaf.\n'
                    '10. Serve hot with naan or rice.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

