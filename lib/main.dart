import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter GridView'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //Numero de columnas:
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              mainAxisExtent: 200,
              childAspectRatio: 1),
          children: [
            Container(
              color: Colors.pink,
              child: Column(
                children: [
                  Image.asset("assets/Logo1.png"),
                  Text("Texto 1", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              child: Column(
                children: [
                  Image.asset("assets/coffee-cup.png"),
                  Text("Texto 2", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              child: Column(
                children: [
                  Image.asset("assets/coffee-shop.png"),
                  Text("Texto 3", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              child: Column(
                children: [
                  Image.asset("assets/java.png"),
                  Text("Texto 4", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              child: Column(
                children: [
                  Image.asset("assets/mug.png"),
                  Text("Texto 5", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              child: Column(
                children: [
                  Image.asset("assets/starbucks.png"),
                  Text("Texto 6", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ],
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
