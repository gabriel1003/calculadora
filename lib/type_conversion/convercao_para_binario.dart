import 'dart:math';

class DecimalParaBinario {

  String decimalParaBinario(int decimal) {
    String binario = "";
if (decimal == 0) {
binario = "0";
} else {
  while (decimal > 0) {
    int resto = decimal % 2;
binario = resto.toString() +binario;
    decimal = (decimal / 2).floor();
  }
}
return binario;
  }
}

class HexadecimalParaBinario {
String hexadecimalParaBinario(String hex) {
  String binario = "";
  for (int i = 0; i < hex.length; i++) {
    switch (hex[i]) {
      case '0':
        binario += "0000";
        break;
      case '1':
        binario += "0001";
        break;
      case '2':
        binario += "0010";
        break;
      case '3':
        binario += "0011";
        break;
      case '4':
        binario += "0100";
        break;
      case '5':
       binario += "0101";
        break;
      case '6':
        binario += "0110";
        break;
      case '7':
        binario += "0111";
        break;
      case '8':
        binario += "1000";
        break;
      case '9':
        binario += "1001";
        break;
      case 'A':
      case 'a':
        binario += "1010";
        break;
      case 'B':
      case 'b':
        binario += "1011";
        break;
      case 'C':
      case 'c':
        binario += "1100";
        break;
      case 'D':
      case 'd':
        binario += "1101";
        break;
      case 'E':
      case 'e':
        binario += "1110";
        break;
      case 'F':
      case 'f':
        binario += "1111";
        break;
      default:
        return "Entrada inválida!";
    }
  }
  return binario;
}
}

class OctalToBinary {

  String octalToBinary(String octal) {
    String binary = "";
    int potencia = 0;
    int decimal = 0;

    // Converter octal para decimal
    for (int i = octal.length - 1; i >= 0; i--) {
      int digito = int.parse(octal[i]);
      decimal += digito * pow(8, potencia).toInt();
      potencia++;
    }

    // Converter decimal para binário
    while (decimal > 0) {
      binary = (decimal % 2).toString() + binary;
      decimal = decimal ~/ 2;
    }

    return binary.isEmpty ? "0" : binary;
  }
}