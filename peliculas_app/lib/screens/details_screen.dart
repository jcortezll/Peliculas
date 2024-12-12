import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Películas en cines"),
        ),
        body: Container(
          child: Center(
            child: Text('Details Screen')),
        )
      )
    );
  }
}