import 'package:flutter/material.dart';
import 'package:moneymanager/Screens/Home_Screen.dart';
import 'package:moneymanager/Screens/Profile_Screen.dart';
import 'package:moneymanager/Utils/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var CurrentIndex=0;
  Widget buildTabConent(int index){
    switch(index){
      case 0:
        return const HomeScreen();
      case 1:
        return Container();
      case 2: return Container();
      case 3: return const ProfileScreen();
      default: return const HomeScreen();
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildTabConent(CurrentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (index){
          CurrentIndex=index;
          setState(() {

          });
          },
        selectedItemColor: secondaryDark,
        unselectedItemColor: fontLight,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_chart),label: "Stat"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet),label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],


      ),
    );
  }
}
