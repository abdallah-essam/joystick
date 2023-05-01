import 'package:flutter/material.dart';
import 'package:joystick/shared/routes/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joystick',
      theme: ThemeData(),
      onGenerateRoute: MyRoutes.onGenerateRoute,
    );
  }
}
