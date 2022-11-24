import 'package:flutter/material.dart';
import 'package:instagram_clone/views/screens/home_page.dart';
import 'package:instagram_clone/views/widgets/input_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              // Logo
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png"),
              const SizedBox(
                height: 25,
              ),
              // Email Field
              InputTextField(
                hintText: "Email",
                controller: emailController,
                inputTextType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              // // Password Field
              InputTextField(
                hintText: "Password",
                controller: passwordController,
                isPass: true,
                inputTextType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 30,
              ),
              // Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
