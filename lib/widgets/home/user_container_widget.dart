import 'package:flutter/material.dart';
import 'package:jawaracaleg/config/app_colors.dart';

class UserContainerWidget extends StatelessWidget {
  const UserContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 150,
      padding: const EdgeInsets.all(10),
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
    );
  }
}