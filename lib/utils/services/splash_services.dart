import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/view/onboarding/onboarding_view.dart';


class SplashServices {
  //Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthentication(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
   // Navigator.pushNamed(context, RoutesName.verifyPhone);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoardingView(),
      ), //MaterialPageRoute
    );
    // getUserData().then((value) async {
    //   if (kDebugMode) {
    //     print(value.toString());
    //   }
    //
    //   if (value.token.toString() == 'null' || value.token == '') {
    //     await Future.delayed(Duration(seconds: 2));
    //     Navigator.pushNamed(context, RoutesName.login);
    //   } else {
    //     await Future.delayed(Duration(seconds: 2));
    //     Navigator.pushNamedAndRemoveUntil(
    //         context, RoutesName.products, (route) => false);
    //     // Navigator.pushNamedAndRemoveUntil(context, RoutesName.products,);
    //   }
    // }).onError((error, stackTrace) {
    //   if (kDebugMode) {
    //     print(error.toString());
    //   }
    // });
  }
}


