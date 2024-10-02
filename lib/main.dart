import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // White background as required
        appBar: AppBar(
          title: Text('Recipe Categories'),
          backgroundColor: Colors.green, // Customized AppBar color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // SpaceBetween for 8 items
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // "Browse Categories" Heading
              Text(
                'Browse Categories',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),

              // Descriptive text
              Text(
                'Not sure about exactly which recipe you\'re looking for? Do a search, or dive into our most popular categories.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // Space between text and first category section

              // By Meat Section
              Text(
                'By Meat',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Center-aligned text
              ),
              SizedBox(height: 20), // Space before the row of meat items

              // First Row of Images (By Meat)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, // SpaceAround for spacing
                children: [
                  CategoryItemCenter(image: 'assets/images/beef.jpg', label: 'Beef'),
                  CategoryItemCenter(image: 'assets/images/chicken.jpg', label: 'Chicken'),
                  CategoryItemCenter(image: 'assets/images/pork.jpg', label: 'Pork'),
                  CategoryItemCenter(image: 'assets/images/seafood.jpg', label: 'Seafood'),
                ],
              ),

              // By Course Section
              Text(
                'By Course',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // Space before the row of course items

              // Second Row of Images (By Course)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryItem(image: 'assets/images/main_dish.jpg', label: 'Main Dishes'),
                  CategoryItem(image: 'assets/images/salad.jpg', label: 'Salad Recipes'),
                  CategoryItem(image: 'assets/images/side_dish.jpg', label: 'Side Dishes'),
                  CategoryItem(image: 'assets/images/crockpot.jpg', label: 'Crockpot'),
                ],
              ),

              // By Dessert Section
              Text(
                'By Dessert',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // Space before the row of dessert items

              // Third Row of Images (By Dessert)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryItem(image: 'assets/images/Ice_Cream.jpg', label: 'Ice Cream'),
                  CategoryItem(image: 'assets/images/Brownies.jpg', label: 'Brownies'),
                  CategoryItem(image: 'assets/images/Pies.jpg', label: 'Pies'),
                  CategoryItem(image: 'assets/images/Cookies.jpeg', label: 'Cookies'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CategoryItemCenter Widget for the By Meat section with centered text
class CategoryItemCenter extends StatelessWidget {
  final String image;
  final String label;

  CategoryItemCenter({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Align text in the center of the image
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 50, // Customize size of the image
        ),
        // Center the text within the CircleAvatar
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16, // Adjust font size if needed
            backgroundColor: Colors.black45, // Optional: Add a semi-transparent background
          ),
        ),
      ],
    );
  }
}

// CategoryItem Widget with Stack() layout for image and text at the bottom
class CategoryItem extends StatelessWidget {
  final String image;
  final String label;

  CategoryItem({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Align text in the center of the image
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 50, // Customize size of the image
        ),
        Positioned(
          bottom: 10, // Text at the bottom of the image
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black45, // Semi-transparent background
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
