import 'package:currency_converter/pages/currency_converter_page.dart';
import 'package:currency_converter/pages/currency_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterPagee(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyCupertinoPage(),
    );
  }
}
