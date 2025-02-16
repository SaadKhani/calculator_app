import 'package:calculator_app/screens/result_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class resultSection extends StatelessWidget {
  const resultSection({super.key});

  @override
  Widget build(BuildContext context) {
    final a=Provider.of<ResultModel>(context);
    return Column(
      
      children: [
        
        Spacer(),
        Container(
          height: 150,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFEDF1F4),
            boxShadow:  [
          BoxShadow(
            offset: Offset(-3, -3),
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 8,
            blurStyle: BlurStyle.inner
          ),
          BoxShadow(
            offset: Offset(3, 3),
            color: Colors.white,
            spreadRadius: -1,
            blurRadius: 8,
            blurStyle: BlurStyle.inner
    
          ),
        ]
          ),
          child:Column(
           children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(a.input,style: TextStyle(fontSize: 25),)),
              Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(a.result,style: TextStyle(fontSize: 25),))
           ],
          )
        ),
      ],
    );
  }
}