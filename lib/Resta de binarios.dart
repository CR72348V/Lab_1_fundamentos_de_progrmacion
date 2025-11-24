import 'dart:io';
import 'dart:math';

void restaBinaria() {
  print('Resta Binaria');

  stdout.write("Ingresa el primer número Binario: ");
   int binario1 = int.parse(stdin.readLineSync()!);
     int posicion = 0;
       int decimal = 0;
         int digito;

  stdout.write("Ingresa el segundo número Binario: ");
   int binario2 = int.parse(stdin.readLineSync()!);
     int posicion2 = 0;
       int decimal2 = 0;
         int digito2;

           String binario = "";
             int num1 = 1;
                int num0 = 0;

                   while (binario1 > 0) {
                   digito = binario1 % 10;
                   decimal = decimal + digito * pow(2, posicion).toInt();
                   binario1 = binario1 ~/ 10;
                   posicion++;
  }

                   while (binario2 > 0) {
                   digito2 = binario2 % 10;
                   decimal2 = decimal2 + digito2 * pow(2, posicion2).toInt();
                   binario2 = binario2 ~/ 10;
                   posicion2++;
  }

                       int restaDecimal = decimal - decimal2;
                       int resultadoDecimal = restaDecimal.abs();

                         print("El resultado es: $resultadoDecimal");

                           if (resultadoDecimal == 0) {
                           binario = "0";
  }                         else {
                           while (resultadoDecimal > 0) {
                           if (resultadoDecimal % 2 == 0) {
                           binario = num0.toString() + binario;
                           } else {
                           binario = num1.toString() + binario;
      }
                           resultadoDecimal = resultadoDecimal ~/ 2;
    }
  }

                               while (binario.length < 4) {
                               binario = "0" + binario;
  }


                                 if (restaDecimal < 0) {
                                 print('El número binario es: -$binario');
  }                              else {
                                 print("El número binario es: $binario");
  }
}
