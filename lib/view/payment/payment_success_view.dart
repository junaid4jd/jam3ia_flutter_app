import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/utils.dart';
import 'package:jam3ia_flutter_app/view/dashboard/dashboard_view.dart';

class PaymentSuccessView extends StatefulWidget {
  const PaymentSuccessView({super.key});

  @override
  State<PaymentSuccessView> createState() => _PaymentSuccessViewState();
}

class _PaymentSuccessViewState extends State<PaymentSuccessView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.blue
        ),
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        // title: const Text(
        //   'Payment',
        //   style: TextStyle(
        //       color: AppColors.whiteColor,
        //       fontWeight: FontWeight.bold,
        //       fontSize: TextStylesData.titleFontSize),
        // ),

      ),

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Center(
            child: SizedBox(
              height: size.height*0.1,
              width: size.width*0.7,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('assets/images/check.png', fit: BoxFit.scaleDown,
                  // height: size.height*0.5,
                  width: size.width*0.6,
                  // height: 80,
                  // width: 80,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, ),
            child: Container(
              // width: size.width*0.9,
              alignment: Alignment.center,
              child: Center(
                child: Text('Successfully', style: TextStyle(color:
                AppColors.blackColor
                    , fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, ),
            child: Container(
              // width: size.width*0.9,
              alignment: Alignment.centerLeft,
              child: Text('Payment received successfully. Thank you for choosing us, and best wishes ahead!', style: TextStyle(color:
              AppColors.blackColor
                  , fontSize: 14, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.lightGreyColor2.withOpacity(0.5)
              ),
              width: size.width*0.9,
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ClipOval(
                      child:  Image.network(
                        'https://i.pinimg.com/736x/f8/66/8e/f8668e5328cfb4938903406948383cf6.jpg',
                        width: 80,
                        // color: Colors.grey,
                        height: 80,
                        fit: BoxFit.cover,
                      )

                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                      width: size.width,
                      child: Center(
                        child: Text(
                          'Jhon Doe',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Container(
                      width: size.width,
                      child: Center(
                        child: Text(
                          '08-30-2023',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   color:AppColors.whiteColor,
                    //   borderRadius: BorderRadius.circular(5),
                    //   border: Border.all(
                    //       color:AppColors.lightGreyColor,
                    //       width: 1
                    //   ),
                    // ),

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
                              child: Text('Amount', style: TextStyle(color:
                              AppColors.blackColor
                                  , fontSize: 14, fontWeight: FontWeight.w400),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              // decoration: BoxDecoration(
                              //     color:
                              //     // DummyData.monthList[index].locked ? AppColors.greyColor :
                              //     AppColors.darkBlueColor,
                              //     borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 4, bottom: 4),
                                child: Text(
                                  '100 EGP',
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
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.0,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   color:AppColors.whiteColor,
                    //   borderRadius: BorderRadius.circular(5),
                    //   border: Border.all(
                    //       color:AppColors.lightGreyColor,
                    //       width: 1
                    //   ),
                    // ),

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
                              child: Text('Admin Fee', style: TextStyle(color:
                              AppColors.blackColor
                                  , fontSize: 14, fontWeight: FontWeight.w400),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              // decoration: BoxDecoration(
                              //     color:
                              //     // DummyData.monthList[index].locked ? AppColors.greyColor :
                              //     AppColors.darkBlueColor,
                              //     borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 4, bottom: 4),
                                child: Text(
                                  '10 EGP',
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
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: DottedLine(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashLength: 8.0,
                      dashColor: Colors.black,
                     // dashGradient: [Colors.red, Colors.blue],
                      dashRadius: 0.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                     // dashGapGradient: [Colors.red,],
                      dashGapRadius: 0.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   color:AppColors.whiteColor,
                    //   borderRadius: BorderRadius.circular(5),
                    //   border: Border.all(
                    //       color:AppColors.lightGreyColor,
                    //       width: 1
                    //   ),
                    // ),

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
                              child: Text('Total', style: TextStyle(color:
                              AppColors.blackColor
                                  , fontSize: 14, fontWeight: FontWeight.w400),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              // decoration: BoxDecoration(
                              //     color:
                              //     // DummyData.monthList[index].locked ? AppColors.greyColor :
                              //     AppColors.darkBlueColor,
                              //     borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 4, bottom: 4),
                                child: Text(
                                  '110 EGP',
                                  style: TextStyle(
                                      color:
                                      // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                      AppColors.darkBlueColor1,
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
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: DottedLine(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashLength: 8.0,
                      dashColor: Colors.black,
                      // dashGradient: [Colors.red, Colors.blue],
                      dashRadius: 0.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                      // dashGapGradient: [Colors.red,],
                      dashGapRadius: 0.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: size.height * 0.02,
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,bottom: 26,top: 26),
            child: RoundButton(
              width: size.width,
              //isLoading: authViewModel.loading,
              round: 30.0,
              color: AppColors.greenColor2,
              title: 'Back to Home',
              onPress: () {
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
                Utils.flushBarErrorMessage('Successfully Paid', context, AppColors.darkGreenColor, 'Success', 3);

              },
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),



        ],),
      ),

    );
  }
}
