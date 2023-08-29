import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/utils/utils.dart';
import 'package:jam3ia_flutter_app/view/authentication/register_view.dart';
import 'package:jam3ia_flutter_app/view/dashboard/dashboard_view.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  ValueNotifier obsecurePassword = ValueNotifier(true);
  bool check = false;

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
      body:  Container(
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
                        child: Image.asset('assets/images/logo.png'),
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
                      height: size.height * 0.25,
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
                                            AppText.login,
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
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: AppColors.lightGreyColor,
                                      ),
                                      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
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

                                            const EdgeInsets.only(left: 20, right: 20, top: 0),
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
                                    Padding(
                                      padding:EdgeInsets.only(left: 10, right: 20, top: 0),
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          Row(

                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children:[
                                            Checkbox(value: check,
                                              activeColor: Colors.green,
                                              onChanged: (bool? value) {
                                              setState(() {
                                                check = !check;
                                              });
                                              },),
                                            Text(
                                              'Remember me',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: AppColors.blackColor,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.start,
                                            ),
                                          ]),
                                            Text(
                                              'Forget password?',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: AppColors.blackColor,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.start,
                                            ),
                                        ],),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.025,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      child: RoundButton(
                                        width: size.width,
                                        //isLoading: authViewModel.loading,
                                        round: 30.0,
                                        color: AppColors.greenColor2,
                                        title: AppText.continueText,
                                        onPress: () {

                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation, secondaryAnimation) => DashboardView(),
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

                                        //  Navigator.pushNamed(context, RoutesName.dashView);

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


                          Container(
                            width: size.width * 0.85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      height: 50,
                                      width: size.width*0.4,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.lightGreyColor, width: 2),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 11,bottom: 11,left: 0,right: 8),
                                            child: Image.asset('assets/images/facebook.png', fit: BoxFit.scaleDown,

                                              height: 30,
                                            ),
                                          ),
                                          Text('Facebook', style: TextStyle(color: Colors.black),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      height: 50,
                                      width: size.width*0.4,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: AppColors.lightGreyColor, width: 2),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 11,bottom: 11,left: 0,right: 8),
                                            child: Image.asset('assets/images/google.png', fit: BoxFit.scaleDown,

                                              height: 30,
                                            ),
                                          ),
                                          Text('Google', style: TextStyle(color: Colors.black),)
                                        ],
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),

                          SizedBox(
                                      height: size.height * 0.05,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                       // Navigator.pushNamed(context, RoutesName.register);

                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation, secondaryAnimation) => RegisterView(),
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
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            AppText.registerLine,
                                            style: TextStyle(
                                                color: AppColors.blackColor,
                                                fontSize: TextStylesData.smallFontSize,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            " Sign up",
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
      //                   Color(0xFF7BDAD6),
      //                   Color(0xFF7BDAD6),
      //                   //AppColors.darkGreenColor,
      //                   // AppColors.lightGreenColor,
      //                 ],
      //                 stops: [
      //                   0.0,
      //                   1.0
      //                 ],
      //                 begin: Alignment.centerLeft,
      //                 end: Alignment.centerRight,
      //                 tileMode: TileMode.repeated),
      //           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
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
      //                         fontWeight: FontWeight.w500),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                 )),
      //           ],
      //         ),
      //       ),
      //       Column(
      //         children: [

      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
