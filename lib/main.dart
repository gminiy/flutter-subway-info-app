import 'package:flutter/material.dart';
import 'package:flutter_subway_info_app/di/di_setup.dart';
import 'package:flutter_subway_info_app/router.dart';

void main() {
  diSetup();
  runApp(const SubwayInfoApp());
}

class SubwayInfoApp extends StatelessWidget {
  const SubwayInfoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: '지하철 정보',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}