import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';

class UserClassificationView extends StatefulWidget {
  const UserClassificationView({super.key});

  @override
  State<UserClassificationView> createState() => _UserClassificationViewState();
}

class _UserClassificationViewState extends State<UserClassificationView> {
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
        title: Text(
          'Classification',
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
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 8,top: 4),
                  child: Container(
                    // width: size.width*0.9,
                    alignment: Alignment.centerLeft,
                    child: Text('User classification based on their salaries', style: TextStyle(color:
                    AppColors.blackColor
                        , fontSize: 13, fontWeight: FontWeight.w500),),
                  ),
                ),

              ],
            ),

            SizedBox(
              height: size.height * 0.03,
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
                          color: AppColors.greenColor2.withOpacity(0.2)
                      ),
                      child: Center(child: Icon(Icons.category, size: 20,color: AppColors.greenColor2,),),
                    ),
                  ),
                  title: Text('Less than 2000EGP', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                  subtitle: Text('User with their salary less than 2000EGP', style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                ),
              ),
            ),
            // SizedBox(
            //   height: size.height * 0.01,
            // ),
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
                          color: AppColors.greenColor2.withOpacity(0.2)
                      ),
                      child: Center(child: Icon(Icons.category, size: 20,color: AppColors.greenColor2,),),
                    ),
                  ),
                  title: Text('From 2001EGP to 4000EGP', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                  subtitle: Text('User with their salary from 2001EGP to 4000EGP', style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                ),
              ),
            ),
            // SizedBox(
            //   height: size.height * 0.01,
            // ),
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
                          color: AppColors.greenColor2.withOpacity(0.2)
                      ),
                      child: Center(child: Icon(Icons.category, size: 20,color: AppColors.greenColor2,),),
                    ),
                  ),
                  title: Text('More than 4000EGP', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                  subtitle: Text('User with their salary more than 4000EGP', style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
