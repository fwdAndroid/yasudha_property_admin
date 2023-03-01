import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yasudha_property_admin/main/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/splash.png"),
          Container(
            margin: EdgeInsets.only(top: 30, left: 10),
            child: Text(
              "Admin Login",
              style: TextStyle(
                  color: Color(
                    0xff1F4C6B,
                  ),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              color: Color(0xffF5F4F8),
              margin: EdgeInsets.only(left: 10, right: 10, top: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xffF5F4F8),
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email)),
              )),
          Container(
              color: Color(0xffF5F4F8),
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xffF5F4F8),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password)),
              )),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => MainScreen()));
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Color(0xff8BC83F),
                    fixedSize: Size(300, 55)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
