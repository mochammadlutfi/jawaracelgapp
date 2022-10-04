import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jawaracaleg/config/app_colors.dart';
import 'package:jawaracaleg/config/app_config.dart';
import 'package:jawaracaleg/widgets/block_widget.dart';
import '../../../controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
      ),
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(
                data: {
                  'pendukung' : 125000,
                  'relawan' : 1200,
                  'dpt' : 450000,
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  final Map data;
  const TopSection({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: AppColors.bgColor,
          padding: const EdgeInsets.all(AppConfig.dPadding),
          alignment: Alignment.topCenter,
          height: 280,
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 150,
          padding: const EdgeInsets.all(AppConfig.dPadding),
          decoration: const BoxDecoration(
              color: AppColors.mainColor
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(2.3),
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const CircleAvatar(
                      maxRadius: 35.0,
                      backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907_960_720.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 21),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Text("Joan Mzuri",
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20
                            ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Calon DPRD Kota/Kabupaten",
                          style: TextStyle(
                            color: AppColors.whiteColor
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Kota Cimahi 4",
                          style: TextStyle(
                            color: AppColors.whiteColor
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                children: [
                  BlockWidget(
                    onTap: (){

                    }, 
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 14,left: 14),
                    borderRadius:10,
                    height: 75,
                    width: width / 2 - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pendukung",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: (width/100)*3.5
                              ),
                            ),
                            Text(
                              "12341231",
                              style: AppConfig().dashboardBoxNumber(context),
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                  BlockWidget(
                    onTap: (){

                    }, 
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 14,left: 14),
                    borderRadius:10,
                    height: 75,
                    width: width / 2 - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Relawan",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: (width/100)*3.5
                              ),
                            ),
                            Text(
                              "12341231",
                              style: AppConfig().dashboardBoxNumber(context),
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),
              Row(
                children: [
                  BlockWidget(
                    onTap: (){

                    }, 
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 14,left: 14),
                    borderRadius:10,
                    height: 75,
                    width: width / 2 - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Target Suara",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: (width/100)*3.5
                              ),
                            ),
                            Text(
                              "12341231",
                              style: AppConfig().dashboardBoxNumber(context),
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                  BlockWidget(
                    onTap: (){

                    }, 
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 14,left: 14),
                    borderRadius:10,
                    height: 75,
                    width: width / 2 - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jumlah Pemilih Tetap",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: (width/100)*3.5
                              ),
                            ),
                            Text(
                              "12341231",
                              style: AppConfig().dashboardBoxNumber(context),
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ],
          )
        ),
      ],
    );
  }
}