

import 'package:calculator_app/screens/result_model.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:provider/provider.dart';




void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => ResultModel(input: '',result: ''),
    child: MyApp()));

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: CalculatorScreen(),
    );
  }
}
