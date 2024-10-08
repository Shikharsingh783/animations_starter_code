import 'package:animation_starter_code/explicit_examples/loading_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const RadialProgressAnimation(
        progress: 0.65,
        color: Colors.blue,
      ),
    );
  }
}
