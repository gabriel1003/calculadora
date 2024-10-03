import 'dart:math';

class DecimalParaOctal {

  String decimalParaOctal(int decimal) {
    String octal = "";
    if (decimal == 0) {
      octal = "0";
    } else {
      while (decimal > 0) {
        int resto = decimal % 8;
        octal = resto.toString() + octal;
        decimal ~/= 8;
      }
    }
    return octal;
  }
}


class BinaryToOctal {

  String binaryToOctal(String binary) {
    String octal = "";
    int decimal = 0;
    int potencia = 0;
  
    for (int i = binary.length - 1; i >= 0; i--) {
      if (binary[i] == '1') {
        decimal += pow(2, potencia).toInt();
      }
      potencia++;
    }

    
    while (decimal > 0) {
      octal = (decimal % 8).toString() + octal;
      decimal = decimal ~/ 8;
    }

    return octal.isEmpty ? "0" : octal;
  }
}

class HexadecimalToOctal {

  String hexadecimalToOctal(String hexadecimal) {
    String octal = "";
    int decimal = 0;
    int potencia = 0;

    // Converter hexadecimal para decimal
    for (int i = hexadecimal.length - 1; i >= 0; i--) {
      String caractere = hexadecimal[i].toUpperCase();
      int digito;

      if (caractere.codeUnitAt(0) >= '0'.codeUnitAt(0) && caractere.codeUnitAt(0) <= '9'.codeUnitAt(0)) {
        digito = int.parse(caractere);
      } else if (caractere.codeUnitAt(0) >= 'A'.codeUnitAt(0) && caractere.codeUnitAt(0) <= 'F'.codeUnitAt(0)) {
        digito = caractere.codeUnitAt(0) - 'A'.codeUnitAt(0) + 10;
      } else {
        throw FormatException("Caractere inválido em hexadecimal: $caractere");
      }

      decimal += digito * pow(16, potencia).toInt();
      potencia++;
    }

    // Converter decimal para octal
    while (decimal > 0) {
      octal = (decimal % 8).toString() + octal;
      decimal = decimal ~/ 8;
    }

    return octal.isEmpty ? "0" : octal;
  }
}
  