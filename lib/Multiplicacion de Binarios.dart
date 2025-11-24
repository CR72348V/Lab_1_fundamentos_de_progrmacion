import 'dart:io';
import 'dart:math';

void multiplicacionbinaria() {

  print('Multiplicacion Binaria');

  stdout.write("Escribe el primer número Binario: ");
  String bin1 = stdin.readLineSync()!;
  int binario1 = int.parse(bin1);
  int posicion1 = 0;
  int decimal1 = 0;

  stdout.write("Escribe el segundo número Binario: ");
  String bin2 = stdin.readLineSync()!;
  int binario2 = int.parse(bin2);
  int posicion2 = 0;
  int decimal2 = 0;

  String binario = "";

  
  while (binario1 > 0) {
    int digito = binario1 % 10;
    decimal1 = decimal1 + digito * pow(2, posicion1).toInt();
    binario1 = binario1 ~/ 10;    
    posicion1++;
  }

  
  while (binario2 > 0) {
    int digito = binario2 % 10;
    decimal2 = decimal2 + digito * pow(2, posicion2).toInt();
    binario2 = binario2 ~/ 10;    
    posicion2++;
  }

  
  int multiplicaciondecimal = decimal1 * decimal2;

  
  if (multiplicaciondecimal == 0) {
    binario = "0";
  } else {
    while (multiplicaciondecimal > 0) {
      if (multiplicaciondecimal % 2 == 0) {
        binario = "0" + binario;
      } else {
        binario = "1" + binario;
      }
      multiplicaciondecimal = multiplicaciondecimal ~/ 2;   
    }
  }

  while (binario.length < 4) {
    binario = '0' + binario;
  }
  print("El resultado de la Multiplicacion binaria es: $binario");
}
