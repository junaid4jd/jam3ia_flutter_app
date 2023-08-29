import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/model/dummy_data.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/view/authentication/phone_view.dart';
import 'package:jam3ia_flutter_app/view/classificationsCircles/classification_circle_view.dart';
import 'package:jam3ia_flutter_app/view/installmentsReport/installment_report_view.dart';
import 'package:jam3ia_flutter_app/view/inviteFriend/invite_friend_view.dart';
import 'package:jam3ia_flutter_app/view/myCircles/my_circles_view.dart';
import 'package:jam3ia_flutter_app/view/notifications/notifications_view.dart';
import 'package:jam3ia_flutter_app/view/payment/payment_view.dart';
import 'package:jam3ia_flutter_app/view/points/points_view.dart';
import 'package:jam3ia_flutter_app/view/profile_view/profile_view.dart';
import 'package:jam3ia_flutter_app/view/screening_view/screening_view.dart';
import 'package:jam3ia_flutter_app/view/signed_doc_view/signed_doc_view.dart';
import 'package:jam3ia_flutter_app/view/userClassification/user_classification_view.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {

  void _showBottomSheet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: size.height*0.45,
          color: Colors.transparent,

          child: Container(
            decoration: const  BoxDecoration(
                color: AppColors.lightGreyColor,
                borderRadius:  BorderRadius.only(
                    topLeft:  Radius.circular(30.0),
                    topRight:  Radius.circular(30.0))),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // width: size.width*0.9,
                      alignment: Alignment.centerLeft,
                      child: Text('User classifications', style: TextStyle(color:
                      AppColors.greenColor2
                          , fontSize: 17, fontWeight: FontWeight.w600),),
                    ),

                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 8,top: 4),
                      child: Container(
                        // width: size.width*0.9,
                        alignment: Alignment.centerLeft,
                        child: Text('User classification based on their salaries', style: TextStyle(color:
                        AppColors.blackColor
                            , fontSize: 13, fontWeight: FontWeight.w500),),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: size.height * 0.01,
                ),

                Container(

                  // color: AppColors.lightGreyColor,
                  width: size.width*0.9,
                  child: Center(
                    child: ListTile(
                      onTap: () {

                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => ClassificationCircleView(range: 1999),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.easeIn;
                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(position: offsetAnimation, child: child);
                            },
                          ),
                        );
                      },
                      hoverColor: AppColors.whiteColor,
                      splashColor: AppColors.whiteColor,
                      minLeadingWidth: 40,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.zero,
                      leading:Padding(
                        padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                        child: Container(
                          width: 40,height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.greenColor2.withOpacity(0.2)
                          ),
                          child: Center(child: Icon(Icons.category, size: 20,color: AppColors.greenColor2,),),
                        ),
                      ),
                      title: Text('Less than 2000EGP', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                      subtitle: Text('User with their salary less than 2000EGP', style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),),
                      trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: size.height * 0.01,
                // ),
                Container(

                  // color: AppColors.lightGreyColor,
                  width: size.width*0.9,
                  child: Center(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => ClassificationCircleView(range: 3999),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.easeIn;
                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(position: offsetAnimation, child: child);
                            },
                          ),
                        );                      },
                      hoverColor: AppColors.whiteColor,
                      splashColor: AppColors.whiteColor,
                      minLeadingWidth: 40,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.zero,
                      leading:Padding(
                        padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                        child: Container(
                          width: 40,height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.greenColor2.withOpacity(0.2)
                          ),
                          child: Center(child: Icon(Icons.category, size: 20,color: AppColors.greenColor2,),),
                        ),
                      ),
                      title: Text('From 2001EGP to 4000EGP', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                      subtitle: Text('User with their salary from 2001EGP to 4000EGP', style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),),
                      trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: size.height * 0.01,
                // ),
                Container(

                  // color: AppColors.lightGreyColor,
                  width: size.width*0.9,
                  child: Center(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => ClassificationCircleView(range: 4001),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.easeIn;
                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(position: offsetAnimation, child: child);
                            },
                          ),
                        );
                      },
                      hoverColor: AppColors.whiteColor,
                      splashColor: AppColors.whiteColor,
                      minLeadingWidth: 40,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.zero,
                      leading:Padding(
                        padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                        child: Container(
                          width: 40,height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.greenColor2.withOpacity(0.2)
                          ),
                          child: Center(child: Icon(Icons.category, size: 20,color: AppColors.greenColor2,),),
                        ),
                      ),
                      title: Text('More than 4000EGP', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                      subtitle: Text('User with their salary more than 4000EGP', style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),),
                      trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        title: Text(
          'Settings',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),
      ),

      body:   SingleChildScrollView(
        child: Container(
          //width: size.width*0.9,
          height: size.height*0.8,
          child: ListView.builder(
              padding: EdgeInsets.only(top: 8),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: DummyData.settingList.length,
              itemBuilder: ( context ,  index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 4,bottom: 4,left: 8,right: 8),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.whiteColor,
                    ),
                    // color: AppColors.lightGreyColor,
                    //width: size.width*0.9,
                    child: Center(
                      child: ListTile(
                        onTap: () {
                          if(index == 0 ) {

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => ProfileView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );
                          }

                         else if(index == 1) {

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => MyCirclesView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );

                          }
                         else  if(index == 2 ) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => PointsView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );
                          }
                          else if(index == 3 ) {

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => ScreeningView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );

                            // Navigator.push(
                            //     context,
                            //     PageRouteBuilder(
                            //       pageBuilder: (context, animation, secondaryAnimation) => ScreeningView(),
                            //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            //         const begin = Offset(1.0, 0.0);
                            //         const end = Offset.zero;
                            //         const curve = Curves.easeIn;
                            //         var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                            //         var offsetAnimation = animation.drive(tween);
                            //
                            //         return SlideTransition(position: offsetAnimation, child: child);
                            //       },
                            //     ),
                            // );

                          }
                          else if(index == 4 ) {
                            //Navigator.pushNamed(context, RoutesName.installmentReportView);

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => InstallmentReportView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );

                          }
                          else if(index == 7 ) {


                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => InviteFriendView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );

                            // Navigator.push(
                            //   context,
                            //   PageRouteBuilder(
                            //     pageBuilder: (context, animation, secondaryAnimation) => InviteFriendView(),
                            //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            //       const begin = Offset(1.0, 0.0);
                            //       const end = Offset.zero;
                            //       const curve = Curves.easeIn;
                            //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                            //       var offsetAnimation = animation.drive(tween);
                            //
                            //       return SlideTransition(position: offsetAnimation, child: child);
                            //     },
                            //   ),
                            // );
                            //
                            //
                          }
                          else if(index == 5 ) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => PaymentView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );



                          }
                          else if(index == 6 ) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => NotificationView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );
                          }
                          else if(index == 10 ) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => VerifyPhoneView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );
                          }
                          if(index == 8 ) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => SignedDocView(),
                                transitionDuration: Duration(milliseconds: 300),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );
                          }
                          if(index == 9 ) {

                            _showBottomSheet(context);

                            // Navigator.push(
                            //   context,
                            //   PageRouteBuilder(
                            //     pageBuilder: (_, __, ___) => UserClassificationView(),
                            //     transitionDuration: Duration(milliseconds: 200),
                            //     transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                            //   ),
                            // );
                          }


                        },
                        hoverColor: AppColors.whiteColor,
                        splashColor: AppColors.whiteColor,
                        minLeadingWidth: 60,
                        minVerticalPadding: 10,
                        horizontalTitleGap: 10,
                        contentPadding: EdgeInsets.zero,

                        leading: Padding(
                          padding: const EdgeInsets.only(left: 4,bottom: 6),
                          child: Container(
                            width: 50,height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orangeAccent.withOpacity(0.2)
                            ),
                            child: Center(child: DummyData.settingList[index].icon),
                          ),
                        ),
                        title: Text(DummyData.settingList[index].name.toString(), style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),),
                        //      trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
