import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_crypto/src/crypto/di.dart';
import 'package:test_crypto/src/crypto/ui/views/home_view.dart';

void main() {
  CryptoDI.initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
