import 'package:flutter/material.dart';
import 'reset_password_screen.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Логотип
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                  width: 250,
                ),
                const SizedBox(height: 50),

                // Поле "Email"
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Color.fromRGBO(236, 236, 236, 1),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),

                // Поле "Password"
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Color.fromRGBO(236, 236, 236, 1),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),

                // Кнопка "Login" і "Reset password"
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // діалог при натисканні на логін
                          showDialog(
                            context: context,
                            builder: (BuildContext ctx) {
                              return const AlertDialog(
                                title: Text('Message'),
                                content: Text("Need to implement"),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          minimumSize: const Size(double.infinity, 48),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue[900]!),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Text(
                          'Reset password',
                          style: TextStyle(color: Colors.blue[700]),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Кнопка "Sign up"
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue[900]!),
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue[800]), // Синій колір з відтінком 700
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
