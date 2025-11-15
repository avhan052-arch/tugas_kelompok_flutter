import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String userInput = "";
  String result = "0";
  String operand = "";
  double num1 = 0;
  double num2 = 0;

  // Daftar tombol kalkulator
  final List<String> buttons = [
    'C','⌫','÷','×','7','8','9','-','4','5','6','+','1','2','3','=','0','.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1d2630),
      appBar: AppBar(
        title: const Text('Kalkulator Flutter'),
        backgroundColor: const Color(0xFF1d2630),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // User Melakukan Input
                  Text(
                    userInput.isEmpty ? "0" : userInput,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Keluaran
                  Text(
                    result,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Tombol-Tombol Kalkulator
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  if (index == 16) {
                    return GestureDetector(
                      onTap: () => _onButtonPressed(buttons[index]),
                      child: Container(
                        decoration: BoxDecoration(
                          color: _getButtonColor(buttons[index]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            buttons[index],
                            style: TextStyle(
                              color: _getButtonTextColor(buttons[index]),
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  if (index == 15) {
                    return GridTile(
                      child: GestureDetector(
                        onTap: () => _onButtonPressed(buttons[index]),
                        child: Container(
                          decoration: BoxDecoration(
                            color: _getButtonColor(buttons[index]),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              buttons[index],
                              style: TextStyle(
                                color: _getButtonTextColor(buttons[index]),
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  return GestureDetector(
                    onTap: () => _onButtonPressed(buttons[index]),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _getButtonColor(buttons[index]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          buttons[index],
                          style: TextStyle(
                            color: _getButtonTextColor(buttons[index]),
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
  Color _getButtonColor(String button) {
    if (button == 'C' || button == '⌫') {
      return const Color(0xFF6c7a89); 
    } else if (button == '+' || button == '-' || button == '×' || button == '÷') {
      return const Color(0xFFf39c12); 
    } else if (button == '=') {
      return const Color(0xFF27ae60); 
    } else {
      return const Color(0xFF4e5f74); 
    }
  }


  Color _getButtonTextColor(String button) {
    return Colors.white;
  }

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        // Clear semua
        userInput = "";
        result = "0";
        num1 = 0;
        num2 = 0;
        operand = "";
      } else if (buttonText == '⌫') {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
          if (userInput.isEmpty) {
            result = "0";
          }
        }
      } else if (buttonText == '+' || buttonText == '-' || buttonText == '×' || buttonText == '÷') {

        if (userInput.isNotEmpty) {
          num1 = double.parse(userInput);
          operand = buttonText;
          result = userInput;
          userInput = userInput + " " + buttonText + " ";
        }
      } else if (buttonText == '=') {

        if (userInput.isNotEmpty && operand.isNotEmpty) {

          List<String> parts = userInput.split(' ');
          if (parts.length >= 3) {
            num2 = double.parse(parts[2]);
            _calculate();
          }
        }
      } else {
        if (buttonText == '.') {
          List<String> parts = userInput.split(' ');
          String currentNumber = parts.isNotEmpty ? parts.last : '';
          if (currentNumber.contains('.')) {
            return;
          }
        }
        
        userInput += buttonText;
        if (operand.isEmpty) {
          result = userInput;
        }
      }
    });
  }
  void _calculate() {
    double calculatedResult = 0;

    switch (operand) {
      case '+':
        calculatedResult = num1 + num2;
        break;
      case '-':
        calculatedResult = num1 - num2;
        break;
      case '×':
        calculatedResult = num1 * num2;
        break;
      case '÷':
        if (num2 == 0) {
          result = "Error";
          userInput = "";
          operand = "";
          return;
        }
        calculatedResult = num1 / num2;
        break;
      default:
        return;
    }
    if (calculatedResult == calculatedResult.toInt()) {
      result = calculatedResult.toInt().toString();
    } else {
      result = calculatedResult.toStringAsFixed(8);
      result = result.replaceAll(RegExp(r'0*$'), '');
      result = result.replaceAll(RegExp(r'\.$'), '');
    }
    userInput = result;
    operand = "";
    num1 = 0;
    num2 = 0;
  }
}