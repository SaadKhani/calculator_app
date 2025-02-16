import 'dart:developer';

import 'package:calculator_app/calculation.dart';
import 'package:calculator_app/screens/result_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBtn extends StatelessWidget {

   ValueNotifier<bool> effect=ValueNotifier(true);
   bool isbool;
   String title;
   Color color;
   CustomBtn({super.key, this.isbool=false,required this.title,this.color=Colors.black});

  
  
  @override
  Widget build(BuildContext context) {
    final a=Provider.of<ResultModel>(context);
    return GestureDetector(
      onTapDown: (_){
        effect.value=false;
       if (title=='AC') {
          a.setInput='';
          return ;
        }
      

        // if (a.input!='') {
        //   a.setInput=a.input+title;
        // } 
       
        // if (a.input=='') {
        //   a.setInput=title;
        // }
        
        if (title=='<-') {
          if (a.input=='') {
            return;
          }
          a.setInput=a.input.substring(0,a.input.length-1);
          return;  
        }
        if (title=='+'||title=='-'||title=='X'||title=='/'||title=='%') {
          if (a.input.isEmpty) {
            return;
          }
          if (a.input.contains('+')||a.input.contains('-')||a.input.contains('X')||a.input.contains('/')||a.input.contains('%')) {

            return;
          }
        }
        

        
        a.setInput='${a.input}${title}';
        
        if (title=='=') {
          if (a.input.isEmpty) {
            return;
          }
          if (!(a.input.contains('+'))&&!(a.input.contains('-'))&&!(a.input.contains('/'))&&!(a.input.contains('X'))) {
            return;
          }
        }
        a.setResult='${calculate().result(a.input)}';
        // if (title=='=') {
        //   a.removeLast();
        //   a.setResult=calculate().result(a.getInput);
        // }
        
        
      },
      onTapUp: (_){
        Future.delayed(Duration(milliseconds: 200)).then((a){
          effect.value=true;
        });
        
      },
      child: ValueListenableBuilder(
        valueListenable: effect, 
        builder: (BuildContext context,bool val,child)=>AnimatedContainer(
        alignment: Alignment.center,
        duration: Duration(milliseconds: 250),
        height:isbool?140: 70,width: 70,
        decoration: BoxDecoration(
          color: isbool?Colors.blue :Color(0xFFEDF1F4) ,
          borderRadius: BorderRadius.circular(24),
          boxShadow: val?unclicked():clicked()
        ),
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: color),),
        ),
        )
    );
  }
}


unclicked(){
  return  [
          BoxShadow(
            offset: Offset(3, 3),
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 5
          ),
          BoxShadow(
            offset: Offset(-3, -3),
            color: Colors.white,
            spreadRadius: 1,
            blurRadius: 5
          ),
        ];
}

clicked(){
  return  [
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.black26,
            spreadRadius: 0,
            blurRadius: 0
          ),
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.white,
            spreadRadius: 0,
            blurRadius: 0
          ),
        ];
}