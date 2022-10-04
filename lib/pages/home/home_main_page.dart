import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawaracaleg/config/app_colors.dart';
import 'package:jawaracaleg/controllers/home_controller.dart';

import '../account_page.dart';
import 'home_page.dart';

class HomeMainPage extends StatelessWidget {
  
  HomeController homeC = HomeController();

  HomeMainPage({super.key});


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Obx(() => IndexedStack(
            index: homeC.tabIndex.value,
            children: const [
              HomePage(),
              AccountPage(),
            ],
          )
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(
              highlightElevation: 0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              onPressed: () {
                Get.bottomSheet( 
                  Container(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Pendukung"),
                            trailing: Icon(Icons.people),
                            onTap: (){
                              Get.toNamed('/pendukung');
                            },
                          ),
                          ListTile(title: Text("Option 2"),
                            trailing: Icon(Icons.ac_unit),),
                          ListTile(title: Text("Option 3"),
                            trailing: Icon(Icons.present_to_all_sharp),),
                          ListTile(title: Text("Option 4"),
                            trailing: Icon(Icons.keyboard),),
                        ],
                      ),
                    ),
                  ),
                  backgroundColor: Colors.white,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enableDrag: true,
                );
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: const Alignment(0.7, -0.5),
                    end: const Alignment(0.6, 0.5),
                    colors: [
                      Color(0xFF53a78c),
                      Color(0xFF70d88b),
                    ],
                  ),
                ),
                child: Icon(Icons.photo_camera, size: 30),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation : FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Obx(() => BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: AppColors.mainColor,
            onTap: homeC.changeTabIndex,
            currentIndex: homeC.tabIndex.value,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Beranda',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Akun',
              ),
            ],
        )),
      );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}