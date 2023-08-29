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
        leading: Icon(Icons.menu),
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TextStylesData.appBarRound),
        ),
        title: Text(
          AppText.appName,
          style: TextStyle(
              color: AppColors.darkGreenColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // userviewModel.remove().then((value) {
                //   Navigator.pushNamedAndRemoveUntil(
                //       context, RoutesName.login, (route) => false);
                // });
              },
              icon: Icon(
                Icons.notifications_active_outlined,
                color: AppColors.blackColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [

          SizedBox(
            height: size.height*0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Card(
                child: CarouselSlider(
                    items: banners1,
                    options: CarouselOptions(
                      height: size.height*0.2,
                      // aspectRatio: 1/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index, reason) {
                        setState(() {
                          current = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    )
                ),
              ),
            ),
          ),
          AnimatedSmoothIndicator(
            activeIndex: current,
            count: 3,//pages.length,
            effect:  JumpingDotEffect(
                dotHeight: 7,
                dotWidth: 7,
                jumpScale: .7,
                verticalOffset: 10,
                activeDotColor: AppColors.darkGreenColor,
                dotColor: Colors.grey),
          ),
          SizedBox(
            height: size.height*0.02,
          ),
          Container(
            width: size.width*0.9,
            child: Text('My Circles', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
          ),

          Container(
            //width: size.width*0.9,
            height: size.height*0.55,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 8),
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: ( context ,  index) {
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15, bottom: 4, top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color:selectedIndex == index ? AppColors.purpleColor : AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color:selectedIndex == index ? AppColors.purpleColor : AppColors.darkGreenColor,
                          width: 1
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                                child: Container(
                                  // width: size.width*0.9,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Payout amount', style: TextStyle(color:
                                  selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor
                                      , fontSize: 14, fontWeight: FontWeight.w400),),
                                ),
                              ),
                              Padding(
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
                                          color:
                                         // DummyData.monthList[index].locked ? AppColors.lightGreyColor :
                                          AppColors.whiteColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,bottom: 8,top: 4),
                            child: Container(
                              child: Row(children: [
                                Icon(Icons.wallet, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
                                Padding(
                                  padding:  EdgeInsets.only(left: 10),
                                  child: Text('10,000 EGP', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),
                              ],),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              width: size.width*0.9,
                              child: Text('Payout date', style: TextStyle(color:selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w400),),
                            ),
                          ),
                          Container(
                              height: 40,
                              child: ListTile(
                                minVerticalPadding: 0,
                                minLeadingWidth: 0,
                                horizontalTitleGap: 0,
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Oct 23', style: TextStyle(color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),
                                leading: Icon(Icons.calendar_month, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 20,),
                                trailing: Icon(Icons.arrow_forward_ios, color: selectedIndex == index ? AppColors.whiteColor : AppColors.blackColor, size: 15,),
                              )

                          ),


                        ],),
                    ),
                  ),
                ),
              );
            }),
          )

        ],),
      ),

    );
  }
}
