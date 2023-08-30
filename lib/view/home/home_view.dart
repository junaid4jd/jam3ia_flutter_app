import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/view/circle_detail_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int current = 0;
  int selectedIndex = 1000;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      selectedIndex = 1000;
    });
    super.initState();
  }
  List<Widget> banners1 = [

    ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/images/slide1.png',fit: BoxFit.cover,)),
    ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/images/slide1.png',fit: BoxFit.cover,)),
    ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/images/slide1.png',fit: BoxFit.cover,)),

  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,

        iconTheme: IconThemeData(color: AppColors.blackColor),
        leading: Icon(Icons.menu, color: AppColors.whiteColor,),
        backgroundColor: AppColors.orangeColor.withOpacity(0.75),
        centerTitle: true,
        automaticallyImplyLeading: false,

        title: Text(
          AppText.appName,
          style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Image.asset('assets/images/uk.png', height: 25,width: 30,fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text('EN', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),textAlign: TextAlign.center),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [


          Container(
              child:Stack(children: <Widget>[ //stack overlaps widgets
                Opacity( //semi red clippath with more height and with 0.5 opacity
                  opacity: 0.5,
                  child: ClipPath(
                    clipper:WaveClipper(), //set our custom wave clipper
                    child:Container(
                      color: AppColors.orangeColor,
                      height:200,
                    ),
                  ),
                ),

                ClipPath(  //upper clippath with less height
                  clipper:WaveClipper(), //set our custom wave clipper.
                  child:Container(
                    padding: EdgeInsets.only(bottom: 50),
                    color:AppColors.orangeColor.withOpacity(0.5),
                    height:180,
                    alignment: Alignment.topLeft,
                    child:            Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   child: Image.asset('assets/images/logo.png', height: 100,width: 100,fit: BoxFit.scaleDown,),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 0),
                          child: Text('Welcome', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 8),
                          child: Text('John Doe!', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center),
                        ),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 10),
                            child:
                            Text('Bronze', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),textAlign: TextAlign.center),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset('assets/images/start.jpg', width: 25,height: 25,))
                        ],),
                      ],
                    ),

                  ),
                ),
              ],)
          ),
          SizedBox(
            height: size.height*0.02,
          ),
          Container(
            width: size.width*0.9,
            child: Text('My Circles', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: size.height*0.02,
          ),
          Container(
            height: size.height*0.75,
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              // implement GridView.builder
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      //childAspectRatio: 16 / 9,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 6,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        //Navigator.pushNamed(context, RoutesName.payoutMonth);

                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => CircleDetailView(),
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

                        //CircleDetailView

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                          index == 0 ? AppColors.purpleColor :
                          index == 1 ? AppColors.darkBlueColor.withOpacity(0.7) :
                          index == 2 ? AppColors.darkRedColor.withOpacity(0.8) :
                          index == 3 ? AppColors.greenColor :
                          index == 4 ? AppColors.lightBlueColor :
                          index == 5 ? AppColors.orangeColor :

                          AppColors.whiteColor
                          ,
                          //selectedIndex == index ? AppColors.purpleColor : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(
                          //     color:selectedIndex == index ? AppColors.purpleColor : AppColors.darkGreenColor,
                          //     width: 1
                          // ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8,bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color:
                                        // DummyData.monthList[index].locked ? AppColors.greyColor :

                                        index == 0 ? AppColors.darkGreenColor :
                                        AppColors.darkRedColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8, top: 4, bottom: 4),
                                      child: Text(
                                        index == 0 ? 'Running'
                                            : 'Pending',
                                        style: TextStyle(
                                          fontSize: 12,
                                            color:
                                            // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                            AppColors.whiteColor,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,bottom: 4,top: 4),
                                child: Container(
                                  // width: size.width*0.9,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Payout amount', style: TextStyle(color:
                                  AppColors.whiteColor
                                      , fontSize: 14, fontWeight: FontWeight.w400),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,bottom: 10,top: 4),
                                child: Container(
                                  child: Row(children: [
                                    Icon(Icons.wallet, color:

                                    // index == 0 ? AppColors.whiteColor :
                                    // index == 1 ? AppColors.whiteColor :
                                    // index == 2 ? AppColors.darkRedColor.withOpacity(0.8) :
                                    // index == 3 ? AppColors.greenColor :
                                    // index == 4 ? AppColors.lightBlueColor :
                                    // index == 5 ? AppColors.orangeColor :

                                    AppColors.whiteColor, size: 20,),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 10),
                                      child: Text('10,000 EGP', style: TextStyle(color:  AppColors.blackColor, fontSize: 16, fontWeight: FontWeight.bold),),
                                    ),
                                  ],),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  width: size.width*0.9,
                                  child: Text('Payout date', style: TextStyle(color: AppColors.whiteColor, fontSize: 14, fontWeight: FontWeight.w400),),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8,bottom: 0,top: 4),
                                child: Container(
                                  child: Row(children: [
                                    Icon(Icons.calendar_month, color:  AppColors.whiteColor, size: 20,),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 10),
                                      child: Text('Oct 23', style: TextStyle(color:  AppColors.blackColor, fontSize: 16, fontWeight: FontWeight.bold),),
                                    ),
                                  ],),
                                ),
                              ),



                            ],),
                        ),
                      ),
                    );
                  }),
            ),
          ),

          // Container(
          //   //width: size.width*0.9,
          //   height: size.height*0.55,
          //   child: ListView.builder(
          //     padding: EdgeInsets.only(top: 8),
          //     scrollDirection: Axis.vertical,
          //       shrinkWrap: true,
          //       itemCount: 3,
          //       itemBuilder: ( context ,  index) {
          //     return GestureDetector(
          //       onTap: () {
          //         setState(() {
          //           selectedIndex = index;
          //         });
          //         //Navigator.pushNamed(context, RoutesName.payoutMonth);
          //
          //         Navigator.push(
          //           context,
          //           PageRouteBuilder(
          //             pageBuilder: (context, animation, secondaryAnimation) => CircleDetailView(),
          //             transitionsBuilder: (context, animation, secondaryAnimation, child) {
          //               const begin = Offset(1.0, 0.0);
          //               const end = Offset.zero;
          //               const curve = Curves.easeIn;
          //               var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          //               var offsetAnimation = animation.drive(tween);
          //
          //               return SlideTransition(position: offsetAnimation, child: child);
          //             },
          //           ),
          //         );
          //
          //         //CircleDetailView
          //
          //       },
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 15,right: 15, bottom: 4, top: 4),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             color:selectedIndex == index ? AppColors.purpleColor : AppColors.whiteColor,
          //             borderRadius: BorderRadius.circular(20),
          //             border: Border.all(
          //                 color:selectedIndex == index ? AppColors.purpleColor : AppColors.darkGreenColor,
          //                 width: 1
          //             ),
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.only(top: 8,bottom: 8),
          //             child: Column(
          //               children: [
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Padding(
          //                       padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
          //                       child: Container(
          //                         // width: size.width*0.9,
          //                         alignment: Alignment.centerLeft,
          //                         child: Text('Payout amount', style: TextStyle(color:
          //                         selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor
          //                             , fontSize: 14, fontWeight: FontWeight.w400),),
          //                       ),
          //                     ),
          //                     Padding(
          //                       padding: const EdgeInsets.only(right: 10),
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                             color:
          //                             // DummyData.monthList[index].locked ? AppColors.greyColor :
          //
          //                             index == 0 ? AppColors.darkGreenColor :
          //                             AppColors.darkRedColor.withOpacity(0.5),
          //                             borderRadius: BorderRadius.circular(15)),
          //                         child: Padding(
          //                           padding: const EdgeInsets.only(
          //                               left: 8, right: 8, top: 4, bottom: 4),
          //                           child: Text(
          //                             index == 0 ? 'Running'
          //                                 : 'Pending',
          //                             style: TextStyle(
          //                                 color:
          //                                // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
          //                                 AppColors.whiteColor,
          //                                 fontWeight: FontWeight.w500),
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
          //                   child: Container(
          //                     child: Row(children: [
          //                       Icon(Icons.wallet, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
          //                       Padding(
          //                         padding:  EdgeInsets.only(left: 10),
          //                         child: Text('10,000 EGP', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
          //                       ),
          //                     ],),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 16),
          //                   child: Container(
          //                     width: size.width*0.9,
          //                     child: Text('Payout date', style: TextStyle(color:selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w400),),
          //                   ),
          //                 ),
          //                 Container(
          //                     height: 40,
          //                     child: ListTile(
          //                       minVerticalPadding: 0,
          //                       minLeadingWidth: 0,
          //                       horizontalTitleGap: 0,
          //                       title: Padding(
          //                         padding: const EdgeInsets.only(left: 10),
          //                         child: Text('Oct 23', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
          //                       ),
          //                       leading: Icon(Icons.calendar_month, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
          //                       trailing: Icon(Icons.arrow_forward_ios, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 15,),
          //                     )
          //
          //                 ),
          //
          //
          //               ],),
          //           ),
          //         ),
          //       ),
          //     );
          //   }),
          // )

        ],),
      ),

    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = new Path();
    path.lineTo(0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
