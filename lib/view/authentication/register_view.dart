import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/utils/utils.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  ValueNotifier obsecurePassword = ValueNotifier(true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailAddressController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final authViewModel = Provider.of<AuthViewModel>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: new BoxDecoration(
          color: Colors.white,

        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [

                Center(
                  child: Container(
                    height: size.height*0.4,
                    width: size.width,
                    color: AppColors.greenColor2,
                    child: SizedBox(
                      width: 10.0,
                      height: 10.0,
                      child: Padding(
                        padding: const EdgeInsets.all(100.0),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/logo.png',),
                        ),

                      ),
                    ),

                  ),
                ),
              ],
            ),

            SingleChildScrollView(
              child: Container(
                //            height: size.height,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.3,
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)
                          )
                      ),
                      child: Column(
                        children: [

                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Container(
                              width: size.width,
                              alignment: Alignment.centerLeft,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
    'Sign up',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          SizedBox(
                            height: size.height * 0.03,
                          ),

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.whiteColor,
                                border: Border.all(color:AppColors.lightGreyColor, )
                            ),
                            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                            child: Column(
                              children: [

                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),


                                      ),
                                      color: AppColors.greenColor2,
                                    ),
                                    height: size.height*0.06,

                                    //margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Icon(Icons.person_outline_sharp, color: AppColors.whiteColor,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Text(
                                            'Personal Information',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: AppColors.whiteColor,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],)
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: AppColors.lightGreyColor,
                                      border: Border.all(color:AppColors.lightGreyColor, )
                                  ),
                                  margin:

                                  const EdgeInsets.only(left: 10, right: 10, top: 0),
                                  child: TextFormField(
                                    controller: _fullNameController,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
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
                                      hintText: 'First Name',
                                      prefixIcon: Icon(Icons.person_outline_sharp,color: AppColors.darkBlueColor,),

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
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: AppColors.lightGreyColor,
                                      border: Border.all(color:AppColors.lightGreyColor, )
                                  ),
                                  margin:

                                  const EdgeInsets.only(left: 10, right: 10, top: 0),
                                  child: TextFormField(
                                    controller: _lastNameController,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
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
                                      hintText: 'Last Name',
                                      prefixIcon: Icon(Icons.person_outline_sharp,color: AppColors.darkBlueColor,),

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
                                  height: size.height * 0.025,
                                ),


                              ],
                            ),
                          ),

                          SizedBox(
                            height: size.height * 0.025,
                          ),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: AppColors.whiteColor,
                              border: Border.all(color:AppColors.lightGreyColor, )
                            ),
                            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                            child: Column(
                              children: [

                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0),


                                    ),
                                    color: AppColors.greenColor2,
                                  ),
                                  height: size.height*0.06,

                                  //margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Icon(Icons.lock_outline, color: AppColors.whiteColor,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Account Credentials',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors.whiteColor,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],)
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: AppColors.lightGreyColor,
                                      border: Border.all(color:AppColors.lightGreyColor, )
                                  ),
                                  margin:

                                  const EdgeInsets.only(left: 10, right: 10, top: 0),
                                  child: TextFormField(
                                    controller: _emailAddressController,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
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
                                      hintText: 'Email',
                                      prefixIcon: Icon(Icons.email_outlined,color: AppColors.darkBlueColor,),
                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            //  obsecurePassword.value = !obsecurePassword.value;
                                          },
                                          child: const Icon(
                                            Icons.verified_outlined,
                                            // color: Colors.,
                                            size: 20,
                                          )),
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
                                ValueListenableBuilder(
                                    valueListenable: obsecurePassword,
                                    builder: (context, value, child) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: AppColors.lightGreyColor,
                                        ),

                                        margin:

                                        const EdgeInsets.only(left: 10, right: 10, top: 0),
                                        child: TextFormField(
                                          autofocus: true,
                                          keyboardType: TextInputType.text,
                                          controller: _passwordController,
                                          obscureText: obsecurePassword.value ? true : false,
                                          textInputAction: TextInputAction.done,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                          decoration: InputDecoration(
                                            focusColor: Colors.white,
                                            prefixIcon: Icon(Icons.lock_outline,color: AppColors.darkBlueColor,),
                                            suffixIcon: GestureDetector(
                                                onTap: () {
                                                  obsecurePassword.value = !obsecurePassword.value;
                                                },
                                                child: Icon(
                                                  obsecurePassword.value
                                                      ? Icons.visibility_off_outlined
                                                      : Icons.visibility,
                                                  size: 20,
                                                  color: AppColors.greyColor.withOpacity(0.5),
                                                )),
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
                                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            fillColor: Colors.grey,
                                            //labelText: 'Password',
                                            hintText: 'Password',
                                            labelStyle: const TextStyle(
                                              color: AppColors.greyColor,
                                              fontSize: TextStylesData.smallFontSize,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),


                              ],
                            ),
                          ),



                          SizedBox(
                            height: size.height * 0.05,
                          ),



                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                            child: Container(
                              // width: size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0, right: 8),
                                    child: Container(
                                      decoration:

                                      BoxDecoration(
                                        // boxShadow: const [
                                        //   BoxShadow(
                                        //       color: Colors.black26,
                                        //       offset: Offset(0, 4),
                                        //       blurRadius: 5.0)
                                        // ],
                                        color: AppColors.testColor.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(5),
                                      ) ,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            minimumSize: MaterialStateProperty.all(Size(size.width*0.35, 50)),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.transparent),
                                            // elevation: MaterialStateProperty.all(3),
                                            shadowColor: MaterialStateProperty.all(Colors.transparent),
                                          ),
                                         onPressed: (){},
                                          child: Text(
    'Upload your ID',
                                            style:  TextStyle(
                                                fontSize: 12,
                                                color:
                                                AppColors.orangeColor, overflow: TextOverflow.ellipsis),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0, right: 0),
                                    child: Container(
                                      decoration:

                                      BoxDecoration(
                                        // boxShadow: const [
                                        //   BoxShadow(
                                        //       color: Colors.black26,
                                        //       offset: Offset(0, 4),
                                        //       blurRadius: 5.0)
                                        // ],
                                        color: AppColors.testColor.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(5),
                                      ) ,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            minimumSize: MaterialStateProperty.all(Size(size.width*0.32, 50)),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.transparent),
                                            // elevation: MaterialStateProperty.all(3),
                                            shadowColor: MaterialStateProperty.all(Colors.transparent),
                                          ),
                                          onPressed: (){},
                                          child: Text(
                                            'Upload recent salary slip',
                                            style:  TextStyle(
                                                fontSize: 12,
                                                color:
                                            AppColors.orangeColor, overflow: TextOverflow.ellipsis),
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),




                          SizedBox(
                            height: size.height*0.025,
                          ),



                          SizedBox(
                            height: size.height * 0.02,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: RoundButton(
                              width: size.width,
                              //isLoading: authViewModel.loading,
                              round: 30.0,
                              color: AppColors.greenColor2,
                              title: 'Register',
                              onPress: () {
                                Navigator.pushNamed(context, RoutesName.dashView);
                                Utils.flushBarErrorMessage('Account created successfully', context, AppColors.darkGreenColor, 'Success', 1);

                                Future.delayed(Duration(seconds: 2)).then((value) {
                                  Utils.flushBarErrorMessage('An email has been sent to you with documents that require your signature. Please upload them to app and complete the registration process', context,
                                      AppColors.greenColor2, 'Attention', 5);
                                });

                                // if (_emailAddressController.text.isEmpty) {


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
                                //   // authViewModel.loginApi(_emailAddressController.text,
                                //   //     _passwordController.text, context);
                                // }

                              },
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),


                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesName.login);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppText.loginLine,
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: TextStylesData.smallFontSize,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  " Sign in",
                                  style: TextStyle(
                                      color: AppColors.greenColor2,
                                      fontSize: TextStylesData.smallFontSize,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),


                        ],
                      ),

                    ),


                  ],),
              ),
            ),


          ],),




      ),


      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: size.height * 0.35,
      //         width: size.width,
      //         decoration:  BoxDecoration(
      //             gradient: LinearGradient(
      //                 colors: [
      //                   AppColors.darkGreenColor,
      //                   AppColors.lightGreenColor,
      //                 ],
      //                 stops: [
      //                   0.0,
      //                   1.0
      //                 ],
      //                 begin: Alignment.centerLeft,
      //                 end: Alignment.centerRight,
      //                 tileMode: TileMode.repeated),
      //             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               child: Image.asset('assets/images/logo.png', height: 100,width: 100,fit: BoxFit.scaleDown,),
      //             ),
      //             Center(
      //                 child: Padding(
      //                   padding: EdgeInsets.only(top: 10),
      //                   child: Text(
      //                     'Jam3ia',
      //                     style: TextStyle(
      //                         fontSize: TextStylesData.headingSmallFontSize,
      //                         color: AppColors.blackColor,
      //                         fontWeight: FontWeight.bold),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                 )),
      //           ],
      //         ),
      //       ),
      //       Column(
      //         children: [
      //           SizedBox(
      //             height: size.height * 0.02,
      //           ),
      //           Container(
      //               width: size.width,
      //               child: const Padding(
      //                 padding: EdgeInsets.only(left: 0),
      //                 child: Center(
      //                   child: Text(
      //                     AppText.register,
      //                     style: TextStyle(
      //                         fontSize: TextStylesData.titleFontSize,
      //                         color: AppColors.darkGreenColor,
      //                         fontWeight: FontWeight.bold),
      //                   ),
      //                 ),
      //               )),
      //           SizedBox(
      //             height: size.height * 0.02,
      //           ),
      //           Container(
      //             margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
      //             child: TextFormField(
      //               controller: _fullNameController,
      //               textInputAction: TextInputAction.next,
      //               keyboardType: TextInputType.name,
      //               style: const TextStyle(
      //                 fontSize: 14,
      //                 color: Colors.black,
      //               ),
      //               onChanged: (value) {
      //                 // if(EmailValidator.validate(value)) {
      //                 //   setState(() {
      //                 //     isValid = true;
      //                 //   });
      //                 // } else {
      //                 //   setState(() {
      //                 //     isValid = false;
      //                 //   });
      //                 // }
      //               },
      //               decoration: InputDecoration(
      //                 focusColor: Colors.white,
      //                 fillColor: Colors.grey,
      //                 labelText: 'Full Name',
      //                 contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: const BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 focusedBorder: OutlineInputBorder(
      //                   borderSide:
      //                   BorderSide(color: AppColors.lightGreyColor, width: 1.0),
      //                   borderRadius: BorderRadius.circular(10.0),
      //                 ),
      //                 labelStyle: const TextStyle(
      //                   color: AppColors.greyColor,
      //                   fontSize: TextStylesData.smallFontSize,
      //                   fontFamily: "verdana_regular",
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: size.height * 0.01,
      //           ),
      //           Container(
      //             margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
      //             child: TextFormField(
      //               controller: _emailAddressController,
      //               textInputAction: TextInputAction.next,
      //               keyboardType: TextInputType.emailAddress,
      //               style: const TextStyle(
      //                 fontSize: 14,
      //                 color: Colors.black,
      //               ),
      //               onChanged: (value) {
      //                 // if(EmailValidator.validate(value)) {
      //                 //   setState(() {
      //                 //     isValid = true;
      //                 //   });
      //                 // } else {
      //                 //   setState(() {
      //                 //     isValid = false;
      //                 //   });
      //                 // }
      //               },
      //               decoration: InputDecoration(
      //                 focusColor: Colors.white,
      //                 fillColor: Colors.grey,
      //                 labelText: 'Email',
      //                 suffixIcon: GestureDetector(
      //                     onTap: () {
      //                       //  obsecurePassword.value = !obsecurePassword.value;
      //                     },
      //                     child: const Icon(
      //                       Icons.verified_outlined,
      //                       color: AppColors.greenColor,
      //                       size: 20,
      //                     )),
      //                 contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //
      //                 //add prefix icon
      //
      //                 // errorText: "Error",
      //
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 focusedBorder: OutlineInputBorder(
      //                   borderSide:
      //                   BorderSide(color: AppColors.lightGreyColor, width: 1.0),
      //                   borderRadius: BorderRadius.circular(10.0),
      //                 ),
      //                 labelStyle: const TextStyle(
      //                   color: AppColors.greyColor,
      //                   fontSize: TextStylesData.smallFontSize,
      //                   fontFamily: "verdana_regular",
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: size.height * 0.01,
      //           ),
      //           ValueListenableBuilder(
      //               valueListenable: obsecurePassword,
      //               builder: (context, value, child) {
      //                 return Container(
      //                   margin:
      //                   const EdgeInsets.only(left: 20, right: 20, top: 0),
      //                   child: TextFormField(
      //                     autofocus: true,
      //                     keyboardType: TextInputType.text,
      //                     controller: _passwordController,
      //                     obscureText: obsecurePassword.value ? true : false,
      //                     textInputAction: TextInputAction.done,
      //                     style: const TextStyle(
      //                       fontSize: 14,
      //                       color: Colors.black,
      //                     ),
      //                     decoration: InputDecoration(
      //                       focusColor: Colors.white,
      //                       suffixIcon: GestureDetector(
      //                           onTap: () {
      //                             obsecurePassword.value = !obsecurePassword.value;
      //                           },
      //                           child: Icon(
      //                             obsecurePassword.value
      //                                 ? Icons.visibility_off_outlined
      //                                 : Icons.visibility,
      //                             size: 20,
      //                             color: AppColors.greyColor.withOpacity(0.5),
      //                           )),
      //                       enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(10.0),
      //                         borderSide: BorderSide(
      //                           color:  AppColors.lightGreyColor,
      //                           width: 1,
      //                         ),
      //                       ),
      //
      //                       border: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(10.0),
      //                         borderSide: BorderSide(
      //                           color:  AppColors.lightGreyColor,
      //                           width: 1,
      //                         ),
      //                       ),
      //                       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //                       focusedBorder: OutlineInputBorder(
      //                         borderSide:
      //                         BorderSide(color: AppColors.lightGreyColor, width: 1.0),
      //                         borderRadius: BorderRadius.circular(10.0),
      //                       ),
      //                       fillColor: Colors.grey,
      //                       labelText: 'Password',
      //                       hintText: '************',
      //                       labelStyle: const TextStyle(
      //                         color: AppColors.greyColor,
      //                         fontSize: TextStylesData.smallFontSize,
      //                         fontWeight: FontWeight.w400,
      //                       ),
      //                     ),
      //                   ),
      //                 );
      //               }),
      //           SizedBox(
      //             height: size.height * 0.01,
      //           ),
      //           Container(
      //             margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
      //             child: TextFormField(
      //               controller: _phoneController,
      //               textInputAction: TextInputAction.next,
      //               keyboardType: TextInputType.phone,
      //               style: const TextStyle(
      //                 fontSize: 14,
      //                 color: Colors.black,
      //               ),
      //               onChanged: (value) {
      //                 // if(EmailValidator.validate(value)) {
      //                 //   setState(() {
      //                 //     isValid = true;
      //                 //   });
      //                 // } else {
      //                 //   setState(() {
      //                 //     isValid = false;
      //                 //   });
      //                 // }
      //               },
      //               decoration: InputDecoration(
      //                 focusColor: Colors.white,
      //                 fillColor: Colors.grey,
      //                 labelText: 'Phone',
      //                 contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 focusedBorder: OutlineInputBorder(
      //                   borderSide:
      //                   BorderSide(color: AppColors.lightGreyColor, width: 1.0),
      //                   borderRadius: BorderRadius.circular(10.0),
      //                 ),
      //                 labelStyle: const TextStyle(
      //                   color: AppColors.greyColor,
      //                   fontSize: TextStylesData.smallFontSize,
      //                   fontFamily: "verdana_regular",
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: size.height*0.01,
      //           ),
      //           Container(
      //             margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
      //             child: TextFormField(
      //               controller: _addressController,
      //               textInputAction: TextInputAction.done,
      //               keyboardType: TextInputType.streetAddress,
      //               style: const TextStyle(
      //                 fontSize: 14,
      //                 color: Colors.black,
      //               ),
      //               onChanged: (value) {
      //                 // if(EmailValidator.validate(value)) {
      //                 //   setState(() {
      //                 //     isValid = true;
      //                 //   });
      //                 // } else {
      //                 //   setState(() {
      //                 //     isValid = false;
      //                 //   });
      //                 // }
      //               },
      //               decoration: InputDecoration(
      //                 focusColor: Colors.white,
      //                 fillColor: Colors.grey,
      //                 labelText: 'Address',
      //                 contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   borderSide: BorderSide(
      //                     color:  AppColors.lightGreyColor,
      //                     width: 1,
      //                   ),
      //                 ),
      //
      //                 focusedBorder: OutlineInputBorder(
      //                   borderSide:
      //                   BorderSide(color: AppColors.lightGreyColor, width: 1.0),
      //                   borderRadius: BorderRadius.circular(10.0),
      //                 ),
      //                 labelStyle: const TextStyle(
      //                   color: AppColors.greyColor,
      //                   fontSize: TextStylesData.smallFontSize,
      //                   fontFamily: "verdana_regular",
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: size.height*0.03,
      //           ),
      //
      //           Padding(
      //             padding: const EdgeInsets.only(left: 20, right: 20),
      //             child: RoundButton(
      //               width: size.width,
      //               //isLoading: authViewModel.loading,
      //               round: 30.0,
      //               color: AppColors.darkGreenColor,
      //               title: 'Upload your id',
      //               onPress: () {
      //               },
      //             ),
      //           ),
      //
      //
      //           SizedBox(
      //             height: size.height*0.025,
      //           ),
      //
      //           Padding(
      //             padding: const EdgeInsets.only(left: 20, right: 20),
      //             child: RoundButton(
      //               width: size.width,
      //               //isLoading: authViewModel.loading,
      //               round: 30.0,
      //               color: AppColors.darkGreenColor,
      //               title: 'Upload recent salary slip',
      //               onPress: () {
      //               },
      //             ),
      //           ),
      //
      //
      //           SizedBox(
      //             height: size.height * 0.02,
      //           ),
      //
      //           Padding(
      //             padding: const EdgeInsets.only(left: 20, right: 20),
      //             child: RoundButton(
      //               width: size.width,
      //               //isLoading: authViewModel.loading,
      //               round: 30.0,
      //               color: AppColors.darkGreenColor,
      //               title: 'Register',
      //               onPress: () {
      //                  Navigator.pushNamed(context, RoutesName.dashView);
      //
      //                 // if (_emailAddressController.text.isEmpty) {
      //                  Utils.flushBarErrorMessage('An email has been sent to you with documents that require your signature. Please upload them to app and complete the registration process', context,
      //                       AppColors.greenColor2, 'Attention', 8);
      //
      //                 // } else if (_passwordController.text.isEmpty) {
      //                 //   Utils.flushBarErrorMessage('Enter password ', context,
      //                 //       AppColors.darkRedColor, 'Error');
      //                 // } else if (_passwordController.text.length < 6) {
      //                 //   Utils.flushBarErrorMessage(
      //                 //       'Please enter 6 digits password ',
      //                 //       context,
      //                 //       AppColors.darkRedColor,
      //                 //       'Error');
      //                 // } else {
      //                 //   // authViewModel.loginApi(_emailAddressController.text,
      //                 //   //     _passwordController.text, context);
      //                 // }
      //
      //               },
      //             ),
      //           ),
      //           SizedBox(
      //             height: size.height * 0.02,
      //           ),
      //
      //           GestureDetector(
      //             onTap: () {
      //               Navigator.pushNamed(context, RoutesName.login);
      //             },
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                Padding(
      //                  padding: const EdgeInsets.all(8.0),
      //                  child: Image.asset("assets/images/google.png", height: 40,width: 40,),
      //                ),
      //                Padding(
      //                  padding: const EdgeInsets.all(8.0),
      //                  child: Image.asset("assets/images/facebook.png", height: 40,width: 40,),
      //                ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(
      //             height: size.height * 0.02,
      //           ),
      //           GestureDetector(
      //             onTap: () {
      //               Navigator.pushNamed(context, RoutesName.login);
      //             },
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Text(
      //                   AppText.loginLine,
      //                   style: TextStyle(
      //                       color: AppColors.blackColor,
      //                       fontSize: TextStylesData.smallFontSize,
      //                       fontWeight: FontWeight.w300),
      //                 ),
      //                 Text(
      //                   " Sign in",
      //                   style: TextStyle(
      //                       color: AppColors.greenColor2,
      //                       fontSize: TextStylesData.smallFontSize,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(
      //             height: size.height * 0.05,
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
