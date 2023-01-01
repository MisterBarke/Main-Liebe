import 'package:final_stm_project/drivers_pages/drivers_menu_bar.dart/drivers_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DriversPage extends StatefulWidget {
  const DriversPage({super.key});

  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "237, RN BF7656",
      "Image":
          "https://thumbs.dreamstime.com/b/homme-noir-souriant-au-pouvoir-220427321.jpg",
      "Axe": "Niamey-Accra",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 1, 23, 41),
      ),
      backgroundColor: const Color.fromARGB(255, 1, 23, 41),
      drawer: const DriverMenuBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 600,
                ),
                itemCount: gridMap.length,
                itemBuilder: (_, index) {
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromARGB(255, 0, 64, 116),
                      ),
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                          child: Image.network(
                            "${gridMap.elementAt(index)['Image']}",
                            height: 250,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(children: [
                              Text(
                                "${gridMap.elementAt(index)['Nom']}",
                                style: GoogleFonts.eczar(
                                    textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                              ),
                            ])),
                      ]));
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 0, 64, 116),
            onPressed: () {},
            child: const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
