import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/views/widgets/input_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _biocontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              // Logo
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
                width: 250,
                color: Colors.white60,
              ),
              const SizedBox(
                height: 25,
              ),
              // Circle Avatar
              Stack(
                // alignment: Alignment.center,
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 40,
                    child: IconButton(
                      onPressed: () {},
                      // If image selected dont show add icon
                      icon: const Icon(CupertinoIcons.add),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // Username
              InputTextField(
                hintText: "Username",
                controller: _usernamecontroller,
                inputTextType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              // Email
              InputTextField(
                hintText: "Email",
                controller: _emailcontroller,
                inputTextType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),

              // Bio
              InputTextField(
                hintText: "Bio",
                controller: _biocontroller,
                inputTextType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              // Password
              InputTextField(
                hintText: "Password",
                controller: _passwordcontroller,
                inputTextType: TextInputType.text,
                isPass: true,
              ),
              const SizedBox(
                height: 15,
              ),
              // Button
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text("Sign Up"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              const Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: const Text(
                      "Already have an account?",
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
