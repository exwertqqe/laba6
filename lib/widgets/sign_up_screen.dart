import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Логотип
                Center(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                    width: 250,
                  ),
                ),
                const SizedBox(height: 50),

                // Поля для введення
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    filled: true,
                    fillColor: Color.fromRGBO(236, 236, 236, 1),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),


                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    filled: true,
                    fillColor: Color.fromRGBO(236, 236, 236, 1),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),

                // Поле для введення пароля
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Color.fromRGBO(236, 236, 236, 1),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),

                // Кнопка "Sign Up"
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () => {
                      showDialog(
                        context: context,
                        builder: (BuildContext ctx) {
                          return const AlertDialog(
                            title: Text('Message'),
                            content: Text("Need to implement"),
                          );
                        },
                      ),
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900], // Синій колір фону
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Кнопка "Back to Sign In"
                OutlinedButton(
                  onPressed: () => {
                    Navigator.pop(context),
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue[900]!),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    minimumSize: const Size(double.infinity, 60),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    "Back to Sign In",
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
