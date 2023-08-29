import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/view/authentication/login_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';


class VerifyPhoneView extends StatefulWidget {

  VerifyPhoneView();

  @override
  _VerifyPhoneViewState createState() => _VerifyPhoneViewState();
}

class _VerifyPhoneViewState extends State<VerifyPhoneView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final FocusNode _phoneFocus = FocusNode();
  bool check = false;
  final FocusNode _passwordFocus = FocusNode();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  String? _countryDialCode, smsCode;
  bool _obscureText = false,
      isLoadingDialog = false,
      isVerify = false;
  List<String> _categories = [];
  String isCategoryExists = '',
      phoneNumberWithZero = '';
  String password = '';
  final TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    setState(() {
      _countryDialCode = '+27';
      isCategoryExists = 'no';
      phoneNumberWithZero = '';
      isLoadingDialog = false;
      isVerify = false;
    });
    // _countryDialCode = Get.find<AuthController>().getUserCountryCode().isNotEmpty ? Get.find<AuthController>().getUserCountryCode()
    //     : CountryCode.fromCountryCode(Get.find<SplashController>().configModel.country).dialCode;
    // _phoneController.text =  Get.find<AuthController>().getUserNumber() ?? '';
    // _passwordController.text = Get.find<AuthController>().getUserPassword() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: size.height * 0.02,
            // ),
            Container(
              height: size.height * 0.65,
              width: size.width,
              color: AppColors.whiteColor,
              child: Image.asset('assets/images/phoneView.png',
              fit: BoxFit.fill,
                height: size.height * 0.65,
                width: size.width,
              ),
            ),

            SizedBox(
              height: size.height * 0.015,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.lightGreyColor,//Theme.of(context).cardColor,
                  //boxShadow: [BoxShadow(color: Colors.grey[Get.isDarkMode ? 800 : 200], spreadRadius: 1, blurRadius: 5)],
                ),
                child: Column(children: [
                  Row(children: [
                    CountryCodePicker(
                      onChanged: (code) {
                        setState(() {
                          _countryDialCode = code.toString();
                        });
                        print(code.toString() + ' This is the code');
                      },
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      // initialSelection: 'SA',
                      favorite: const ['+27'],
                      showFlag: false,
                      textStyle: TextStyle(color: Color(0xFF495AFF),),
                      initialSelection: '+27',
                      countryFilter: [ 'SS', '+27', '+92'],
                      //countryFilter: const ['IT', 'FR'],
                      // flag can be styled with BoxDecoration's `borderRadius` and `shape` fields
                      flagDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Expanded(flex: 1, child:
                    Container(

                      child: TextField(
                        // maxLines: widget.maxLines,
                        controller: _phoneController,
                        focusNode: _phoneFocus,
                        // textAlign: widget.textAlign,
                        // style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge, color: Colors.black),
                        textInputAction: TextInputAction.done,

                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Theme
                            .of(context)
                            .primaryColor,
                        //textCapitalization: widget.capitalization,
                        //enabled: widget.isEnabled,
                        autofocus: false,
                        obscureText: false,
                        inputFormatters:
                        <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                              RegExp('[0-9]'))
                        ],
                        // : widget.isAmount ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))] : widget.isNumber ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))] : null,
                        decoration: InputDecoration(

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  style: BorderStyle.none, width: 0),
                            ),
                            isDense: true,
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter Mobile Number',
                            //'password'.tr,
                            fillColor: AppColors.lightGreyColor,
                            //Theme.of(context).cardColor,
                            // hintStyle: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).hintColor),
                            filled: true,
                            // prefixText: '+1 | ',
                            prefixStyle: TextStyle(
                                color: AppColors.greyColor)
                        ),
                      ),
                    ),

                    ),
                  ]),
                ]),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: RoundButton(
                width: size.width,
                //isLoading: authViewModel.loading,
                round: 5.0,
                color: Color(0xFF495AFF),
                title: 'Verify',
                onPress: () {
                registerUser(context);
                  // Navigator.pushNamed(context, RoutesName.login);

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
              height: size.height * 0.025,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 10,
                  minVerticalPadding: 0,
                  leading:  Checkbox(value: check,
                    activeColor: Color(0xFF495AFF),
                    onChanged: (bool? value) {


                    },),
                  title: Text(
                    'I understand that my phone number will be used for verification purposes and to send important account-related notifications',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.start,
                  ),

                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),

          ],
        ),
      ),
    );
  }

  Future registerUser(BuildContext context) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        useSafeArea: false,
        barrierDismissible: false,
        builder: (context) => WillPopScope(
          onWillPop: () async => false,
          child: StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  insetPadding: EdgeInsets.all(0),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height*0.02,
                        ),

                        Container(
                          width: size.width*0.8,
                          child: Row(
                            children: [

                              IconButton(onPressed: () {

                                Navigator.pop(context);

                              }, icon: Icon(Icons.arrow_back, size: 20, color: Colors.black,))

                            ],
                          ),
                        ),


                        Center(
                          child: SizedBox(
                            // height: size.height*0.5,
                            width: size.width*0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset('assets/images/verifyCode.jpg', fit: BoxFit.scaleDown,
                                // height: size.height*0.5,
                                width: size.width*0.8,
                                // height: 80,
                                // width: 80,
                              ),
                            ),
                          ),
                        ),


                        SizedBox(
                          height: size.height*0.015,
                        ),


                        Center(
                            child: Text('Verify Your Number', style: TextStyle(color: Color(0xFF585858), fontSize: 25,fontWeight: FontWeight.bold),)
                        ),

                        SizedBox(
                          height: size.height*0.015,
                        ),

                        Container(
                          width: size.width*0.8,
                          child: Center(
                              child: Text('To ensure security, we\'ve sent a one-time password (OTP) to your registered mobile number. Please enter the OTP below to continue.',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: AppColors.greyColor, fontSize: 14,),)
                          ),
                        ),

                        SizedBox(
                          height: size.height*0.035,
                        ),



                        Form(
                          key: formKey,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0),
                              child: PinCodeTextField(
                                autoDisposeControllers: false,
                                backgroundColor: Colors.white,
                                appContext: context,
                                pastedTextStyle: TextStyle(
                                  color: Colors.green.shade600,
                                  fontWeight: FontWeight.bold,
                                ),
                                length: 6,
                                obscureText: true,
                                obscuringCharacter: '*',
                                // obscuringWidget: const FlutterLogo(
                                //   size: 24,
                                // ),
                                blinkWhenObscuring: true,
                                animationType: AnimationType.fade,
                                validator: (v) {
                                  if (v!.length < 3) {
                                    return "";
                                  } else {
                                    return null;
                                  }
                                },
                                pinTheme: PinTheme(
                                  selectedColor: Colors.black,

                                  activeColor: AppColors.lightGreyColor,
                                  selectedFillColor: AppColors.lightGreyColor,
                                  shape: PinCodeFieldShape.box,
                                  inactiveFillColor: AppColors.lightGreyColor,
                                  inactiveColor: AppColors.lightGreyColor,
                                  borderRadius: BorderRadius.circular(5),
                                  borderWidth: 0.5,
                                  fieldHeight: 40,
                                  fieldWidth: 35,
                                  activeFillColor: AppColors.lightGreyColor,
                                ),
                                cursorColor: Colors.black,
                                animationDuration: const Duration(milliseconds: 300),
                                enableActiveFill: true,
                                //  errorAnimationController: errorController,
                                controller: textEditingController,
                                keyboardType: TextInputType.number,
                                boxShadows: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.black12,
                                    blurRadius: 10,
                                  )
                                ],
                                onCompleted: (v) {
                                  debugPrint("Completed");
                                },
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: (value) {
                                  debugPrint(value);
                                  setState(() {
                                    currentText = value;
                                  });
                                },
                                beforeTextPaste: (text) {
                                  debugPrint("Allowing to paste $text");
                                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                  return true;
                                },
                              )),
                        ),
                        SizedBox(
                          height: size.height*0.02,
                        ),

                        Center(
                            child: Text('Resend Code', style: TextStyle(color: AppColors.greenColor2, fontSize: 15,fontWeight: FontWeight.w500),)
                        ),


                        SizedBox(
                          height: size.height*0.03,
                        ),


                        isVerify ? Center(child: CircularProgressIndicator(
                          color: AppColors.purpleColor,
                          strokeWidth: 1,
                        )) :
                        Padding(
                          padding: const EdgeInsets.only(left: 2,right: 2),
                          child: Container(

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.0, 1.0],
                                colors: [
                                  AppColors.greenColor2,
                                  AppColors.greenColor2,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all(Size(size.width, 50)),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                                  // elevation: MaterialStateProperty.all(3),
                                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                                onPressed: (){
                                  // Navigator.push(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder: (_, __, ___) => LoginView(),
                                  //     transitionDuration: Duration(milliseconds: 200),
                                  //     transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                                  //   ),
                                  // );



                                  accountVerified(context);



                                },
                                child: Text(
                                    "Confirm",
                                  style:  TextStyle(color:

                                  Colors.white),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.03,
                        ),

                        Center(
                            child: Text('Change phone number', style: TextStyle(color: AppColors.greenColor2, fontSize: 15,fontWeight: FontWeight.w500),)
                        ),


                        SizedBox(
                          height: size.height*0.03,
                        ),


                      ],
                    ),
                  ),

                );
              }),
        )
    );


  }

  Future accountVerified(BuildContext context) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        // useSafeArea: false,
        barrierDismissible: true,
        builder: (context) => WillPopScope(
          onWillPop: () async => false,
          child: StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                 // insetPadding: EdgeInsets.all(0),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: size.height*0.02,
                      ),



                      Center(
                        child: SizedBox(
                           height: size.height*0.1,
                          width: size.width*0.8,
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Image.asset('assets/images/check.png', fit: BoxFit.scaleDown,
                              // height: size.height*0.5,
                              width: size.width*0.8,
                              // height: 80,
                              // width: 80,
                            ),
                          ),
                        ),
                      ),


                      SizedBox(
                        height: size.height*0.015,
                      ),


                      Center(
                          child: Text('Verified!!', style: TextStyle(color: Color(0xFF585858), fontSize: 25,fontWeight: FontWeight.bold),)
                      ),

                      SizedBox(
                        height: size.height*0.015,
                      ),

                      Container(
                        width: size.width*0.8,
                        child: Center(
                            child: Text('Yahoo! You have successfully verified the account',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColors.greyColor, fontSize: 14,),)
                        ),
                      ),

                      SizedBox(
                        height: size.height*0.035,
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 2,right: 2),
                        child: Container(

                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                              colors: [
                                Color(0xFF2196f3),
                                Color(0xFF2196f3),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(Size(size.width, 50)),
                                backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                                // elevation: MaterialStateProperty.all(3),
                                shadowColor: MaterialStateProperty.all(Colors.transparent),
                              ),
                              onPressed: (){
                                // Navigator.push(
                                //   context,
                                //   PageRouteBuilder(
                                //     pageBuilder: (_, __, ___) => LoginView(),
                                //     transitionDuration: Duration(milliseconds: 200),
                                //     transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                                //   ),
                                // );

                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => LoginView(),
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
                              child: Text(
                                "Go to Login",
                                style:  TextStyle(color:

                                Colors.white),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: size.height*0.03,
                      ),

                    ],
                  ),

                );
              }),
        )
    );


  }

}
