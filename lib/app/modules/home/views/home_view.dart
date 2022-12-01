import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:inventaris_app/app/utils/widget/BottomNavbar.dart';

import '../../../utils/widget/History.dart';
import '../../../utils/widget/Item.dart';
import '../../../utils/widget/Saldo.dart';
import '../../../utils/widget/Stock.dart';
import '../../../utils/widget/TotalItem.dart';
import '../../../utils/widget/TransaksiTerakhir.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 242, 247, 1),
      bottomNavigationBar: BottomNavbar(),
      body: SingleChildScrollView(
        child: (SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 175, top: 10, bottom: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Welcome to F2V Inventory',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 2, left: 8),
                  child: Column(
                    children: const [
                      TotalItem(),
                      SizedBox(height: 5),
                      Stock(),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                const Center(
                  child: Saldo(),
                )
              ],
            ),
            const SizedBox(height: 30),
            const TransaksiTerakhir(),
            const SizedBox(height: 30),
            const Item(),
            const SizedBox(
              height: 10,
            ),
            const History()
          ],
        ))),
      ),
    );
  }
}