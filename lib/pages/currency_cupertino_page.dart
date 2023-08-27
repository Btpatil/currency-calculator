import 'package:flutter/cupertino.dart';

class CurrencyCupertinoPage extends StatefulWidget {
  const CurrencyCupertinoPage({super.key});

  @override
  State<CurrencyCupertinoPage> createState() => _CurrencyCupertinoPageState();
}

class _CurrencyCupertinoPageState extends State<CurrencyCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Currency Converter"),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result == 0 ? result.toStringAsFixed(0) : result.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.white,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                placeholder: "Please enter an amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 80;
                  });
                },
                color: const Color.fromARGB(255, 72, 106, 168),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
