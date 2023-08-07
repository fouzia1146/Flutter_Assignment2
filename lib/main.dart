import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController _controller = TextEditingController();

  void _onOperatorClicked(String operator) {
    _controller.text += operator;
  }

  void _onClearClicked() {
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: _controller,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildOperatorButton('+'),
              _buildOperatorButton('-'),
              _buildOperatorButton('*'),
              _buildOperatorButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildClearButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOperatorButton(String operator) {
    return ElevatedButton(
      onPressed: () => _onOperatorClicked(operator),
      child: Text(operator, style: TextStyle(fontSize: 24)),
    );
  }

  Widget _buildClearButton() {
    return ElevatedButton(
      onPressed: _onClearClicked,
      child: Text('Clear', style: TextStyle(fontSize: 24)),
    );
  }
}
