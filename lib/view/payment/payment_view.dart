import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/model/dummy_data.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/view/home/home_view.dart';
import 'package:jam3ia_flutter_app/view/payment/pay_in_methods.dart';
import 'package:jam3ia_flutter_app/view/payment/pay_out_methods.dart';
import 'package:jam3ia_flutter_app/view/payment/payment_success_view.dart';
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
  int selectedIndex = 1000;


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
            color: Colors.white
        ),

        backgroundColor: AppColors.darkBlueColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text(
          'Payment',
          style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child:Stack(children: <Widget>[ //stack overlaps widgets
                  Opacity( //semi red clippath with more height and with 0.5 opacity
                    opacity: 0.0,
                    child: ClipPath(
                      clipper:WaveClipper(), //set our custom wave clipper
                      child:Container(
                        color: AppColors.darkBlueColor,
                        height:180,
                      ),
                    ),
                  ),

                  ClipPath(  //upper clippath with less height
                    clipper:WaveClipper(), //set our custom wave clipper.
                    child:Container(
                      padding: EdgeInsets.only(bottom: 50),
                      color:AppColors.darkBlueColor,
                      height:160,
                      alignment: Alignment.topLeft,


                    ),
                  ),
                ],)
            ),


            Padding(
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
                        child: Text('Enjoy financial flexibility: Pay in effortlessly, and get swift payouts. Manage your funds seamlessly', style: TextStyle(color:
                        AppColors.blackColor
                            , fontSize: 14, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
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
                              mainAxisExtent: 80,
                              crossAxisSpacing: 10,

                              mainAxisSpacing: 10,
                              // Number of columns in the grid
                            ),

                            itemCount: DummyData.paymentMethodList.length,
                            itemBuilder: (BuildContext ctx, index) {
                              return  GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });

                                  if(index == 0) {
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
                                  } else if (index == 1) {

                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation, secondaryAnimation) => PayOutMethods(),
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

                                  }

                                },
                                child: Container(
                                  //height: 80,
                                  decoration: BoxDecoration(
                                    // color: AppColors.orangeColor,
                                    // color:
                                    //  index == 0 ? AppColors.orangeColor :
                                    // AppColors.greenColor2,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color:
                                      selectedIndex == index ? AppColors.orangeColor :
                                      AppColors.greyColor, width: 0.5),


                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(

                                          DummyData.paymentMethodList[index].name
                                          , style: TextStyle(color: AppColors.blackColor, fontSize: 13, fontWeight: FontWeight.w500),)
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),




                  ],),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
