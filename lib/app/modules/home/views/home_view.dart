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
      body: (SafeArea(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 90, top: 10 ,bottom: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hi Owner..",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Welcome to F2V Inventory (>.<)",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 2, left: 8),
                  child: Column(
                    children: [
                      TotalItem(),
                      SizedBox(height: 5),
                      Stock(),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Center(
                  child: Saldo(),
                )
              ],
            ),
            SizedBox(height: 30),
            TransaksiTerakhir(),
            SizedBox(height: 30),
            Item(),
            SizedBox(height: 10,),
            History()
          ],
        ),
      ))),
    );
  }
}

