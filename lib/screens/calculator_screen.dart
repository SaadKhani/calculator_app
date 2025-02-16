import 'package:calculator_app/custom_btn.dart';
import 'package:calculator_app/screens/result_view_section.dart';

import 'package:flutter/material.dart';


class CalculatorScreen extends StatefulWidget {
  
  CalculatorScreen({super.key,});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: resultSection()
            ),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBtn(title: 'AC',color: Colors.blue,),
                    CustomBtn(title: '4'),
                    CustomBtn(title: '7'),
                    CustomBtn(title: '1'),
                    CustomBtn(title: '%'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBtn(title: '/',color: Colors.blue,),
                    CustomBtn(title: '8'),
                    CustomBtn(title: '5'),
                    CustomBtn(title: '2'),
                    CustomBtn(title: '0'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBtn(title: 'X',color: Colors.blue,),
                    CustomBtn(title: '9'),
                    CustomBtn(title: '6'),
                    CustomBtn(title: '3'),
                    CustomBtn(title: '.'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBtn(title: '<-',color: Colors.blue,),
                    CustomBtn(title: '+',color: Colors.blue,),
                    CustomBtn(title: '-',color: Colors.blue,),
                    CustomBtn(isbool: true,title: '=',color: Colors.white,),
                    
                  ],
                ),
              ],
            )
            )
        ],
      )
    );
  }
}