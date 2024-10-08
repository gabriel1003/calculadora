import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'memory.dart';

class Calculator extends StatefulWidget {
@override
_CalculatorState createState() => _CalculatorState();
  }

  class _CalculatorState extends State<Calculator> {
    final _memory = Memory();

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Calculadora'),
      ),
      body: Column(
        children: <Widget>[
          _buildDisplay(),
          Divider(height: 0.1),
          _buildKeyboard(),
        ],
      ),
    );
  }

  Widget _buildDisplay() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                _memory.result,
                minFontSize: 20.0,
                maxFontSize: 80.0,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none,
                  fontSize: 80.0,
                  color: Colors.white,
                ),
              ),
              ),
          ],
        ),
      ),
      );
  }

  Widget _buildKeyboardButton(String label,
{int flex = 1, Color textColor = Colors.white, Color backgroundColor = Colors.black}) {
  return Expanded(child: );
}
  }