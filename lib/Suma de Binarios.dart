import 'dart:io';
import 'dart:math';

void sumabinaria(){

 print('Suma Binaria');

 stdout.write("Escribe el primer número Binario: ");
   int binario1 = int.parse(stdin.readLineSync()!);
     stdout.write("Escribe el segundo número Binario: ");
       int binario2 = int.parse(stdin.readLineSync()!);

         int posicion1 = 0;
         int posicion2 = 0;

           int decimal1 = 0;
           int decimal2 = 0;
            
            String binario = "";


               while (binario1 != 0 ){
                 int digito = binario1 % 10;
                   decimal1 = decimal1 + digito * pow(2, posicion1).toInt();
                     binario1 = (binario1 / 10).floor();
                      posicion1++;
                             }

                         while (binario2 != 0 ){
                           int digito = binario2 % 10;
                             decimal2 = decimal2 + digito * pow(2, posicion2).toInt();
                               binario2 = (binario2 / 10).floor();
                                 posicion2++;
                                   }  

            int sumadecimal = decimal1 + decimal2;

               if (sumadecimal == 0) {
                 binario = "0";
                   } else {
                     while (sumadecimal > 0) {
                       if (sumadecimal % 2 == 0) {
                         binario = "0" + binario;
                           } else {
                             binario = "1" + binario;
      }
                               sumadecimal = (sumadecimal / 2).floor();
    }
  }

                                 print("El resultado de la suma binaria es: $binario");
}
