import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inventaris_app/app/utils/widget/pengeluaran.dart';

import '../../../utils/widget/BottomNavbar.dart';
import '../../../utils/widget/pemasukan.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 242, 247, 1),
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 280, top: 10, bottom: 15, left: 50),
              child: Container(
                child: Column(
                  children: const [
                    Text(
                      "Riwayat Transaksi",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, bottom: 30),
              child: Container(
                padding: EdgeInsets.only(left: 5, top: 8, bottom: 5),
                height: 30,
                width: 395,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search,
                      size: 17,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text("Search.."),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    Pemasukan(),
                    SizedBox(height: 10),
                    Pengeluaran(),
                    SizedBox(height: 10),
                    Pemasukan(),
                    SizedBox(height: 10),
                    Pengeluaran(),
                    SizedBox(height: 10),
                    Pemasukan(),
                    SizedBox(height: 10),
                    Pengeluaran(),
                    SizedBox(height: 10),
                    Pemasukan(),
                    SizedBox(height: 10),
                    Pengeluaran(),
                    SizedBox(height: 10),
                    Pemasukan(),
                    SizedBox(height: 10),
                    Pengeluaran(),
                    SizedBox(height: 10),
                    Pemasukan(),
                    SizedBox(height: 10),
                    Pengeluaran(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
