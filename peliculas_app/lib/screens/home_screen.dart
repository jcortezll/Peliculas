import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Películas en cines"),),
        body: Column(
          children: [
            CardSwiper(),
            MovieSlider()
          ]
        )
      )
    );
  }
}