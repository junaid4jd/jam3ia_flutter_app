import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/view/payoutMonth/choose_payout_month_view.dart';

class ClassificationCircleView extends StatefulWidget {
  final int range;
  const ClassificationCircleView({super.key, required this.range});

  @override
  State<ClassificationCircleView> createState() => _ClassificationCircleViewState();
}

class _ClassificationCircleViewState extends State<ClassificationCircleView> {
  int selectedIndex = 1000000;
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
          'Classifications',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),

      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index){

            return index == 0 ?

            Column(children: [

              SizedBox(
                height: size.height*0.03,
              ),

              Container(
                width: size.width*0.9,
                child: Text('One circle(s) found', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
              ),
              SizedBox(
                height: size.height*0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey,
                  height: 1,
                ),
              ),
              SizedBox(
                height: size.height*0.01,
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => PayoutMonthView(),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color:selectedIndex == index ? AppColors.purpleColor : AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color:selectedIndex == index ? AppColors.purpleColor : AppColors.darkGreenColor,
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
                                  child: Text('Payout amount', style: TextStyle(color:
                                  selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor
                                      , fontSize: 14, fontWeight: FontWeight.w400),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:
                                      // DummyData.monthList[index].locked ? AppColors.greyColor :
                                      AppColors.darkGreenColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 4, bottom: 4),
                                    child: Text(
                                      index == 0 ? 'Running'
                                          : 'Pending',
                                      style: TextStyle(
                                          color:
                                          // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                          AppColors.whiteColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                            child: Container(
                              child: Row(children: [
                                Icon(Icons.wallet, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
                                Padding(
                                  padding:  EdgeInsets.only(left: 10),
                                  child: Text(
                                    widget.range == 1999 ?
                                        index == 0 ? '1000 EGP' :
                                        index == 1 ? '1400 EGP' :
                                        index == 2 ? '1500 EGP' : '1800 EGP' :

                                    widget.range == 3999 ?

                                    index == 0 ? '2500 EGP' :
                                    index == 1 ? '3000 EGP' :
                                    index == 2 ? '3500 EGP' : '2800 EGP' :

                                    widget.range == 4001 ?

                                    index == 0 ? '4500 EGP' :
                                    index == 1 ? '4900 EGP' :
                                    index == 2 ? '5000 EGP' : '10,000 EGP' :

                                    widget.range == 1999 ? '1000 EGP' :
                                    widget.range == 3999 ? '2500 EGP' :
                                    widget.range == 4001 ? '10,000 EGP' : '1000 EGP'


                                    , style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),
                              ],),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              width: size.width*0.9,
                              child: Text('Payout date', style: TextStyle(color:selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w400),),
                            ),
                          ),
                          Container(
                              height: 40,
                              child: ListTile(
                                minVerticalPadding: 0,
                                minLeadingWidth: 0,
                                horizontalTitleGap: 0,
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Oct 23', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),
                                leading: Icon(Icons.calendar_month, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
                                trailing: Icon(Icons.arrow_forward_ios, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 15,),
                              )

                          ),


                        ],),
                    ),
                  ),
                ),
              )

            ],) :


            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => PayoutMonthView(),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15, bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color:

                    selectedIndex == index ? AppColors.purpleColor : AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color:selectedIndex == index ? AppColors.purpleColor : AppColors.darkGreenColor,
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
                                child: Text('Payout amount', style: TextStyle(color:
                                selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor
                                    , fontSize: 14, fontWeight: FontWeight.w400),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color:

                                    // DummyData.monthList[index].locked ? AppColors.greyColor :

                                    index == 0 ? AppColors.darkGreenColor :
                                    index == 2 ? AppColors.darkGreenColor :
                                    index == 4 ? AppColors.darkGreenColor :

                                    AppColors.darkRedColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 4, bottom: 4),
                                  child: Text(
                                    index == 0 ? 'Running' :
                                    index == 2 ? 'Running' :
                                    index == 4 ? 'Running' :
                                    'Pending',
                                    style: TextStyle(
                                        color:
                                        // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                        AppColors.whiteColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                          child: Container(
                            child: Row(children: [
                              Icon(Icons.wallet, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
                              Padding(
                                padding:  EdgeInsets.only(left: 10),
                                child: Text(

                                  widget.range == 1999 ?
                                  index == 0 ? '1000 EGP' :
                                  index == 1 ? '1400 EGP' :
                                  index == 2 ? '1500 EGP' : '1800 EGP' :

                                  widget.range == 3999 ?

                                  index == 0 ? '2500 EGP' :
                                  index == 1 ? '3000 EGP' :
                                  index == 2 ? '3500 EGP' : '2800 EGP' :

                                  widget.range == 4001 ?

                                  index == 0 ? '4500 EGP' :
                                  index == 1 ? '4900 EGP' :
                                  index == 2 ? '5000 EGP' : '10,000 EGP' :

                                  widget.range == 1999 ? '1000 EGP' :
                                  widget.range == 3999 ? '2500 EGP' :
                                  widget.range == 4001 ? '10,000 EGP' : '1000 EGP'
                                , style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Container(
                            width: size.width*0.9,
                            child: Text('Payout date', style: TextStyle(color:selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                        ),
                        Container(
                            height: 40,
                            child: ListTile(
                              minVerticalPadding: 0,
                              minLeadingWidth: 0,
                              horizontalTitleGap: 0,
                              title: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('Oct 23', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                              leading: Icon(Icons.calendar_month, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
                              trailing: Icon(Icons.arrow_forward_ios, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 15,),
                            )

                        ),


                      ],),
                  ),
                ),
              ),
            );

          }),

    );
  }
}
