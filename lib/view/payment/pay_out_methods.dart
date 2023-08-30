import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/model/dummy_data.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/view/payment/payment_success_view.dart';

class PayOutMethods extends StatefulWidget {
  const PayOutMethods({super.key});

  @override
  State<PayOutMethods> createState() => _PayOutMethodsState();
}

class _PayOutMethodsState extends State<PayOutMethods> {
  int selectedIndex = 1000;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: AppColors.darkBlueColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text(
          'Pay-Out',
          style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),
      body:  Container(
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
                    color: AppColors.darkBlueColor,
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
                        borderRadius: BorderRadius.circular(30)
                    ),

                    //            height: size.height,

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            height: size.height*0.25,
                            width: size.width*0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset('assets/images/payIn.jpg', fit: BoxFit.scaleDown,
                                // height: size.height*0.5,
                                width: size.width*0.6,
                                // height: 80,
                                // width: 80,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: size.height * 0.02,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, ),
                          child: Container(
                            // width: size.width*0.9,
                            alignment: Alignment.centerLeft,
                            child: Text('Choose the payment option that suits you best from the selection below. Your security is our priority', style: TextStyle(color:
                            AppColors.blackColor
                                , fontSize: 14, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        Container(
                          height: size.height*0.2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            // implement GridView.builder
                            child: GridView.builder(
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 100,
                                  crossAxisSpacing: 10,

                                  mainAxisSpacing: 10,
                                  // Number of columns in the grid
                                ),

                                itemCount: DummyData.paymentOutList.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  return  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        // color: AppColors.orangeColor,
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color:
                                          selectedIndex == index ? AppColors.orangeColor :
                                          AppColors.lightGreyColor, width: 1)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(DummyData.paymentList[index].name, fit: BoxFit.scaleDown,
                                              height: 50,
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              index == 0 ? 'Jawal Pay' :
                                              index == 1 ? 'Bank Transfer' :
                                              'Cash',
                                               style: TextStyle(color: AppColors.blackColor, fontSize: 13, fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10,bottom: 26,top: 26),
                          child: RoundButton(
                            width: size.width,
                            //isLoading: authViewModel.loading,
                            round: 30.0,
                            color: AppColors.greenColor2,
                            title: 'Pay',
                            onPress: () {
                              // Navigator.pushNamed(context, RoutesName.dashView);
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => PaymentSuccessView(),
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

                              // Navigator.push(
                              //   context,
                              //   PageRouteBuilder(
                              //     pageBuilder: (context, animation, secondaryAnimation) => PayoutMonthView(),
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
  }
}
