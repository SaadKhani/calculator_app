

class calculate {
  String result(String a){
    int index=a.indexOf(RegExp(r'[\+\-\X/]'));

    String operand1=a.substring(0,index);
    String operator=a[index];
    String operand2=a.substring(index+1);

    if (operand1.isEmpty||operand2.isEmpty) {
      return '';
    }
    double value1=double.parse(operand1);
    double value2=double.parse(operand2);

    switch (operator) {
      case '+':
        {
          return '${value1+value2}';
          
        }
         case '-':
        {
          return '${value1-value2}';
          
        } case '/':
        {
          return '${value1/value2}';
          
        } case 'X':
        {
          return '${value1*value2}';
          
        }
      default:
      return '';
    }

  }
}