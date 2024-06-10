import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to Cafeteria Management System"),
              const SizedBox(height: 12,),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  labelText: "Email:"
                ),
              ),
              const SizedBox(height: 12,),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  labelText: "Password:"
                ),
              ),
              const SizedBox(height: 12,),
              TextButton.icon(
                onPressed: () {}, 
                icon: const Icon(Icons.login),
                label: const Text("Log In"),
              )
            ],
          ),
        ),
      ),
    );
  }
}