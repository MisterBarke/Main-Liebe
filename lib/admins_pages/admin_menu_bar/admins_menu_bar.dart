import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminMenuBar extends StatelessWidget {
  const AdminMenuBar({
    super.key,
  });

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
              Icons.arrow_upward_outlined,
              color: Color.fromARGB(255, 255, 98, 0),
            ),
            title: const Text(
              'Axes',
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
                          color: Color.fromARGB(255, 255, 98, 0),
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
              Icons.person_add,
              color: Color.fromARGB(255, 255, 98, 0),
            ),
            title: const Text(
              'Ajouter un chauffeur',
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
                          color: Color.fromARGB(255, 255, 98, 0),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Ajouter un chauffeur",
                              style: GoogleFonts.eczar(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Nom',
                                fillColor: Color.fromARGB(255, 255, 98, 0),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Numero de Telephone',
                                fillColor: Color.fromARGB(255, 255, 98, 0),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.black,
                                  shape: const StadiumBorder(),
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 98, 0),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Valider',
                                  style: GoogleFonts.eczar(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ]),
                    );
                  });
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
                          color: Color.fromARGB(255, 255, 98, 0),
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
                          color: Color.fromARGB(255, 255, 98, 0),
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
