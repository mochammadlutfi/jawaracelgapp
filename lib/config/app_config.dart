import 'package:flutter/cupertino.dart';
import 'package:jawaracaleg/config/app_colors.dart';

class AppConfig {
  // base url
  static const String baseUrl = "http://192.168.1.3/sipileg/api";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String users = '/users';

  
  static const double dPadding = 20.0;


  double getWidth(context){
    return MediaQuery.of(context).size.width;
  }
  double getWidthInPercent(context){
      return MediaQuery.of(context).size.width/100;
  }
  double getHeight(context){
      return MediaQuery.of(context).size.height;
  }
  double getHeightInPercent(context){
      return MediaQuery.of(context).size.height/100;
  }

  double getHeightInPercent2(context){
      return MediaQuery.of(context).size.aspectRatio;
  }

  TextStyle dashboardBoxText(context){
    return TextStyle(
        fontSize: (getWidth(context)/100)*3.5,
      color: AppColors.black,
      fontWeight: FontWeight.normal
    );
  }
  
 TextStyle dashboardBoxNumber(context){
    return TextStyle(
      fontSize: (getWidth(context)/100)*5,
      color: AppColors.black,
      fontWeight: FontWeight.bold
    );
  }
}