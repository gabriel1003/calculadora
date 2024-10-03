import 'dart:math';

class DecimalParaHexadecimal {
  String decimalParaHexadecimal(int decimal) {
    if (decimal == 0) return "0";

    String hexadecimal = "";
    const chars = "0123456789ABCDEF"; 
    while (decimal > 0) {
      hexadecimal = chars[decimal % 16] + hexadecimal;
      decimal ~/= 16;
    }
    return hexadecimal;
  }
}

class BinaryToHexadecimal {
  String binaryToHex(String binary) {
    binary = binary.padLeft((binary.length + 3) & ~3, '0'); // Completa com zeros de forma eficiente

    String hex = "";
    for (int i = 0; i < binary.length; i += 4) {
      int nibble = int.parse(binary.substring(i, i + 4), radix: 2);
      hex += nibble.toRadixString(16).toUpperCase();
    }
    return hex;
  }
}



class OctalToHex {

  String octalToHex(String octal) {
    String hex = "";
    int potencia = 0;
    int decimal = 0;

    // Converter octal para decimal
    for (int i = octal.length - 1; i >= 0; i--) {
      int digito = int.parse(octal[i]);
      decimal += digito * pow(8, potencia).toInt();
      potencia++;
    }

    // Converter decimal para hexadecimal
    while (decimal > 0) {
      int resto = decimal % 16;
      if (resto < 10) {
        hex = resto.toString() + hex;
      } else {
        hex = String.fromCharCode(resto + 55) + hex; // A = 65, B = 66, ...
      }
      decimal = decimal ~/ 16;
    }

    return hex.isEmpty ? "0" : hex;
  }
}