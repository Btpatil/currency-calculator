import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();

    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white12,
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 1),
      appBar: AppBar(
        title: const Text("Currency Converter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Enter amount in USD",
                  hintStyle: TextStyle(color: Colors.white60),
                  prefixIcon: Icon(
                    Icons.monetization_on_rounded,
                    color: Colors.white60,
                  ),
                  filled: true,
                  fillColor: Colors.white24,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 80;
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 83, 132, 180),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrencyConverterPagee extends StatefulWidget {
  const CurrencyConverterPagee({super.key});

  @override
  State<CurrencyConverterPagee> createState() {
    return _CurrencyConverterState();
  }
}

class _CurrencyConverterState extends State<CurrencyConverterPagee> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white12,
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 1),
      appBar: AppBar(
        title: const Text("Currency Converter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result == 0 ? result.toStringAsFixed(0) : result.toStringAsFixed(2)}",
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Enter amount in USD",
                  hintStyle: TextStyle(color: Colors.white60),
                  prefixIcon: Icon(
                    Icons.monetization_on_rounded,
                    color: Colors.white60,
                  ),
                  filled: true,
                  fillColor: Colors.white24,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 80;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 83, 132, 180),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
