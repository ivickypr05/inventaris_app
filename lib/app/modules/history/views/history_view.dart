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
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 280, top: 10, bottom: 10, left: 10),
              child: Container(
                child: Column(
                  children: [
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
              padding: const EdgeInsets.only(left: 20, bottom: 30),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                height: 30,
                width: 438,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cari"),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Pemasukan(),
                  Pengeluaran(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

