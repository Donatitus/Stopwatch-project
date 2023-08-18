import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("home ")),
      backgroundColor:Colors.cyan,
        body:SafeArea(
          child: Center(
            child: Column(
              children: const [
                SizedBox(height: 50),
               Text{
                'user',
                  style: TextStyle(color: Colors.lime),
                },
              ],
            ),
          ),
        )









