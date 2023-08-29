import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';

class SignedDocView extends StatefulWidget {
  const SignedDocView({super.key});

  @override
  State<SignedDocView> createState() => _SignedDocViewState();
}

class _SignedDocViewState extends State<SignedDocView> {
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
          'Signed documents',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
              child: Container(
                // width: size.width*0.9,
                alignment: Alignment.centerLeft,
                child: Text('Upload signed documents for approval', style: TextStyle(color:
                AppColors.blackColor
                    , fontSize: 14, fontWeight: FontWeight.w400),),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.04,
        ),


        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: RoundButton(
            width: size.width,
            //isLoading: authViewModel.loading,
            round: 30.0,
            color: AppColors.darkGreenColor,
            title: 'Upload bank transfer guarantee',
            onPress: () {
            },
          ),
        ),


        SizedBox(
          height: size.height*0.025,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: RoundButton(
            width: size.width,
            //isLoading: authViewModel.loading,
            round: 30.0,
            color: AppColors.darkGreenColor,
            title: 'Upload Promissory',
            onPress: () {
            },
          ),
        ),
        SizedBox(
          height: size.height*0.025,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: RoundButton(
            width: size.width,
            //isLoading: authViewModel.loading,
            round: 30.0,
            color: AppColors.darkGreenColor,
            title: 'Upload official agreement with Jam3ia',
            onPress: () {
            },
          ),
        ),

        SizedBox(
          height: size.height*0.05,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: RoundButton(
            width: size.width,
            //isLoading: authViewModel.loading,
            round: 30.0,
            color: AppColors.darkGreenColor,
            title: 'Send',
            onPress: () {
            },
          ),
        ),



      ],),

    );
  }
}
