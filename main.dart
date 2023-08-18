import 'dart:async';
import 'package:flutter/material.dart';

void main() { runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const HomeScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
child: const Text(
  'STOPWATCH'
),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("home ")),
      body: Center(child: Container(
        width: 300,
      child:  TextField(
        decoration: InputDecoration(
          hintText:'Enter User Name',
        border:OutlineInputBorder(
           borderRadius: BorderRadius.circular(21),
          borderSide: const BorderSide(
            color: Colors.cyan
          )
        ),
        ))
      ),
       /// child: ElevatedButton.icon(
       /// onPressed: (){},
      ///    icon: const Icon(Icons.check),
     ///   label: const Text('CONTINUE'),
     /// )

      ),
    );

  }
}

