
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'clothes',
      price: 1000000,
      imageAssetPath: 'assets/images/new.png', // Replace with the actual asset path
    ),
    Product(
      name: 'food',
      price: 400000,
      imageAssetPath: 'assets/images/furniture.png', // Replace with the actual asset path
    ),
    Product(
      name: 'Phones',
      price: 200000,
      imageAssetPath: 'assets/images/phones.png', // Replace with the actual asset path
    ),
    // Add more products as needed
  ];
  
   final List<Category> categories = [
    Category(
      title: 'Electronics',
      products: [
        Product(
          name: 'Product 1',
          price: 19999, // Price in UGX
          imageAssetPath: 'assets/images/tp.png',
        ),
        Product(
          name: 'Product 2',
          price: 29999, // Price in UGX
          imageAssetPath: 'assets/images/product2.jpg',
        ),
        // Add more products in the Electronics category
      ],
    ),
    Category(
      title: 'Clothing',
      products: [
        Product(
          name: 'Product 3',
          price: 39999, // Price in UGX
          imageAssetPath: 'assets/images/product3.jpg',
        ),
        // Add more products in the Clothing category
      ],
    ),
    // Add more categories as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Center(
          child: Text('kzearah'),
        ),
        backgroundColor: Colors.black,
        
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the cart page
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the Home menu item tap
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                // Handle the Profile menu item tap
              },
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
     
            body: Wrap(
        direction: Axis.horizontal, // Equivalent to "flex-direction: row"
        children: products.map((product) {
          return Container(
            width: 400, // Adjust as needed
            margin: EdgeInsets.all(8), // Adjust spacing as needed
            child: Column(
              children: <Widget>[
                Image.asset(
                  product.imageAssetPath,
                  width: 300, // Adjust image size as needed
                  height: 300, // Adjust image size as needed
                ),
                SizedBox(height: 8), // Spacing between image and text
                Text(product.name),
                Text('UGX ${product.price.toStringAsFixed(2)}'),
                SizedBox(height: 8), // Spacing between text and button
                ElevatedButton(
                  onPressed: () {
                    // Add product to cart or navigate to product details page
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}






class Product {
  final String name;
  final double price;
  final String imageAssetPath;

  Product({required this.name, required this.price,
  required this.imageAssetPath});
}
class Category {
  final String title;
  final List<Product> products;

  Category({
    required this.title,
    required this.products,
  });
}