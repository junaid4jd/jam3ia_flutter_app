import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';

class ScreeningView extends StatefulWidget {
  const ScreeningView({super.key});

  @override
  State<ScreeningView> createState() => _ScreeningViewState();
}

class _ScreeningViewState extends State<ScreeningView> {
  final TextEditingController _addressController = TextEditingController();


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
          'Screening',
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
                child: Text('Upload documents for screening', style: TextStyle(color:
                AppColors.blackColor
                    , fontSize: 14, fontWeight: FontWeight.w400),),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.01,
        ),

        Container(
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10)
          ),
          margin: EdgeInsets.only(left: 16,right: 16,bottom: 0),
          child: TextFormField(
            controller: _addressController,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,

            ),
            onChanged: (value) {
              // setState(() {
              //   userInput.text = value.toString();
              // });
            },
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.only(top: 15,bottom: 15),
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.purpleColor, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.purpleColor, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.purpleColor, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              fillColor: Colors.white,
              hintText: "Enter Address",

              //make hint text
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontFamily: "verdana_regular",
                fontWeight: FontWeight.w400,
              ),

              //create lable
            ),
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
            title: 'Upload your id',
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
            title: 'Upload recent salary slip',
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
