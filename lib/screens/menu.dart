import 'package:eda_front/screens/initial_screen.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  const Menu({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const InitialScreen())), child: const Text("Charts")),
            ],
           ),
       );
  }
}