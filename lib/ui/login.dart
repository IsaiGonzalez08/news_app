import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_logoAndName(), _txtName()],
      ),
    );
  }

  Widget _logoAndName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 7),
          child: Image.asset("assets/images/logo.png", width: 40, height: 40),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Live",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                height: 1.1,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFFA3A3A3),
                height: 0.9,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _txtName() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }
}
