import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/utils.dart';
import 'package:jam3ia_flutter_app/view/dashboard/dashboard_view.dart';

class RequestCircleView extends StatefulWidget {
  const RequestCircleView({super.key});

  @override
  State<RequestCircleView> createState() => _RequestCircleViewState();
}

class _RequestCircleViewState extends State<RequestCircleView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      body: SingleChildScrollView(
        child: Container(
        //  height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,

            children: [
              Container(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height*0.25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/check.png', color: AppColors.greenColor2,width: 120,height: 120,)
                        ],
                      ),

                    ],
                  )),
              Container(
                width: size.width,
              //  height: size.height,
                child:   Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [





                    Container(
                      width: size.width*0.8,
                      child: Center(
                          child: Text(

                             'Successfully paid and joined the circle.'
                            ,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black87, fontSize: 16,),)
                      ),
                    ),

                    SizedBox(
                      height: size.height*0.03,
                    ),

                    Container(
                      width: size.width*0.7,
                      child: Center(
                          child: Text('Circle Payout Amount 10,000 EGP ',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.greenColor2, fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                    ),

                    SizedBox(
                      height: size.height*0.015,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 26,top: 26),
                      child: RoundButton(
                        width: size.width,
                        //isLoading: authViewModel.loading,
                        round: 30.0,
                        color: AppColors.greenColor2,
                        title: 'Request circle to start',
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

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 26,top: 2),
                      child: RoundButton(
                        width: size.width,
                        //isLoading: authViewModel.loading,
                        round: 30.0,
                        color: AppColors.purpleColor,
                        title: 'Go to Home',
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

                        },
                      ),
                    ),

                    SizedBox(
                      height: size.height*0.05,
                    ),
                  ],),

              ),
            ],),
        ),
      ),



    );
  }
}
