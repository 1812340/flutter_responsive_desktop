import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: screenHeight * 0.10,
          color: Colors.red,
          child: Center(child: Text("LOGO")),
        ),
        Container(
          width: screenWidth,
          height: screenHeight * 0.80,
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
            child: _bodyData(screenWidth),
          ),
        ),
        Container(
          height: screenHeight * 0.10,
          color: Colors.red,
          child: Text("Logout"),
        )
      ],
    );
  }

  _bodyData(screenWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 30.h,
        ),
        button(screenWidth, "Dashboard", Icons.abc),
        button(screenWidth, "Report", Icons.abc),
        button(screenWidth, "Order", Icons.abc),
        button(screenWidth, "Food Listing", Icons.abc),
        button(screenWidth, "Driver", Icons.abc),
        button(screenWidth, "Setting", Icons.abc),
        const Spacer()
      ],
    );
  }

  Container button(screenWidth, title, icon) {
    return Container(
        width: screenWidth,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: Colors.red,
          ),
        ),
        // color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon),
            Text(title),
          ],
        ));
  }
}
