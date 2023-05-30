import 'dart:developer';

import 'package:firstpractice/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  label: Text("Email"),
                ),
        
                validator: (value) {
                  if(value!.isEmpty){
                    return "Enter Email";
                  }else{
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
                  if(value!.isEmpty){
                    return "Enter Password";
                  }else{
                    return null;
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if(_key.currentState!.validate()) {
                    log(emailController.text);
                    log(passwordController.text);
                  }
                },
                child: const Text("login"),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routers.signupScreen);
                  },
                  child: Text("Register")),
            ],
          ),
        ),
      ),
    );
  }
}
