import 'package:flutter/material.dart';
import 'package:flutter_practice35_hw6/screens/usd_to_uzs_screen.dart';
import 'package:flutter_practice35_hw6/screens/uzs_to_usd_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UzsToUsdScreen(),
      routes: {
        UzsToUsdScreen.id: (context) => const UzsToUsdScreen(),
        UsdToUzsScreen.id: (context) => const UsdToUzsScreen(),
      },
    );
  }
}
