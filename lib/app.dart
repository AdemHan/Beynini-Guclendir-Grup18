import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lithabit/screens/screens_wrapper.dart';
import 'package:lithabit/themes/app_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _startDelayTimer();
  }

  void _startDelayTimer() {
    Timer(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeyniniGüçlendir',
      theme: customTheme,
      home: Scaffold(
        resizeToAvoidBottomInset:
            false, // Klavye açıldığında ekran boyutunu değiştirmeyi devre dışı bırak
        backgroundColor:
            Colors.pink[200], // Arka plan rengini pink[200] olarak ayarla
        body: _isLoading ? _buildLoadingScreen() : const ScreensWrapper(),
      ),
    );
  }

  Widget _buildLoadingScreen() {
    return Center(
      child: Image.asset(
        'assets/beyniniGuclendirOpening.gif',
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
