import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/AppProvider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return AppProvider();
      },
      child: MaterialApp(
          home: InitialPage(),

      ),
    );


  }}




