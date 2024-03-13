import 'package:flutter/material.dart';
import 'package:auth_app/afganiMutton.dart';
import 'package:auth_app/dashboard_page.dart';

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Welcome',style:TextStyle(color: Colors.white,) ),
          leading: IconButton(
            icon: Icon(Icons.menu,color: Colors.white,),
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
              Text('Chicken Lazana',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),),
                ClipRRect(
                borderRadius: BorderRadius.circular(150.0), // Adjust corner radius as desired
                child: Image.asset(
                  'assets/starter.jpg', // Your image path
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
                      MaterialPageRoute(builder: (context) => DashboardPage()),
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
                  'Chicken Lasagna Recipe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Ingredients:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  '**For the lasagna noodles:**\n'
                      '1. 1 box (about 12 ounces) lasagna noodles (no-boil can be used)\n'
                      '\n'
                      '**For the chicken filling:**\n'
                      '2. 2-3 boneless, skinless chicken breasts or thighs, cooked and shredded\n'
                      '3. 1 tablespoon olive oil\n'
                      '4. 1 onion, chopped\n'
                      '5. 2 cloves garlic, minced\n'
                      '6. 1 (28-ounce) can crushed tomatoes\n'
                      '7. 1/2 teaspoon dried oregano\n'
                      '8. 1/4 teaspoon red pepper flakes (optional)\n'
                      '9. Salt and freshly ground black pepper to taste\n'
                      '\n'
                      '**For the béchamel sauce (white sauce):**\n'
                      '10. 3 tablespoons unsalted butter\n'
                      '11. 3 tablespoons all-purpose flour\n'
                      '12. 3 cups milk (whole milk recommended)\n'
                      '13. 1/2 teaspoon ground nutmeg\n'
                      '14. Salt and freshly ground black pepper to taste\n'
                      '\n'
                      '**For the topping:**\n'
                      '15. 1 cup shredded mozzarella cheese\n'
                      '16. 1/2 cup grated Parmesan cheese',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Instructions:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  '1. Preheat oven to 375°F (190°C).\n'
                      '2. Cook lasagna noodles according to package instructions (al dente) if not using no-boil. Drain and set aside.\n'
                      '3. Heat olive oil in a skillet over medium heat. Sauté onion until softened, then add garlic and cook for another minute.\n'
                      '4. Stir in crushed tomatoes, oregano, red pepper flakes (if using), salt, and pepper. Simmer for 15 minutes.\n'
                      '5. Remove from heat and add shredded chicken.\n'
                      '6. Make béchamel sauce: Melt butter in a saucepan, whisk in flour, cook for 1 minute. Gradually whisk in milk until smooth and thickened. Simmer for 5 minutes, season with nutmeg, salt, and pepper.\n'
                      '7. Assemble lasagna: Spread a thin layer of tomato sauce in a greased 9x13 inch baking dish. Top with lasagna noodles, then béchamel sauce, and mozzarella cheese. Repeat layers, ending with béchamel and mozzarella. Sprinkle with Parmesan cheese.\n'
                      '8. Bake covered with foil for 30 minutes. Remove foil and bake for another 15-20 minutes, or until golden brown and bubbly.\n'
                      '9. Let cool slightly before serving. Enjoy!',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
