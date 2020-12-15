import 'package:flutter/material.dart';

class VisitaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text("Bem-vindo Maria"),
        actions: [
          Padding( 
            padding: 
                EdgeInsets.only(right:  40),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25),

          )
        ],
       ),

             
      );
      
  }
}