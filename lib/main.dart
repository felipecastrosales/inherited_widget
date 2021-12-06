import 'package:flutter/material.dart';

import 'model/user_model.dart';
import 'pages/splash/splash_page.dart';
import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Cristiano Ronaldo',
      imgAvatar:
          'assets/i.png',
      birthDate: '05/02/1985',
      child: MaterialApp(
        title: 'Inherited Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
