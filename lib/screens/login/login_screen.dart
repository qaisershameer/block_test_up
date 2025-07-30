import 'package:block_test/bloc/login/login_bloc.dart';
import 'package:block_test/bloc/login/login_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _userName;
  late final TextEditingController _password;

  @override
  void initState() {
    _userName = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userName.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // [AppBar]
      appBar: AppBar(title: Text('Login Information'), centerTitle: true),

      // [Padding]
      body: Padding(
        padding: EdgeInsets.all(24),

        // [Column]
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // [Email Field]
            TextFormField(
              controller: _userName,
              decoration: InputDecoration(labelText: 'User Name'),
            ),

            // Gap
            SizedBox(height: 16),

            // [Password Field]
            TextFormField(
              controller: _password,
              decoration: InputDecoration(labelText: 'Password'),
            ),

            // Gap
            SizedBox(height: 36),

            // Login Button
            ElevatedButton(
              onPressed: () {
                context.read<LoginBloc>().add(LoginUserEvent(userName: _userName.text, password: _password.text));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
