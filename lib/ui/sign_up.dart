import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _logo(),
          Container(
            margin: EdgeInsets.only(top: 42.0),
            child: Row(
              children: [
                Expanded(child: _txtName()),
                Expanded(child: _txtLastName()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 7),
          child: Image.asset("assets/images/logo.png", width: 40),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Live",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                height: 1.3,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xffA3A3A3),
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
      margin: EdgeInsets.only(right: 10),
      child: SizedBox(
        width: double.infinity,
        height: 45.0,
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            labelText: "Nombre",
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
        ),
      ),
    );
  }

  Widget _txtLastName() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: SizedBox(
        width: double.infinity,
        height: 45.0,
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            labelText: "Apellido",
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
        ),
      ),
    );
  }
}
