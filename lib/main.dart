import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';
import 'modules/splash/splash_view.dart';

void main() {
  runApp(const UrduNovelApp());
}

class UrduNovelApp extends StatelessWidget {
  const UrduNovelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Urdu Novel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NotoNastaliqUrdu',
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
    );
  }
}
