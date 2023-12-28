import 'package:app_taxi_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Principal',
      initialRoute: '/',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      routes: {
        '/':(context) => HomePage(),
      },
    );
  }
} 