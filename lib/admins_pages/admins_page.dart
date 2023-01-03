import 'package:final_stm_project/admins_pages/admin_menu_bar/admins_menu_bar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminMenuBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 1, 23, 41),
      ),
      body: SingleChildScrollView(
          child: Container(
        color: const Color.fromARGB(255, 1, 23, 41),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 98, 0),
                hintText: 'Recherche',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search_outlined),
              ),
            ),
            const SizedBox(height: 15),
            const Infos(),
          ],
        ),
      )),
    );
  }
}

class Infos extends StatefulWidget {
  const Infos({super.key});

  @override
  State<Infos> createState() => _InfosState();
}

class _InfosState extends State<Infos> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "237, RN BF7656",
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXjL_lxNvIy9INJG-WTxUi8LjysSIB0cKsEE9MTWbhqppb_n-I0PR3jqaStXqZBLgVNvM&usqp=CAU",
      "Axe": "Niamey-Accra",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "247, RN BF7656",
      "Image":
          "data:image/jpeg;base64,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",
      "Axe": "Niamey-Zinder",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "239, RN BF7565",
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXjL_lxNvIy9INJG-WTxUi8LjysSIB0cKsEE9MTWbhqppb_n-I0PR3jqaStXqZBLgVNvM&usqp=CAU",
      "Axe": "Niamey-Lome",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "278, RN BF7656",
      "Image":
          "https://thumbs.dreamstime.com/b/homme-noir-souriant-au-pouvoir-220427321.jpg",
      "Axe": "Niamey-Lome",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "567, RN BF7656",
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXjL_lxNvIy9INJG-WTxUi8LjysSIB0cKsEE9MTWbhqppb_n-I0PR3jqaStXqZBLgVNvM&usqp=CAU",
      "Axe": "Doutchi-Dosso",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "473, RN BF1111",
      "Image":
          "https://media.istockphoto.com/id/1292475584/fr/photo/verticale-headshot-de-pose-biraciale-de-sourire-dhomme.jpg?b=1&s=612x612&w=0&k=20&c=OJ0RdHDCuQdxiok8u9FFOtmK6fSJcT7up_T6_4GtbeU=",
      "Axe": "Niamey-Lome",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "237, RN BF7656",
      "Image":
          "https://thumbs.dreamstime.com/b/homme-noir-souriant-au-pouvoir-220427321.jpg",
      "Axe": "Niamey-Maradi",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "237, RN BF7611",
      "Image":
          "https://thumbs.dreamstime.com/b/homme-noir-souriant-au-pouvoir-220427321.jpg",
      "Axe": "Niamey-Maradi",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "237, RN BF7656",
      "Image":
          "https://thumbs.dreamstime.com/b/homme-noir-souriant-au-pouvoir-220427321.jpg",
      "Axe": "Niamey-Maradi",
    },
    {
      "Nom": "Abdoul Latif Soumaila",
      "Bus": "237, RN BF7656",
      "Image":
          "https://thumbs.dreamstime.com/b/homme-noir-souriant-au-pouvoir-220427321.jpg",
      "Axe": "Niamey-Maradi",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 12,
          mainAxisExtent: 300),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: const Color.fromARGB(255, 255, 98, 0),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['Image']}",
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['Nom']}",
                      style: GoogleFonts.eczar(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "${gridMap.elementAt(index)['Bus']}",
                      style: GoogleFonts.eczar(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      )),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("${gridMap.elementAt(index)['Axe']}",
                        style: GoogleFonts.eczar(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ))),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.chat_bubble,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 00, 30, 10),
                                        height: 5500,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          color: const Color.fromARGB(
                                              255, 255, 98, 0),
                                        ),
                                        child: Column(children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight:
                                                  Radius.circular(16.0),
                                            ),
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
                                                      textStyle:
                                                          const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  )),
                                                ),
                                              ])),
                                        ]));
                                  });
                            },
                            icon: const Icon(
                              Icons.open_in_new,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
