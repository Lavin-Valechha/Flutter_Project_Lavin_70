import 'package:flutter/material.dart';

class n_search extends StatefulWidget {
  const n_search({super.key});

  @override
  State<n_search> createState() => _n_searchState();
}

class _n_searchState extends State<n_search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
            ),
          ),
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: Column(
          children: [
            Card(
              shadowColor: Colors.black,
              elevation: 10,
              child: Container(
                color: const Color.fromARGB(255, 194, 63, 53),
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      decoration: const BoxDecoration(
                          border: Border(
                        right: BorderSide(
                          //                   <--- right side
                          color: Colors.black,
                          width: 3.0,
                        ),
                      )),
                      child: Image.network(
                          "https://i.pinimg.com/736x/23/ea/0c/23ea0c17068f4e290bada3457c5fef0b.jpg",
                          height: 700,
                          width: 80),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      margin: const EdgeInsets.fromLTRB(0, 20, 90, 0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Apple",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          Text("Visit profile",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                      child: const Icon(Icons.email),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
