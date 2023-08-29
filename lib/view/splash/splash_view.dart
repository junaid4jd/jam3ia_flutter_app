import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/utils/services/splash_services.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
// width: size.width,
// height: size.height,
          child: Stack(children: [
            Container(
            width: size.width,
            height: size.height,
            // color: AppColors.greenColor2,
             child: Image.asset('assets/images/splash_image.png',
                fit: BoxFit.cover,
                width: size.width,
                height: size.height,
             ),
            ),
            // Container(
            //   width: size.width,
            //   height: size.height,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         child: Image.asset('assets/images/logo.png', height: 100,width: 100,fit: BoxFit.scaleDown,),
            //       ),
            //       Center(
            //           child: Padding(
            //             padding: EdgeInsets.only(top: 10),
            //             child: Text(
            //               'Jam3ia',
            //               style: TextStyle(
            //                   fontSize: TextStylesData.headingSmallFontSize,
            //                   color: AppColors.blackColor,
            //                   fontWeight: FontWeight.bold),
            //               textAlign: TextAlign.center,
            //             ),
            //           )),
            //     ],
            //   ),
            // ),
          ],)


      ),
    );
  }
}
