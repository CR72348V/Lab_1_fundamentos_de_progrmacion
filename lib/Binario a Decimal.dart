
import 'dart:io';

void binario(){

 print('Conversion de Binario a Decimal');

 stdout.write('Escribe un número Binario: ');
   String binario = stdin.readLineSync()!;
 
     int decimal = 0;
     int potencia = 0;

       for (int i = binario.length - 1; i >= 0; i--) {
         int bit = int.parse(binario[i]);
           decimal += bit * (1 << potencia);
             potencia++;
  }

               print("El numero Binario convertido a Decimal es: $decimal");
}

    


