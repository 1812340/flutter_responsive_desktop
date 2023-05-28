import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kabab_king_desktop/screens/templete/template.dart';
import 'package:kabab_king_desktop/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(

      builder: (context,child) {
        return MaterialApp(
          title: 'Flutter Demo',
debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: const Login(),
          home: const Dashboard(),
        );
      }
    );
  }
}
