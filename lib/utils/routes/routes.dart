import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes_name.dart';
import 'package:jam3ia_flutter_app/view/authentication/login_view.dart';
import 'package:jam3ia_flutter_app/view/authentication/phone_view.dart';
import 'package:jam3ia_flutter_app/view/authentication/register_view.dart';
import 'package:jam3ia_flutter_app/view/circles/circle_screen.dart';
import 'package:jam3ia_flutter_app/view/dashboard/dashboard_view.dart';
import 'package:jam3ia_flutter_app/view/home/home_view.dart';
import 'package:jam3ia_flutter_app/view/installmentsReport/installment_report_view.dart';
import 'package:jam3ia_flutter_app/view/myCircles/my_circles_view.dart';
import 'package:jam3ia_flutter_app/view/payoutMonth/choose_payout_month_view.dart';
import 'package:jam3ia_flutter_app/view/screening_view/screening_view.dart';
import 'package:jam3ia_flutter_app/view/splash/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());
      case RoutesName.verifyPhone:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  VerifyPhoneView());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.register:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterView());

      case RoutesName.dashView:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  DashboardView());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      case RoutesName.circleView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CircleView());
      case RoutesName.installmentReportView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const InstallmentReportView());
      case RoutesName.payoutMonth:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PayoutMonthView());
      case RoutesName.mycircleView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MyCirclesView());
      case RoutesName.screening:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ScreeningView());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Center(
                  child: Text('No Route Defined'),
                ));
    }
  }
}
