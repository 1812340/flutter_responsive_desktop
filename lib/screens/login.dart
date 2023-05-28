import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController? _userNameController;
  TextEditingController? _passwordController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _userNameController!.dispose();
    _passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Row(children: [
      Container(
        color: const Color(0xffBC1C23),
        width: screenWidth * 0.5,
        height: screenHeight,
      ),
      Container(
          width: screenWidth * 0.5,
          height: screenHeight,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.10),
            child: _adminLogin(),
          ))
    ]));
  }

  _adminLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Admin Login",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10.sp)),
        const SizedBox(
          height: 73,
        ),
        TextField(
          controller: _userNameController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
              hintText: "Username"),
        ),
        const SizedBox(
          height: 34,
        ),
        TextField(
          obscureText: true,
          controller: _passwordController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              hintText: "password"),
        ),
        const SizedBox(
          height: 73,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffBC1C23),
          ),
          child: const Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("Login"),
          )),
        )
      ],
    );
  }
}
