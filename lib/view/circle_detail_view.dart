import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/utils.dart';
import 'package:jam3ia_flutter_app/view/dashboard/dashboard_view.dart';
import 'package:jam3ia_flutter_app/view/payoutMonth/choose_payout_month_view.dart';

class CircleDetailView extends StatefulWidget {
  const CircleDetailView({super.key});

  @override
  State<CircleDetailView> createState() => _CircleDetailViewState();
}

class _CircleDetailViewState extends State<CircleDetailView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: AppColors.lightGreyColor3,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: AppColors.orangeColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text(
          'Detail',
          style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: new BoxDecoration(
          color: Colors.white,

        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [


            Column(
              children: [
                Center(
                  child: Container(
                    height: size.height*0.18,
                    width: size.width,
                    color: AppColors.orangeColor,
                  ),
                ),
              ],
            ),
            Positioned(
              top: size.height*0.03,
              left: size.width*0.005,
              right: size.width*0.005,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(

                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                        ],
                        borderRadius: BorderRadius.circular(30)
                    ),

                    //            height: size.height,

                    child: Column(children: [

                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      GestureDetector(
                        onTap: () {

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15, bottom: 4, top: 4),
                          child: Container(
                            decoration: BoxDecoration(
                              color:AppColors.whiteColor,
                             // borderRadius: BorderRadius.circular(20),
                              // border: Border.all(
                              //     color:AppColors.darkGreenColor,
                              //     width: 1
                              // ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8,bottom: 8),
                              child: Column(
                                children: [
                                  Container(

                                    decoration: BoxDecoration(
                                      color:AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color:AppColors.lightGreyColor,
                                          width: 1
                                      ),
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                                            child: Container(
                                              // width: size.width*0.9,


                                              alignment: Alignment.centerLeft,
                                              child: Text('Total Number of users', style: TextStyle(color:
                                              AppColors.blackColor
                                                  , fontSize: 14, fontWeight: FontWeight.w400),),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                  // DummyData.monthList[index].locked ? AppColors.greyColor :
                                                  AppColors.greenColor2,
                                                  borderRadius: BorderRadius.circular(5)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8, top: 4, bottom: 4),
                                                child: Text(
                                                  '10',
                                                  style: TextStyle(
                                                      color:
                                                      // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                                      AppColors.whiteColor,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color:AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color:AppColors.lightGreyColor,
                                          width: 1
                                      ),
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                                            child: Container(
                                              // width: size.width*0.9,
                                              alignment: Alignment.centerLeft,
                                              child: Text('No. Of users joined', style: TextStyle(color:
                                              AppColors.blackColor
                                                  , fontSize: 14, fontWeight: FontWeight.w400),),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                  // DummyData.monthList[index].locked ? AppColors.greyColor :
                                                  AppColors.purpleColor,
                                                  borderRadius: BorderRadius.circular(5)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8, top: 4, bottom: 4),
                                                child: Text(
                                                  '8',
                                                  style: TextStyle(
                                                      color:
                                                      // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                                      AppColors.whiteColor,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),


                                  Container(
                                    decoration: BoxDecoration(
                                      color:AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color:AppColors.lightGreyColor,
                                          width: 1
                                      ),
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                                            child: Container(
                                              // width: size.width*0.9,
                                              alignment: Alignment.centerLeft,
                                              child: Text('Payout amount', style: TextStyle(color:
                                              AppColors.blackColor
                                                  , fontSize: 14, fontWeight: FontWeight.w400),),
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 10, right: 10),
                                            child: Text('10,000 EGP', style: TextStyle(color: AppColors.blackColor, fontSize: 17, fontWeight: FontWeight.bold),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color:AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color:AppColors.lightGreyColor,
                                          width: 1
                                      ),
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                                            child: Container(
                                              // width: size.width*0.9,
                                              alignment: Alignment.centerLeft,
                                              child: Text('Status', style: TextStyle(color:
                                              AppColors.blackColor
                                                  , fontSize: 14, fontWeight: FontWeight.w400),),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                  // DummyData.monthList[index].locked ? AppColors.greyColor :
                                                  AppColors.darkBlueColor,
                                                  borderRadius: BorderRadius.circular(5)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8, top: 4, bottom: 4),
                                                child: Text(
                                                  'Waiting for others to join',
                                                  style: TextStyle(
                                                      color:
                                                      // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                                      AppColors.whiteColor,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),


                                ],),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: RoundButton(
                          width: size.width,
                          //isLoading: authViewModel.loading,
                          round: 30.0,
                          color: AppColors.greenColor2,
                          title: 'Request to start the circle',
                          onPress: () {
                            // Navigator.pushNamed(context, RoutesName.dashView);

                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => DashboardView(),
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

                            Utils.flushBarErrorMessage('Successfully requested', context, AppColors.darkGreenColor, 'Success', 3);


                          },
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),

                    ],),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),

    );


      Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      appBar: AppBar(
        elevation: 0,

        backgroundColor: AppColors.whiteColor,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => DashboardView(),
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
        icon: Icon(Icons.arrow_back, color: Colors.black,),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Detail',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),

      body: Column(children: [

        SizedBox(
          height: size.height * 0.02,
        ),

        GestureDetector(
          onTap: () {

          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15, bottom: 4, top: 4),
            child: Container(
              decoration: BoxDecoration(
                color:AppColors.whiteColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color:AppColors.darkGreenColor,
                    width: 1
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                          child: Container(
                            // width: size.width*0.9,
                            alignment: Alignment.centerLeft,
                            child: Text('Total Number of users', style: TextStyle(color:
                            AppColors.blackColor
                                , fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                // DummyData.monthList[index].locked ? AppColors.greyColor :
                                AppColors.greenColor2,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 4, bottom: 4),
                              child: Text(
                                '10',
                                style: TextStyle(
                                    color:
                                    // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                    AppColors.whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                          child: Container(
                            // width: size.width*0.9,
                            alignment: Alignment.centerLeft,
                            child: Text('No. Of users joined', style: TextStyle(color:
                            AppColors.blackColor
                                , fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                // DummyData.monthList[index].locked ? AppColors.greyColor :
                                AppColors.purpleColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 4, bottom: 4),
                              child: Text(
                                '8',
                                style: TextStyle(
                                    color:
                                    // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                    AppColors.whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                          child: Container(
                            // width: size.width*0.9,
                            alignment: Alignment.centerLeft,
                            child: Text('Payout amount', style: TextStyle(color:
                            AppColors.blackColor
                                , fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 10, right: 10),
                          child: Text('10,000 EGP', style: TextStyle(color: AppColors.blackColor, fontSize: 17, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                          child: Container(
                            // width: size.width*0.9,
                            alignment: Alignment.centerLeft,
                            child: Text('Status', style: TextStyle(color:
                            AppColors.blackColor
                                , fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                // DummyData.monthList[index].locked ? AppColors.greyColor :
                                AppColors.greenColor2.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 4, bottom: 4),
                              child: Text(
                               'Waiting for others to join',
                                style: TextStyle(
                                    color:
                                    // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                    AppColors.blackColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),



                  ],),
              ),
            ),
          ),
        ),

        SizedBox(
          height: size.height * 0.05,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: RoundButton(
            width: size.width,
            //isLoading: authViewModel.loading,
            round: 30.0,
            color: AppColors.greenColor2,
            title: 'Request to start the circle',
            onPress: () {
              // Navigator.pushNamed(context, RoutesName.dashView);

              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => DashboardView(),
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

              Utils.flushBarErrorMessage('Successfully requested', context, AppColors.darkGreenColor, 'Success', 3);


            },
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),

      ],),

    );
  }
}
