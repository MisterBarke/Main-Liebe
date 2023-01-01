import 'package:final_stm_project/admins_pages/admins_page.dart';
import 'package:final_stm_project/drivers_pages/drivers_page.dart';
import 'package:final_stm_project/log_page.dart';
import 'package:flutter/material.dart';

class AdminLogPage extends StatelessWidget {
  const AdminLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LogPages(
      backgroundColor: const Color.fromARGB(255, 255, 98, 0),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AdminPage()));
      },
      textColor: const Color.fromARGB(255, 255, 98, 0),
      iconColor: const Color.fromARGB(255, 255, 98, 0),
    );
  }
}

class DriverLogPage extends StatelessWidget {
  const DriverLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LogPages(
      backgroundColor: const Color.fromARGB(255, 0, 64, 116),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DriversPage()));
      },
      textColor: const Color.fromARGB(255, 0, 64, 116),
      iconColor: const Color.fromARGB(255, 0, 64, 116),
    );
  }
}
