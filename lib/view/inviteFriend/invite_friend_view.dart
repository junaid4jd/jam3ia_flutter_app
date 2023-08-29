import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';

class InviteFriendView extends StatefulWidget {
  const InviteFriendView({super.key});

  @override
  State<InviteFriendView> createState() => _InviteFriendViewState();
}

class _InviteFriendViewState extends State<InviteFriendView> {
  final TextEditingController _invitationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [

            Container(
              width: size.width,
              height: size.height*0.35,
              color: AppColors.lightBlueColor1,
              child: Column(children: [
                SizedBox(
                  height: size.height*0.06,
                ),
                Stack(children: [
                  Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_back, color: Colors.black,),
                        ),
                      ),
                    ),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Invite a friend',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: TextStylesData.titleFontSize),
                        ),
                      ),
                    ],
                  ),
                ],),

              ],),
            ),

            Positioned(
              top: size.height*0.15,
              child: Column(
                children: [
                  Container(
                    width: size.width*0.9,
                     height: size.height*0.6,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),

                    child: Column(children: [


                      SizedBox(
                        height: size.height*0.025,
                      ),


                      Center(
                          child: Text('Refer Friend', style: TextStyle(color: Color(0xFF585858), fontSize: 18,fontWeight: FontWeight.bold),)
                      ),

                      SizedBox(
                        height: size.height*0.015,
                      ),

                      Container(
                        width: size.width*0.6,
                        child: Center(
                            child: Text('Copy your code share it with your friends',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColors.greyColor, fontSize: 14,),)
                        ),
                      ),

                      // SizedBox(
                      //   height: size.height*0.035,
                      // ),


                      Center(
                        child: SizedBox(
                          // height: size.height*0.5,
                          width: size.width*0.8,
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Image.asset('assets/images/inviteFriend.jpg', fit: BoxFit.cover,
                               height: size.height*0.3,
                              width: size.width,
                              // height: 80,
                              // width: 80,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: size.width*0.6,
                        child: Center(
                            child: Text('Your code to invite',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColors.greyColor.withOpacity(0.8), fontSize: 13,),)
                        ),
                      ),

                      SizedBox(
                        height: size.height*0.035,
                      ),


                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          dashPattern: [8, 4],
                          strokeWidth: 1,
                          radius: Radius.circular(5),
                          child: TextFormField(
                            controller: _invitationController,
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
                              hintText: 'http://C:/Users/jam3i1/app/Jam3ia.pdf',
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8,right: 8),
                                child: GestureDetector(
                                    onTap: () {
                                      //  obsecurePassword.value = !obsecurePassword.value;
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.lightBlueColor1,
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      width: 60,
                                      height: 20,
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Copy',style: TextStyle(color: AppColors.whiteColor, fontSize: 12,),),
                                      ),
                                    )),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                              //add prefix icon

                              // errorText: "Error",

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color:  AppColors.lightGreyColor,
                                  width: 1,
                                ),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color:  AppColors.lightGreyColor,
                                  width: 1,
                                ),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
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
                      ),


                    ],),
                  ),

                  SizedBox(
                    height: size.height*0.05,
                  ),

                  Container(
                    width: size.width*0.6,
                    child: Center(
                        child: Text('Or share via',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColors.blackColor, fontSize: 14,),)
                    ),
                  ),


                  SizedBox(
                    height: size.height*0.05,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 0),
                    child: Container(

                      width: size.width,
                      child: Padding(
                        padding:EdgeInsets.only(left: 20, right: 20, bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: AppColors.lightGreyColor2,
                                  //borderRadius: BorderRadius.circular(20),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/messenger.png', height: 40, width: 40,),
                              )
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: AppColors.lightGreyColor2,
                                  //borderRadius: BorderRadius.circular(20),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/facebook.png', height: 40, width: 40,),
                              )
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: AppColors.lightGreyColor2,
                                  //borderRadius: BorderRadius.circular(20),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/twitter.png', height: 40, width: 40,),
                                )
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: AppColors.lightGreyColor2,
                                  //borderRadius: BorderRadius.circular(20),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/instagram.png', height: 40, width: 40,),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),




          ],
        ),
      ),

    );
  }
}