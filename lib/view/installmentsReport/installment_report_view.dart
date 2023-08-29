import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';

class InstallmentReportView extends StatefulWidget {
  const InstallmentReportView({super.key});

  @override
  State<InstallmentReportView> createState() => _InstallmentReportViewState();
}

class _InstallmentReportViewState extends State<InstallmentReportView> {
  int selectedIndex = 1000;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      selectedIndex = 1000;
    });
    super.initState();
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
          'Installments Report',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),

      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index){

            return index == 0 ?

            Column(children: [

              SizedBox(
                height: size.height*0.03,
              ),

              Container(
                width: size.width*0.9,
                child: Text('Month instalments report', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
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
                  //Navigator.pushNamed(context, RoutesName.payoutMonth);

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
                                  child: Text('Installment amount', style: TextStyle(color:
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
                                      AppColors.yellowColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 4, bottom: 4),
                                    child: Text(
                                      'Upcoming',
                                      style: TextStyle(
                                          color:
                                          // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                          AppColors.blackColor,
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
                                  child: Text('200 EGP',
                                    style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                              ],),
                            ),
                          ),



                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                                child: Container(
                                  // width: size.width*0.9,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Delay', style: TextStyle(color:
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
                                      AppColors.yellowColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 4, bottom: 4),
                                    child: Text(
                                      index == 0 ? 'No dealy'
                                          : '3 Days',
                                      style: TextStyle(
                                          color:
                                          // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                          AppColors.blackColor,
                                          fontWeight: FontWeight.w500),
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
                                  child: Text('Fine', style: TextStyle(color:
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
                                      AppColors.darkRedColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 4, bottom: 4),
                                    child: Text(
                                      index == 0 ? 'No fine'
                                          : '3 Days',
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
                                  child: Text('Dec 10', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                leading: Icon(Icons.calendar_month, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 16,),
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
               // Navigator.pushNamed(context, RoutesName.payoutMonth);

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
                                child: Text('Installment amount', style: TextStyle(color:
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
                                    AppColors.yellowColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 4, bottom: 4),
                                  child: Text(
                                    index == 0 ? 'Paid' :
                                    index == 2 ? 'Paid' :
                                    index == 4 ? 'Paid' :

                                    'Not paid',
                                    style: TextStyle(
                                        color:
                                        // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                        AppColors.blackColor,
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
                                child: Text('200 EGP',
                                  style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                            ],),
                          ),
                        ),



                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                              child: Container(
                                // width: size.width*0.9,
                                alignment: Alignment.centerLeft,
                                child: Text('Delay', style: TextStyle(color:
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
                                    AppColors.yellowColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 4, bottom: 4),
                                  child: Text(
                                    index == 0 ? 'No dealy'
                                        : '3 Days',
                                    style: TextStyle(
                                        color:
                                        // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                        AppColors.blackColor,
                                        fontWeight: FontWeight.w500),
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
                                child: Text('Fine', style: TextStyle(color:
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
                                    AppColors.darkRedColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 4, bottom: 4),
                                  child: Text(
                                    index == 0 ? 'No fine'
                                        : '10 EGP',
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
                                child: Text('April 23', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              leading: Icon(Icons.calendar_month, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 16,),
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
