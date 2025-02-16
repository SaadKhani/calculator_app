
import 'package:flutter/material.dart';

class ResultModel extends ChangeNotifier{
 
 String input;
 String result;

 

 ResultModel({required this.input,required this.result});

  set setInput(String a){
  input=a;
  notifyListeners();
 }

 String get getInput=>input;


 set setResult(String a){
  result=a;
  notifyListeners();
 }
 
}