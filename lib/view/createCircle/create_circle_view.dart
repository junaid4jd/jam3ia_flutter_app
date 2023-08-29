import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';

class CreateCircle extends StatefulWidget {
  const CreateCircle({super.key});

  @override
  State<CreateCircle> createState() => _CreateCircleState();
}

class _CreateCircleState extends State<CreateCircle> {
  final TextEditingController _circleAmountController = TextEditingController();
  final TextEditingController _circleUsersController = TextEditingController();
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
          'Create Circle',
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
            height: size.height*0.08,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
            decoration: BoxDecoration(
              color: AppColors.lightGreyColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextFormField(
              controller: _circleAmountController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              onChanged: (value) {
                // if(EmailValidator.validate(value)) {
                //   setState(() {
                //     isValid = true;
                //   });
                // } else {
                //   setState(() {
                //     isValid = false;
                //   });
                // }
              },
              decoration: InputDecoration(
                focusColor: Colors.white,
                fillColor: Colors.grey,
                hintText: 'Circle amount',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                //add prefix icon

                // errorText: "Error",

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color:  AppColors.lightGreyColor,
                    width: 1,
                  ),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color:  AppColors.lightGreyColor,
                    width: 1,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelStyle: const TextStyle(
                  color: AppColors.greyColor,
                  fontSize: TextStylesData.smallFontSize,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
            decoration: BoxDecoration(
              color: AppColors.lightGreyColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextFormField(
              controller: _circleUsersController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              onChanged: (value) {
                // if(EmailValidator.validate(value)) {
                //   setState(() {
                //     isValid = true;
                //   });
                // } else {
                //   setState(() {
                //     isValid = false;
                //   });
                // }
              },
              decoration: InputDecoration(
                focusColor: Colors.white,
                fillColor: Colors.grey,
                hintText: 'Circle users',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                //add prefix icon

                // errorText: "Error",

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color:  AppColors.lightGreyColor,
                    width: 1,
                  ),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color:  AppColors.lightGreyColor,
                    width: 1,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelStyle: const TextStyle(
                  color: AppColors.greyColor,
                  fontSize: TextStylesData.smallFontSize,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          SizedBox(
            height: size.height * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: RoundButton(
              width: size.width,
              //isLoading: authViewModel.loading,
              round: 30.0,
              color: AppColors.darkGreenColor,
              title: "Create circle",
              onPress: () {
               // Navigator.pushNamed(context, RoutesName.dashView);

                // if (_emailAddressController.text.isEmpty) {
                //   Utils.flushBarErrorMessage('Enter email ', context,
                //       AppColors.darkRedColor, 'Error');
                // } else if (_passwordController.text.isEmpty) {
                //   Utils.flushBarErrorMessage('Enter password ', context,
                //       AppColors.darkRedColor, 'Error');
                // } else if (_passwordController.text.length < 6) {
                //   Utils.flushBarErrorMessage(
                //       'Please enter 6 digits password ',
                //       context,
                //       AppColors.darkRedColor,
                //       'Error');
                // } else {
                //
                // }
              },
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),

        ],
      ),

    );
  }
}
