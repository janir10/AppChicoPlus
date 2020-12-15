import 'package:flutter/material.dart';
import 'package:teste/core/colors.dart';

class  ForgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView( children: [
              SizedBox(height: 64.0),
              Image.asset('images/logo.png', width: 300),
              SizedBox(height: 128.0),
              TextField(
                    obscureText: false,
                    
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    ),
                ),
                SizedBox(height: 16.0),
                            
                RaisedButton(
                onPressed: () {},
                child: const Text('Forgert Forget', style: TextStyle(fontSize: 20)),
                padding: EdgeInsets.symmetric(vertical: 20),
                color: appPrimaryMaterialColor,
                 
                ),
                SizedBox(height: 16.0),
                Center(child:  Text("Forget Password",
                style: TextStyle(decoration: TextDecoration.underline)))
               
              ],
              
            ),
      ),
    );
  }
}