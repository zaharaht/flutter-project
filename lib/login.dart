import 'package:flutter/material.dart';
import 'package:flutter_work/home.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
       child: Text('Login Here'),
       ),
        backgroundColor: Colors.black,
      ),
      body: Center(
    
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true, // Hide password
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                     Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>HomeScreen()),
      );

                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text(
                  'Login',
                  
                   style: TextStyle(color: Colors.white),),
                
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate to the signup page
                  

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(
                  'Don\'t have an account? Sign up',
                  style: TextStyle(color: Colors.black),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center( 
        child:Text(
          'Sign Up'
          
          ),),
          backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true, // Hide password
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle signup logic here
                },
                child: Text('Sign Up'),
                style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
  ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate back to the login page
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Already have an account? Login',
                    style: TextStyle(color: Colors.black),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
