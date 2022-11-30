import 'package:flutter/material.dart';

class Pemasukan extends StatelessWidget {
  const Pemasukan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 7),
      height: 100,
      width: 375,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pemasukan",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 58, 52, 52),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 53,
                            width: 11,
                            decoration: BoxDecoration(
                                color:
                                    Color.fromARGB(255, 177, 212, 241),
                                borderRadius:
                                    BorderRadius.circular(10)),
                            child: const Text(
                              ".",
                              style: TextStyle(
                                  color: Color.fromARGB(
                                      255, 177, 212, 241)),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 3),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "11/11/2022",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 58, 52, 52),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 7,),
                              Text(
                                "Beng Beng",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 58, 52, 52),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 130),
            child: Container(
              child: Column(
                children: const [
                  Text(
                    "100",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 58, 52, 52),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Rp. 110.000,-",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 58, 52, 52),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
