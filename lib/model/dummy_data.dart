import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/model/month_model.dart';
import 'package:jam3ia_flutter_app/model/settings_model.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';

class DummyData {


  static  List<MonthModel> monthList = [

    MonthModel(name: 'January', locked: true, reserved: false),
    MonthModel(name: 'February', locked: false, reserved: false),
    MonthModel(name: 'March', locked: false, reserved: true),
    MonthModel(name: 'April', locked: false, reserved: true),
    MonthModel(name: 'May', locked: false, reserved: false),
    MonthModel(name: 'June', locked: true, reserved: true),
    MonthModel(name: 'July', locked: false, reserved: false),
    MonthModel(name: 'August', locked: false, reserved: true),
    MonthModel(name: 'September', locked: true, reserved: false),
    MonthModel(name: 'October', locked: false, reserved: true),
    MonthModel(name: 'November', locked: false, reserved: false),
    MonthModel(name: 'December', locked: false, reserved: true),

  ];


  static  List<MonthModel> paymentList = [

    MonthModel(name: 'assets/images/jawal_pay.png', locked: true, reserved: false),
    MonthModel(name: 'assets/images/reflect.png', locked: false, reserved: false),
    MonthModel(name: 'assets/images/credit_debit.png', locked: false, reserved: true),
    MonthModel(name: 'assets/images/direct_debit.png', locked: false, reserved: true),
    MonthModel(name: 'assets/images/cash.png', locked: false, reserved: false),


  ];
  static  List<MonthModel> paymentOutList = [

    MonthModel(name: 'assets/images/jawal_pay.png', locked: true, reserved: false),
    MonthModel(name: 'assets/images/bank-transfer.png', locked: false, reserved: false),


  ];

  static  List<MonthModel> paymentMethodList = [

    MonthModel(name: 'Pay-In', locked: true, reserved: false),
    MonthModel(name: 'Pay-Out', locked: false, reserved: false),

  ];


  static  List<SettingsModel> settingList = [
    SettingsModel(name: 'My Circles', isIcon: true, icon: Icon(Icons.account_box_rounded,size: 20,color: Colors.white,), image: ''),
    SettingsModel(name: 'My Points', isIcon: true, icon: Icon(Icons.point_of_sale,size: 20,color: Colors.white,), image: ''),
    SettingsModel(name: 'Installments Report', isIcon: true, icon: Icon(Icons.report_gmailerrorred,size: 20,color: Colors.white,), image: ''),
    SettingsModel(name: 'Payments', isIcon: true, icon: Icon(Icons.wallet,size: 20,color: Colors.white,), image: ''),
    SettingsModel(name: 'Notifications', isIcon: true, icon: Icon(Icons.notification_important_outlined,size: 20,color: Colors.white,), image: ''),
    SettingsModel(name: 'Invite Friend', isIcon: true, icon: Icon(Icons.account_box_rounded,size: 20,color: Colors.white,), image: ''),
    SettingsModel(name: 'Upload signed documents', isIcon: true, icon: Icon(Icons.upload,size: 20,color: Colors.white,), image: ''),
    SettingsModel(name: 'User Classification', isIcon: true, icon: Icon(Icons.category,size: 20,color: Colors.white,), image: ''),


  ];

}