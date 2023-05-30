import 'dart:developer';

import 'package:firstpractice/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Name"),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "InputName";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text("Email"),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "InputEmail";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    label: Text("Password"),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "InputPassword";
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      log(nameController.text);
                      log(emailController.text);
                    }
                  },
                  child: const Text("Register"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routers.login);
                  },
                  child: const Text("Back"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
