import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/view/circles/add_circle_view.dart';
import 'package:jam3ia_flutter_app/view/circles/circle_screen.dart';
import 'package:jam3ia_flutter_app/view/createCircle/create_circle_view.dart';
import 'package:jam3ia_flutter_app/view/home/home_view.dart';
import 'package:jam3ia_flutter_app/view/settings/setting_view.dart';

//class needs to extend StatefulWidget since we need to make changes to the bottom app bar according to the user clicks
class DashboardView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardViewState();
  }
}

class DashboardViewState extends State<DashboardView> {
  bool clickedCentreFAB = false; //boolean used to handle container animation which expands from the FAB
  int selectedIndex = 0; //to handle which item is currently selected in the bottom app bar
  String text = "Home";

  int _selectedIndex = 0;
  List<Widget> _pages = [
    HomeView(),
    // MyContent(),
    SettingView()
  ];


  //call this method on click of each bottom app bar item to update the screen
  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      if(index== 0) {
        setState(() {
          _pages[0] = HomeView();
        });
      }  else if(index== 1) {
        setState(() {
          _pages[1] = SettingView();
        });
      } else {
        setState(() {
          _pages[2] = AddCircleView();
        });
      }

      text = buttonText;
    });
  }


  void _showBottomSheet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: size.height*0.4,
          color: Colors.transparent,

          child: Container(
            decoration: const  BoxDecoration(
                color: AppColors.lightGreyColor,
                borderRadius:  BorderRadius.only(
                    topLeft:  Radius.circular(30.0),
                    topRight:  Radius.circular(30.0))),
            child: Column(
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
                  height: size.height*0.02,
                ),
                Container(
                  width: size.width*0.9,
                  child: Text('What would you like to do?', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: size.height*0.02,
                ),

                Container(
                  height: 40,
                  // color: AppColors.lightGreyColor,
                  width: size.width*0.9,
                  child: Center(
                    child: ListTile(
                      onTap: () {
                      //  Navigator.pushNamed(context, RoutesName.circleView);

                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => CircleView(),
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
                      hoverColor: AppColors.whiteColor,
                      splashColor: AppColors.whiteColor,
                      minLeadingWidth: 40,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.zero,
                      leading:Padding(
                        padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                        child: Container(
                          width: 40,height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.purpleColor.withOpacity(0.2)
                          ),
                          child: Center(child: Icon(Icons.account_balance_wallet_outlined, size: 20,color: AppColors.purpleColor,),),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 8),
                      //   child: Icon(Icons.account_balance_wallet_outlined, size: 20,color: AppColors.purpleColor,),
                      // ),
                      title: Text('Find a specific circle', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                      trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height*0.01,
                ),
                Container(
                  height: 40,
                  width: size.width*0.9,
                  child: ListTile(
                    minLeadingWidth: 40,
                    minVerticalPadding: 0,
                    horizontalTitleGap: 10,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => CircleView(),
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
                    contentPadding: EdgeInsets.zero,
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 4,bottom: 6,right: 8),
                      child: Container(
                        width: 40,height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.purpleColor.withOpacity(0.2)
                        ),
                        child: Center(child: Icon(Icons.search, size: 20,color: AppColors.purpleColor,),),
                      ),
                    ),
                    title: Text('Browse all circles', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                    trailing: Icon(Icons.arrow_forward_ios, color: AppColors.purpleColor,size: 13,),
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      body: _pages.elementAt(selectedIndex),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //specify the location of the FAB
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
     //     updateTabSelection(2, "Home");
          _showBottomSheet(context);
          setState(() {
            clickedCentreFAB = !clickedCentreFAB; //to update the animated container
          });
        },
        tooltip: "Add Circle",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(left: 0.0, right: 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                //update the bottom app bar view each time an item is clicked
                onPressed: () {
                  updateTabSelection(0, "Home");
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                iconSize: 27.0,
                icon: Image.asset('assets/images/home.png',
                  color: _selectedIndex == 0 ? Colors.orange : AppColors.greyColor,
                  fit: BoxFit.scaleDown,width: 25,height: 25,),
              ),
              //to leave space in between the bottom app bar items and below the FAB
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(1, "settings");
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                iconSize: 27.0,
                icon: Image.asset('assets/images/user.png',
                  color: _selectedIndex == 1 ? Colors.orange : AppColors.greyColor,
                  fit: BoxFit.scaleDown,width: 25,height: 25,),
              ),
            ],
          ),
        ),
        //to add a space between the FAB and BottomAppBar
        shape: CircularNotchedRectangle(),
        //color of the BottomAppBar

      ),
    );
  }
}