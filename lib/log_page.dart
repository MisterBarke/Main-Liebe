import 'package:flutter/material.dart';

class LogPages extends StatelessWidget {
  final Color backgroundColor;

  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  final Color textColor;
  final Color iconColor;

  const LogPages({
    super.key,
    required this.backgroundColor,
    required this.onPressed,
    required this.textColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 23, 41),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel_rounded),
          color: iconColor,
          iconSize: 30,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'HELLO THERE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                Icons.person_rounded,
                size: 100,
                color: iconColor,
              ),
            ]),
            Container(
                padding: const EdgeInsets.all(35),
                child: Column(
                  children: [
                    const LogForm(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(17),
                        backgroundColor: backgroundColor,
                      ),
                      onPressed: onPressed,
                      child: const Text(
                        'Connexion',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class LogForm extends StatefulWidget {
  const LogForm({super.key});

  @override
  State<LogForm> createState() => _LogFormState();
}

class _LogFormState extends State<LogForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Telephone',
          labelStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
