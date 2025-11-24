
import 'dart:io';

void decimal(){
  
 print('Conversion de Decimal a Binario');
 
 stdout.write("Escribe un número decimal: ");
   int numero = int.parse(stdin.readLineSync()!);

     String binario = "";
       int n = numero;

         while (n > 0) {
           int residuo = n % 2;
             binario = residuo.toString() + binario;
               n ~/= 2;
  }
                print("El numero decimal convertido a binario es: $binario");
}