import 'dart:math';

class BinarioParaDecimal {

 int converter(String binario) {
  int decimal = 0;
  int potencia = 0;
  for (int i = binario.length -1; i >= 0; i--) {
int digito = int.parse(binario[i]);
decimal += digito * pow(2, potencia).toInt();
potencia++;
  }

  return decimal;
 }
}


class HexadecimalParaDecimal {
  int hexadecimalParaDecimal(String hexadecimal) {
    int decimal = 0;
    int potencia = 0;

    for (int i = hexadecimal.length - 1; i >= 0; i--) {
      int digito;
      String caractere = hexadecimal[i].toUpperCase();

      if (caractere.codeUnitAt(0) >= '0'.codeUnitAt(0) && caractere.codeUnitAt(0) <= '9'.codeUnitAt(0)) {
        digito = int.parse(caractere);
      } else if (caractere.codeUnitAt(0) >= 'A'.codeUnitAt(0) && caractere.codeUnitAt(0) <= 'F'.codeUnitAt(0)) {
        digito = caractere.codeUnitAt(0) - 'A'.codeUnitAt(0) + 10;
      } else {
        throw FormatException("Caractere inválido em hexadecimal: $caractere");
      }

      decimal += digito * pow(16, potencia).toInt(); // Converter para int antes de somar
      potencia++;
    }

    return decimal;
  }
}

class OctalParaDecimal {

  int octalParaDecimal(String octal) {
int decimal = 0;
int potencia = 0;

for ( int i = octal.length -1; i >= 0; i--) {
  int digito = int.parse(octal[i]);
  decimal += digito * pow(8, potencia).toInt();
  potencia++;
}

return decimal;
  }
}