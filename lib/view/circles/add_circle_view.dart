import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/view/createCircle/create_circle_view.dart';

class AddCircleView extends StatefulWidget {
  const AddCircleView({super.key});

  @override
  State<AddCircleView> createState() => _AddCircleViewState();
}

class _AddCircleViewState extends State<AddCircleView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,

        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Find Circle',
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),

      body: Column(
        children: [
          SizedBox(
            height: size.height*0.02,
          ),
          Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset('assets/images/people.png', height: 100,width: 100,),
            ),
          ),
    ),
      SizedBox(
        height: size.height*0.02,
      ),
      Container(
        width: size.width*0.9,
        child: Text('What would you like to do?', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
      ),
          SizedBox(
            height: size.height*0.02,
          ),

          Container(
            height: 40,
            // color: AppColors.lightGreyColor,
            width: size.width*0.9,
            child: Center(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.circleView);
                },
                hoverColor: AppColors.whiteColor,
                splashColor: AppColors.whiteColor,
                minLeadingWidth: 0,
               minVerticalPadding: 0,
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                leading: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(Icons.account_balance_wallet_outlined, size: 20,color: AppColors.purpleColor,),
                ),
                title: Text('Find a specific circle', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
              ),
            ),
          ),

          SizedBox(
            height: size.height*0.02,
          ),

          Container(
            height: 40,
            // color: AppColors.lightGreyColor,
            width: size.width*0.9,
            child: Center(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => CreateCircle(),
                      transitionDuration: Duration(milliseconds: 200),
                      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                    ),
                  );                },
                hoverColor: AppColors.whiteColor,
                splashColor: AppColors.whiteColor,
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                leading: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(Icons.add_circle_outline, size: 20,color: AppColors.purpleColor,),
                ),
                title: Text('Create new circle', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
              ),
            ),
          ),
          // SizedBox(
          //   height: size.height*0.01,
          // ),
          Container(
            height: 40,
            width: size.width*0.9,
            child: ListTile(
              minLeadingWidth: 0,
             minVerticalPadding: 0,
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding:const EdgeInsets.only(right: 8),
                child: Icon(Icons.search, size: 20,color: AppColors.purpleColor,),
              ),
              title: Text('Browse all circles', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
            ),
          ),

        ],
      ),);
  }
}
