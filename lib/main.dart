import 'package:flutter/material.dart';
import 'package:flutter_provider_bottom_naviagate/home_screen.dart';
import 'package:provider/provider.dart';

import 'bottom_navigation_bar_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => BottomNavigationBarProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme:  ThemeData(

          primarySwatch:  Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
