
import 'package:exam/Screen_one/HealthScreen.dart';
import 'package:exam/Screen_two/AudioBook_Screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HealthScreen.routeName,
      routes: {
        HealthScreen.routeName:(context)=>HealthScreen(),
        AudiobookScreen.routeName:(context)=>AudiobookScreen(),
      },
    );
  }
}
