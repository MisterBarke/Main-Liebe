import 'package:flutter/material.dart';

class AdminMenuBar extends StatelessWidget {
  const AdminMenuBar({
    super.key,
  });
  createDialogPage(BuildContext context) {
    TextEditingController myController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Name'),
            content: TextField(
              controller: myController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5,
                child: const Text('Valider'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 1, 23, 41),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Admin Name'),
            accountEmail: Text('Phone Number'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 1, 23, 41),
              child: ClipOval(
                child: Icon(
                  Icons.person_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 255, 98, 0),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 98, 0),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_add,
              color: Color.fromARGB(255, 255, 98, 0),
            ),
            title: const Text(
              'Ajouter un chauffeur',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              createDialogPage(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on_outlined,
              color: Color.fromARGB(255, 255, 98, 0),
            ),
            title: const Text(
              'Nouvelle destinatiom',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.help_outline,
              color: Color.fromARGB(255, 255, 98, 0),
            ),
            title: const Text(
              'Aide',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 255, 98, 0),
            ),
            title: const Text(
              'Reglages',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app_outlined,
              color: Color.fromARGB(255, 255, 98, 0),
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
