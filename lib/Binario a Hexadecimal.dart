import 'dart:io';
void binarioHexadecimal(){

  print('Conversion de Binario a Hexadecimal');
  
  stdout.write('Ingresa el número Decimal: ');
  int decimal = int.parse(stdin.readLineSync()!);

  String hex = "";
  String digito;
  
  while (decimal > 0) {
    int residuo = decimal % 16;
  
  if (residuo < 10) {
    digito = residuo.toString();
  } else if(residuo == 10) {
      digito = 'A';
    }else if(residuo == 11){
      digito = 'B';
    }else if(residuo == 12){
      digito = 'C';
    }else if(residuo == 13){
      digito = 'D';
    }else if(residuo == 14){
      digito = 'E';
    }else {
      digito = 'F';
    }
  hex = digito + hex;
  decimal = decimal ~/ 16;
  }

  print('El número hexadecimal es: $hex');
}