import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:web_login/forgot.dart';
// import 'package:web_login/signup.dart';

import 'forgot.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'Enter email'),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(hintText: 'Enter password'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (() => signIn()), child: Text("Login")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (() => Get.to(Signup())),
                child: Text("Register now")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (() => Get.to(Forgot())),
                child: Text("Forgot password ?"))
          ],
        ),
      ),
    );
  }
}
