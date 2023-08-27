import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'login_view_model.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: usernameController,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              ElevatedButton(
                child: Text('Sign In'),
                onPressed: () async {
                  final viewModel = Provider.of<LoginViewModel>(context, listen: false);
                  ApiResponseStatus status = await viewModel.login(
                    usernameController.text,
                    passwordController.text,
                  );

                  if (status == ApiResponseStatus.success) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  } else {
                    print('Login failed');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum ApiResponseStatus {
  success,
  error,
}