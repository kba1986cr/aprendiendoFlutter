import 'dart:io';

import 'package:dart_basic/dart_basic.dart' as dart_basic;

void main(List<String> arguments) {
  /*

Ejercicio 1:  Calculadora de edad

Programa dart que pidad al usuario su año de nacimiento y calcule la edad.

1- Pida el año de nacimiento (Leerlo como String).
2- Convertir el año a entero.
3- Calcule la edad restando el año de nacimiento al año actual.
4- Mostrar el resultado con un mensaje: "Tienes X años."



  print("Introduce tu año de nacimiento: ");
  String date = stdin.readLineSync()!;
  const int dateActual = 2025;
  int dateToInt = int.parse(date);
  //int dateNew = DateTime.now().year - dateToInt;   //Esta funcion DateTime.now().year pone el año actual
  int dateNew = dateActual - dateToInt;
  // print("Tienes $dateNew años.");
*/
  /*

Ejercicio 2:  Calculadora de Propina

Programa dart que calcule cuanto debe pagar cada persona despues
de dividir la cuenta y agregar la propina.

1-  Pedir al usuario el total de la cuenta.
2-  Pedir el porcentaje de propina a agregar.
3-  Calcular el total sumando la propina.
4-  Pedir el nuero de personas para dividir la cuenta.
5-  Calcular cuanto debe de pagar cada una.
6-  Mostrar el resultado en pantalla.



  double total = 100.0;
  double propina = 10.0;
  int personas = 4;

  double totalConPropina = total + (total * propina / 100);
  double totalPorPersona = totalConPropina / personas;

  //print("El total a pagar por persona es: $totalPorPersona");
*/
  int userAge = 22;

  if (userAge >= 18) {
    print("Eres mayor de edad");
  } else {
    print("Eres menor de edad");
  }

  (userAge >= 18)
      ? print("Eres mayor de edad")
      : print("Eres menor de edad"); // Operador ternario

  int experienceYears = 5;

  if
}
