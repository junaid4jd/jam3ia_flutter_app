import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/view/request_circle/request_circle_start_view.dart';
enum PaymentMethod { payIn, payOut }
enum PaymentMethodIn { jawwalPay, reflectAccount, creditDebit, bankTransfer, directSalary, cash }
enum PaymentMethodOut { jawwalPay, bankTransfer }
class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  final TextEditingController _cardHolderNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardCVCController = TextEditingController();
  final TextEditingController _cardEdateController = TextEditingController();
  PaymentMethod _paymentMethod = PaymentMethod.payIn;
  PaymentMethodIn _paymentMethodIn = PaymentMethodIn.jawwalPay;
  PaymentMethodOut _paymentMethodOut = PaymentMethodOut.jawwalPay;


  void _showBottomSheetIn(BuildContext context) {
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
                decoration:   BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius:  BorderRadius.circular(30)),
                child: Wrap(
                  children: [
                    SizedBox(

                      height: size.height*0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Pay-in Methods',
                            style: TextStyle(
                                color: AppColors.darkGreenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: TextStylesData.titleFontSize),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.05,
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8, bottom: 8),
                      child: Container(
                        height: 40,

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
                            activeColor: AppColors.greenColor2,
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
                            activeColor: AppColors.greenColor2,
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
                            activeColor: AppColors.greenColor2,
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
                            activeColor: AppColors.greenColor2,
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
                            activeColor: AppColors.greenColor2,
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
            ); },);



      },
    );
  }

  void _showBottomSheetOut(BuildContext context) {
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
                    color: AppColors.whiteColor,
                    borderRadius:  BorderRadius.only(
                        topLeft:  Radius.circular(30.0),
                        topRight:  Radius.circular(30.0))),
                child: Wrap(
                  children: [
                    SizedBox(

                      height: size.height*0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Pay-out Methods',
                            style: TextStyle(
                                color: AppColors.darkGreenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: TextStylesData.titleFontSize),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.05,
                    ),

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
                                  height: 30,
                                  width: 50,
                                ),
                              ),
                              Text('Jawwal pay'),
                            ],
                          ),
                          leading: Radio(
                            value: PaymentMethodOut.jawwalPay,
                            groupValue: _paymentMethodOut,
                            activeColor: AppColors.greenColor2,
                            onChanged: (PaymentMethodOut? value) {
                              setState(() {
                                _paymentMethodOut = value!;
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
                                child: Image.asset('assets/images/bank-transfer.png', fit: BoxFit.scaleDown,
                                  height: 30,
                                  width: 50,
                                ),
                              ),
                              Text('Bank Transfer'),
                            ],
                          ),
                          leading: Radio(
                            value: PaymentMethodOut.bankTransfer,
                            groupValue: _paymentMethodOut,
                            activeColor: AppColors.greenColor2,
                            onChanged: (PaymentMethodOut? value) {
                              setState(() {
                                _paymentMethodOut = value!;
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
                        title: 'Pay Now',
                        onPress: () {

                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => RequestCircleView(),
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

                          // Navigator.pushNamed(context, RoutesName.dashView);



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
      body: Column(
        children: [
          SizedBox(
            height: size.height*0.015,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: ListTile(
                onTap: () {
                  setState(() {
                    _paymentMethod = PaymentMethod.payIn;
                  });
                  _showBottomSheetIn(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => AddCardScreen()));
                },
                title:  Row(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 10),
                    //   child: Image.asset('assets/images/credit.png', fit: BoxFit.scaleDown,
                    //     height: 30,
                    //     width: 50,
                    //   ),
                    // ),
                    Text('Pay-in'),
                  ],
                ),
                leading: Radio(
                  value: PaymentMethod.payIn,
                  groupValue: _paymentMethod,
                  activeColor: AppColors.greenColor2,
                  onChanged: (PaymentMethod? value) {
                    _showBottomSheetIn(context);
                    setState(() {
                      _paymentMethod = value!;
                    });
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: ListTile(
                onTap: () {
                  setState(() {
                    _paymentMethod = PaymentMethod.payOut;
                  });
                  _showBottomSheetOut(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => AddCardScreen()));
                },
                title:  Row(
                  children: [
                    Text('Pay-out'),
                  ],
                ),
                leading: Radio(
                  value: PaymentMethod.payOut,
                  groupValue: _paymentMethod,
                  activeColor: AppColors.greenColor2,
                  onChanged: (PaymentMethod? value) {
                    _showBottomSheetOut(context);
                    setState(() {
                      _paymentMethod = value!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
