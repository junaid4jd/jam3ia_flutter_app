import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: AppColors.darkBlueColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text(
          'Upload documents',
          style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),
      body:  Container(
        width: size.width,
        height: size.height,
        decoration: new BoxDecoration(
          color: Colors.white,

        ),
        child: Stack(
           alignment: Alignment.topCenter,
          children: [


            Column(
              children: [
                Center(
                  child: Container(
                    height: size.height*0.2,
                    width: size.width,
                    color: AppColors.darkBlueColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   height: size.height * 0.01,
                        // ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: new LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 40,
                            animation: true,
                            backgroundColor: AppColors.whiteColor,
                            lineHeight: 40.0,
                            animationDuration: 2500,
                            barRadius: Radius.circular(10),
                            percent: 0.8,
                            center: Text("80.0%", style: TextStyle(color: AppColors.whiteColor, fontWeight: FontWeight.bold),),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.orange,
                          ),
                        ),
                      ),
                    ],),
                  ),
                ),
              ],
            ),
            Positioned(
              top: size.height*0.1,
              left: size.width*0.005,
              right: size.width*0.005,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(

                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(30)
                    ),

                    //            height: size.height,

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      // SizedBox(
                      //   height: size.height * 0.02,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                      //       child: Container(
                      //         // width: size.width*0.9,
                      //         alignment: Alignment.centerLeft,
                      //         child: Text('Upload signed documents for approval', style: TextStyle(color:
                      //         AppColors.blackColor
                      //             , fontSize: 18, fontWeight: FontWeight.w600),),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: size.height * 0.04,
                      // ),
                        Center(
                          child: SizedBox(
                             height: size.height*0.3,
                            width: size.width*0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset('assets/images/uploadDocuments.jpg', fit: BoxFit.cover,
                                // height: size.height*0.5,
                                width: size.width*0.6,
                                // height: 80,
                                // width: 80,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60, bottom: 30),
                          child: Container(
                            // width: size.width*0.9,
                            alignment: Alignment.centerLeft,
                            child: Text('Securely upload your docs with ease! Your data safe with us', style: TextStyle(color:
                            AppColors.blackColor
                                , fontSize: 14, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                          ),
                        ),
                      // SizedBox(
                      //   height: size.height * 0.04,
                      // ),


                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              width: size.width*0.6,
                              //isLoading: authViewModel.loading,
                              round: 30.0,
                              color: AppColors.darkGreenColor,
                              title: 'Upload bank transfer',
                              onPress: () {
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.orangeColor,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: AppColors.orangeColor, width: 1)
                                ),
                                child: Icon(Icons.add, size: 18,color: AppColors.whiteColor,),
                              ),
                            ),
                          ],
                        ),
                      ),


                      SizedBox(
                        height: size.height*0.025,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              width: size.width*0.6,
                              //isLoading: authViewModel.loading,
                              round: 30.0,
                              color: AppColors.darkGreenColor,
                              title: 'Upload Promissory',
                              onPress: () {
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.orangeColor,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: AppColors.orangeColor, width: 1)
                                ),
                                child: Icon(Icons.add, size: 18,color: AppColors.whiteColor,),
                              ),
                            ),
                          ],
                        ),
                      ),


                      SizedBox(
                        height: size.height*0.025,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              width: size.width*0.6,
                              //isLoading: authViewModel.loading,
                              round: 30.0,
                              color: AppColors.darkGreenColor,
                              title: 'Upload official agreement',
                              onPress: () {
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  //color: AppColors.darkBlueColor,
                                    color: AppColors.orangeColor,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: AppColors.orangeColor, width: 1)
                                ),
                                child: Icon(Icons.add, size: 18,color: AppColors.whiteColor,),
                              ),
                            ),
                          ],
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
                          color: AppColors.greenColor2,
                          title: 'Upload',
                          onPress: () {
                          },
                        ),
                      ),



                    ],),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );



      Scaffold(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundButton(
                width: size.width*0.88,
                //isLoading: authViewModel.loading,
                round: 30.0,
                color: AppColors.darkGreenColor,
                title: 'Upload bank transfer guarantee',
                onPress: () {
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    //color: AppColors.darkBlueColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.darkBlueColor, width: 1)
                  ),
                  child: Icon(Icons.add, size: 18,color: AppColors.darkBlueColor,),
                ),
              ),
            ],
          ),
        ),


        SizedBox(
          height: size.height*0.025,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundButton(
                width: size.width*0.88,
                //isLoading: authViewModel.loading,
                round: 30.0,
                color: AppColors.darkGreenColor,
                title: 'Upload Promissory',
                onPress: () {
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    //color: AppColors.darkBlueColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.darkBlueColor, width: 1)
                  ),
                  child: Icon(Icons.add, size: 18,color: AppColors.darkBlueColor,),
                ),
              ),
            ],
          ),
        ),


        SizedBox(
          height: size.height*0.025,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundButton(
                width: size.width*0.88,
                //isLoading: authViewModel.loading,
                round: 30.0,
                color: AppColors.darkGreenColor,
                title: 'Upload official agreement with Jam3ia',
                onPress: () {
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    //color: AppColors.darkBlueColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.darkBlueColor, width: 1)
                  ),
                  child: Icon(Icons.add, size: 18,color: AppColors.darkBlueColor,),
                ),
              ),
            ],
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
            color: AppColors.greenColor2,
            title: 'Upload',
            onPress: () {
            },
          ),
        ),



      ],),

    );
  }
}
