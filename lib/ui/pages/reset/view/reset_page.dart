import 'package:flutter/material.dart';
import 'package:teste/core/colors.dart';

class ResetPage extends StatelessWidget {
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
                    labelText: 'New Password',
                    ),
                ),
                SizedBox(height: 16.0),
              TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    ),
                ),
                SizedBox(height: 32.0),
               
                RaisedButton(
                onPressed: () {},
                child: const Text('Reset Password', style: TextStyle(fontSize: 20)),
                padding: EdgeInsets.symmetric(vertical: 20),
                color: appPrimaryMaterialColor,
                 
                ),
                SizedBox(height: 16.0),
                Center(child:  Text(" Lembrou do password ? VOLTAR AO LOGIN",
                style: TextStyle(decoration: TextDecoration.underline)))
               
              ],
              
            ),
      ),
    );
  }
}