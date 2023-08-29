import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';

class PointsView extends StatefulWidget {
  const PointsView({super.key});

  @override
  State<PointsView> createState() => _PointsViewState();
}

class _PointsViewState extends State<PointsView> {
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
          'My points',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),

      body: Column(children: [
        SizedBox(
          height: size.height * 0.02,
        ),
        GestureDetector(
          onTap: () {
            // setState(() {
            //   selectedIndex = index;
            // });
           // Navigator.pushNamed(context, RoutesName.payoutMonth);

          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
                color:AppColors.purpleColor,
                borderRadius: BorderRadius.circular(20),
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
                            child: Text('Total points', style: TextStyle(color:
                         AppColors.yellowColor
                                , fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('0 points', style: TextStyle(color:  AppColors.whiteColor, fontSize: 17, fontWeight: FontWeight.w500),),

                      ),
                    ),



                  ],),
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        GestureDetector(
          onTap: () {

          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
              //  color:AppColors.purpleColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: AppColors.darkGreenColor,
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
                            child: Text('Your current level', style: TextStyle(color:
                            AppColors.greyColor
                                , fontSize: 14, fontWeight: FontWeight.w500),),
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Bronze', style: TextStyle(color:  AppColors.blackColor, fontSize: 17, fontWeight: FontWeight.bold),),

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
                            child: Text('499 points to unlock next level', style: TextStyle(color:
                            AppColors.greyColor
                                , fontSize: 10, fontWeight: FontWeight.w400),),
                          ),
                        ),

                      ],
                    ),



                  ],),
              ),
            ),
          ),
        ),

        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
              child: Container(
                // width: size.width*0.9,
                alignment: Alignment.centerLeft,
                child: Text('Ways to earn more points', style: TextStyle(color:
                AppColors.blackColor
                    , fontSize: 15, fontWeight: FontWeight.w500),),
              ),
            ),

          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(

          // color: AppColors.lightGreyColor,
          width: size.width*0.9,
          child: Center(
            child: ListTile(
              onTap: () {
               // Navigator.pushNamed(context, RoutesName.circleView);
              },
              hoverColor: AppColors.whiteColor,
              splashColor: AppColors.whiteColor,
              minLeadingWidth: 40,
              minVerticalPadding: 0,
              horizontalTitleGap: 10,
              contentPadding: EdgeInsets.zero,
              leading:Padding(
                padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                child: Container(
                  width: 40,height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.purpleColor.withOpacity(0.2)
                  ),
                  child: Center(child: Icon(Icons.file_open_outlined, size: 20,color: AppColors.purpleColor,),),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 8),
              //   child: Icon(Icons.account_balance_wallet_outlined, size: 20,color: AppColors.purpleColor,),
              // ),
              title: Text('Upload documents', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
              subtitle: Text('Upload documents to earn points and increase your limit', style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.015,
        ),
        Container(

          // color: AppColors.lightGreyColor,
          width: size.width*0.9,
          child: Center(
            child: ListTile(
              onTap: () {
                // Navigator.pushNamed(context, RoutesName.circleView);
              },
              hoverColor: AppColors.whiteColor,
              splashColor: AppColors.whiteColor,
              minLeadingWidth: 40,
              minVerticalPadding: 0,
              horizontalTitleGap: 10,
              contentPadding: EdgeInsets.zero,
              leading:Padding(
                padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                child: Container(
                  width: 40,height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.purpleColor.withOpacity(0.2)
                  ),
                  child: Center(child: Icon(Icons.add_circle_outline, size: 20,color: AppColors.purpleColor,),),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 8),
              //   child: Icon(Icons.account_balance_wallet_outlined, size: 20,color: AppColors.purpleColor,),
              // ),
              title: Text('Join circles', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
              subtitle: Text('Join circles to earn points and increase your limit', style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.015,
        ),
        Container(

          // color: AppColors.lightGreyColor,
          width: size.width*0.9,
          child: Center(
            child: ListTile(
              onTap: () {
                // Navigator.pushNamed(context, RoutesName.circleView);
              },
              hoverColor: AppColors.whiteColor,
              splashColor: AppColors.whiteColor,
              minLeadingWidth: 40,
              minVerticalPadding: 0,
              horizontalTitleGap: 10,
              contentPadding: EdgeInsets.zero,
              leading:Padding(
                padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                child: Container(
                  width: 40,height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.purpleColor.withOpacity(0.2)
                  ),
                  child: Center(child: Icon(Icons.account_box, size: 20,color: AppColors.purpleColor,),),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 8),
              //   child: Icon(Icons.account_balance_wallet_outlined, size: 20,color: AppColors.purpleColor,),
              // ),
              title: Text('Invite friends', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
              subtitle: Text('Invite friends to earn points and increase your limit', style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
            ),
          ),
        ),

      ],),

    );
  }
}
