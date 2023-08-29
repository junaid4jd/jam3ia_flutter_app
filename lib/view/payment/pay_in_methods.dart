import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/view/circle_detail_view.dart';
enum PaymentMethodIn {jawwalPay, reflectAccount, creditDebit, bankTransfer, directSalary, cash }
class PayInMethods extends StatefulWidget {
  const PayInMethods({super.key});

  @override
  State<PayInMethods> createState() => _PayInMethodsState();
}

class _PayInMethodsState extends State<PayInMethods> {
  PaymentMethodIn _paymentMethodIn = PaymentMethodIn.jawwalPay;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black
        ),

        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text(
          'Payment',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: size.height*0.8,
          decoration:   BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius:  BorderRadius.circular(30)),
          child: Wrap(
            children: [
              SizedBox(
                height: size.height*0.05,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         'Pay-in Methods',
              //         style: TextStyle(
              //             color: AppColors.darkGreenColor,
              //             fontWeight: FontWeight.bold,
              //             fontSize: TextStylesData.titleFontSize),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: size.height*0.05,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8, bottom: 8),
                child: Container(
                  height: 40,
                  // decoration: BoxDecoration(
                  //     color: Colors.white
                  // ),
                  child: ListTile(
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => AddCardScreen()));
                    },
                    title:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset('assets/images/jawal_pay.png', fit: BoxFit.scaleDown,
                            height: 40,
                            width: 50,
                          ),
                        ),
                        Text('Jawwal pay'),
                      ],
                    ),
                    leading: Radio(
                      value: PaymentMethodIn.jawwalPay,
                      groupValue: _paymentMethodIn,
                      activeColor: AppColors.darkGreenColor,
                      onChanged: (PaymentMethodIn? value) {
                        setState(() {
                          _paymentMethodIn = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                child: Container(
                  height: 40,
                  // decoration: BoxDecoration(
                  //     color: Colors.white
                  // ),
                  child: ListTile(
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => AddCardScreen()));
                    },
                    title:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset('assets/images/reflect.png', fit: BoxFit.scaleDown,
                            height: 30,
                            width: 50,
                          ),
                        ),
                        Text('Reflect Account'),
                      ],
                    ),
                    leading: Radio(
                      value: PaymentMethodIn.reflectAccount,
                      groupValue: _paymentMethodIn,
                      activeColor: AppColors.darkGreenColor,
                      onChanged: (PaymentMethodIn? value) {
                        setState(() {
                          _paymentMethodIn = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                child: Container(
                  height: 40,
                  // decoration: BoxDecoration(
                  //     color: Colors.white
                  // ),
                  child: ListTile(
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => AddCardScreen()));
                    },
                    title:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset('assets/images/credit_debit.png', fit: BoxFit.scaleDown,
                            height: 30,
                            width: 50,
                          ),
                        ),
                        Text('Credit/Debit Cards'),
                      ],
                    ),
                    leading: Radio(
                      value: PaymentMethodIn.creditDebit,
                      groupValue: _paymentMethodIn,
                      activeColor: AppColors.darkGreenColor,
                      onChanged: (PaymentMethodIn? value) {
                        setState(() {
                          _paymentMethodIn = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                child: Container(
                  height: 40,
                  // decoration: BoxDecoration(
                  //     color: Colors.white
                  // ),
                  child: ListTile(
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => AddCardScreen()));
                    },
                    title:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset('assets/images/direct_debit.png', fit: BoxFit.scaleDown,
                            height: 30,
                            width: 50,
                          ),
                        ),
                        Text('Direct salary debit'),
                      ],
                    ),
                    leading: Radio(
                      value: PaymentMethodIn.directSalary,
                      groupValue: _paymentMethodIn,
                      activeColor: AppColors.darkGreenColor,
                      onChanged: (PaymentMethodIn? value) {
                        setState(() {
                          _paymentMethodIn = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                child: Container(
                  height: 40,
                  // decoration: BoxDecoration(
                  //     color: Colors.white
                  // ),
                  child: ListTile(
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => AddCardScreen()));
                    },
                    title:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset('assets/images/cash.png', fit: BoxFit.scaleDown,
                            height: 30,
                            width: 50,
                          ),
                        ),
                        Text('Cash'),
                      ],
                    ),
                    leading: Radio(
                      value: PaymentMethodIn.cash,
                      groupValue: _paymentMethodIn,
                      activeColor: AppColors.darkGreenColor,
                      onChanged: (PaymentMethodIn? value) {
                        setState(() {
                          _paymentMethodIn = value!;
                        });
                      },
                    ),
                  ),
                ),
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
                  title: 'Pay',
                  onPress: () {
                    // Navigator.pushNamed(context, RoutesName.dashView);
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => CircleDetailView(),
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

            ],
          ),
        ),
      ),
    );
  }
}
