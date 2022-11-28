import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
        child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Color.fromARGB(255, 0, 0, 0),
            tabBackgroundColor: Color.fromARGB(255, 226, 222, 222),
            gap: 6,
            
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
                onPressed: ()
                {
                  print("Hallo");
                }
                ,
              ),
              GButton(
                icon: Icons.view_in_ar,
                text: "Items",
              ),
              GButton(
                icon: Icons.history,
                text: "Riwayat",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              )
            ]),
      ),
    );
  }
}
