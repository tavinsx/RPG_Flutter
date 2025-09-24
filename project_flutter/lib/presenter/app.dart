import 'package:flutter/material.dart';
import 'package:project_flutter/presenter/home/home_view.dart';

class RpgApp extends StatelessWidget {
  const RpgApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue
        ),
      ),
    );
  }
}

