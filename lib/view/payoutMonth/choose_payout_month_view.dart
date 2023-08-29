import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/model/dummy_data.dart';
import 'package:jam3ia_flutter_app/model/month_model.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/utils.dart';
import 'package:jam3ia_flutter_app/view/payment/pay_in_methods.dart';
import 'package:jam3ia_flutter_app/view/payment/payment_view.dart';

class PayoutMonthView extends StatefulWidget {
  const PayoutMonthView({super.key});

  @override
  State<PayoutMonthView> createState() => _PayoutMonthViewState();
}

class _PayoutMonthViewState extends State<PayoutMonthView> {
  int selectedIndex = 1000;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      selectedIndex = 1000;
    });
    super.initState();
  }

  void showBottomSheet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
            return  Container(
              // height: size.height*0.8,
              color: Colors.transparent,

              child: Container(
                // height: size.height*0.8,
                decoration: const  BoxDecoration(
                    color: AppColors.lightGreyColor,
                    borderRadius:  BorderRadius.only(
                        topLeft:  Radius.circular(30.0),
                        topRight:  Radius.circular(30.0))),
                child: Wrap(
                  children: [
                    SizedBox(

                      height: size.height*0.05,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16,bottom: 0,top: 30),
                          child: Container(
                            // width: size.width*0.9,
                            alignment: Alignment.centerLeft,
                            child: Text('Selected Payout date', style: TextStyle(color:
                            AppColors.blackColor
                                , fontSize: 16, fontWeight: FontWeight.w600),),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 40,
                        child: ListTile(
                          minVerticalPadding: 0,
                          minLeadingWidth: 0,
                          horizontalTitleGap: 0,
                          title: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Feb 23', style: TextStyle(color:  AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          leading: Icon(Icons.calendar_month, color:  AppColors.blackColor, size: 20,),
                          trailing: Icon(Icons.arrow_forward_ios, color:  AppColors.blackColor, size: 15,),
                        )

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16,bottom: 0,top: 20),
                          child: Text(
                            'Pay your first installment',
                            style: TextStyle(
                                color: AppColors.darkGreenColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.05,
                    ),


                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 26,top: 26),
                      child: RoundButton(
                        width: size.width,
                        //isLoading: authViewModel.loading,
                        round: 30.0,
                        color: AppColors.greenColor2,
                        title: 'Pay Now',
                        onPress: () {
                          // Navigator.pushNamed(context, RoutesName.dashView);
                          // Navigator.pushReplacement(
                          //   context,
                          //   PageRouteBuilder(
                          //     pageBuilder: (context, animation, secondaryAnimation) => RequestCircleView(),
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

                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => PayInMethods(),
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
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),

                  ],
                ),
              ),
            ); },);



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
        automaticallyImplyLeading: true,
        title: Text(
          'Choose payout month',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height*0.01,
            ),

            Container(
              width: size.width*0.9,
              child: Text('When will you need this money?', style: TextStyle(color: AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w500),),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            Container(
              height: size.height*0.75,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                // implement GridView.builder
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 16 / 9,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: DummyData.monthList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {

                          if(DummyData.monthList[index].locked != true && DummyData.monthList[index].reserved != true) {
                            setState(() {
                              selectedIndex = index;
                            });
                            showBottomSheet(context);

                            // Navigator.push(
                            //   context,
                            //   PageRouteBuilder(
                            //     pageBuilder: (context, animation, secondaryAnimation) => PaymentView(),
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


                          }
                          else {
                            Utils.flushBarErrorMessage('Sorry payout month not available', context, AppColors.darkRedColor, 'Error', 3);
                          }

                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: selectedIndex == index ? AppColors.purpleColor : AppColors.greyColor,width: 0.5)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 8,bottom: 4,top: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                     Container(
                                      decoration: BoxDecoration(
                                          color:
                                          DummyData.monthList[index].locked ? AppColors.greyColor :
                                          DummyData.monthList[index].locked != true && DummyData.monthList[index].reserved != true ? AppColors.darkGreenColor :



                                          AppColors.yellowColor,
                                          borderRadius: BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8, top: 4, bottom: 4),
                                        child: Text(
                                          DummyData.monthList[index].locked ? 'Locked' :
                                          DummyData.monthList[index].reserved
                                              ? 'Reserved'
                                              : 'Available',
                                          style: TextStyle(
                                              color:
                                              DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                              DummyData.monthList[index].locked != true && DummyData.monthList[index].reserved != true ? AppColors.whiteColor :
                                              AppColors.blackColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: '   ' +
                                              DummyData.monthList[index].name.toString(),
                                          style: TextStyle(
                                              color:
                                              DummyData.monthList[index].locked ? AppColors.greyColor.withOpacity(0.6) :
                                              AppColors.blackColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '  2023',
                                                style: TextStyle(
                                                    color:
                                                    DummyData.monthList[index].locked ? AppColors.greyColor.withOpacity(0.6) :
                                                    AppColors.blackColor,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10)),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),

            SizedBox(
              height: size.height*0.02,
            ),

            Container(
              width: size.width*0.9,
              decoration: BoxDecoration(
                color: AppColors.lightGreenColor.withOpacity(0.2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.info_outline, color: Colors.blue, size: 25,),
                  ),
                  Container(
                      width: size.width*0.7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Payouts are made between the 15th and 30th of your payout month', style: TextStyle(color: AppColors.blackColor, fontSize: 12, fontWeight: FontWeight.w300),),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),

          ],
        ),
      ),
    );
  }
}