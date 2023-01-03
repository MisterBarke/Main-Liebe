import 'package:flutter/material.dart';

class DriverMenuBar extends StatelessWidget {
  const DriverMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 1, 23, 41),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Admin Name'),
            accountEmail: Text('Phone Numer'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 1, 23, 41),
              child: ClipOval(
                child: Icon(
                  Icons.person_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 0, 64, 116),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 64, 116),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.message_rounded,
              color: Color.fromARGB(255, 0, 64, 116),
            ),
            title: const Text(
              "Envoyer un message d'urgence !",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 100),
                      height: 250,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 64, 116),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                            ),
                          ]),
                    );
                  });
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.car_repair,
              color: Color.fromARGB(255, 0, 64, 116),
            ),
            title: const Text(
              'Activer le mode panne',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 0, 64, 116),
            ),
            title: const Text(
              'Reglages',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 100),
                      height: 250,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 64, 116),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                            )
                          ]),
                    );
                  });
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app_outlined,
              color: Color.fromARGB(255, 0, 64, 116),
            ),
            title: const Text(
              'Deconnexion',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
