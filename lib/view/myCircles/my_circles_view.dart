import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';

class MyCirclesView extends StatefulWidget {
  const MyCirclesView({super.key});

  @override
  State<MyCirclesView> createState() => _MyCirclesViewState();
}

class _MyCirclesViewState extends State<MyCirclesView> {
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
          'My Circles',
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

            return


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
                                    AppColors.yellowColor,
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
                                child: Text('10,000 EGP', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
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
