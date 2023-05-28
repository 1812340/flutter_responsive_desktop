import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kabab_king_desktop/screens/templete/sideBar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: screenWidth * 0.15,
            height: screenHeight,
            color: Colors.white,
            child: const SideBar(),
            
          ),
          Container(
            width: screenWidth * 0.85,
            height: screenHeight,
            color: const Color(0xffF5F5F5),
          ),
        ],
      ),
    );
  }
}