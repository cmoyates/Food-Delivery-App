import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery_app/authentication_service.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool passwordVisible = true;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = "";
  bool isLoading = false;

  tryLogin() async {
    if (!_key.currentState!.validate()) {
      setState(() => errorMessage = "");
      return;
    }
    setState(() {
      isLoading = true;
      errorMessage = "";
    });
    String? response = await context.read<AuthenticationService>().signIn(
      email: widget.emailController.text.trim(),
      password: widget.passwordController.text.trim()
    );
    if (response != null) {
      setState(() {
        isLoading = false;
        errorMessage = response;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          TextFormField(
            validator: validateEmail,
            controller: widget.emailController,
            decoration: const InputDecoration(
              hintText: "Email",
              icon: Icon(Icons.person_rounded),
            ),
          ),
          TextFormField(
            obscuringCharacter: '●',
            validator: validatePassword,
            obscureText: passwordVisible,
            controller: widget.passwordController,
            decoration: InputDecoration(
              hintText: "Password",
              icon: const Icon(Icons.lock_rounded),
              suffixIcon: Ink(
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: InkWell(
                  onTap: () =>
                      setState(() => passwordVisible = !passwordVisible),
                  customBorder: const CircleBorder(),
                  child: Icon(passwordVisible
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_rounded),
                ),
              )
            ),
          ),
          ElevatedButton(
            onPressed: () => tryLogin(),
            child: isLoading ? CircularProgressIndicator(
              color: Colors.white,
              
            ) : const Text("Sign In")
          ),
          Text(errorMessage)
        ],
      ),
    );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return "Email address is required";
  }

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) {
    return "Email is not valid";
  }

  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return "Password is required";
  }
  return null;
}