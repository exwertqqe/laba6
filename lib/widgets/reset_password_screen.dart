import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const SizedBox(height: 40),

                // Поле для введення логіна або електронної пошти
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Username or Email',
                    filled: true,
                    fillColor: Color.fromRGBO(236, 236, 236, 1),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24.0),

                // Кнопка для запуску процедури відновлення паролю
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
                      backgroundColor: Colors.blue[900], // Колір фону
                      padding: const EdgeInsets.symmetric(vertical: 16), // Вертикальний padding
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // квадратна
                      ),
                    ),
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),

                // Кнопка для повернення на екран авторизації
                OutlinedButton(
                  onPressed: () => {
                    Navigator.pop(context),
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue[900]!),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    minimumSize: const Size(double.infinity, 48),
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
