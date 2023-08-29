import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/utils/routes/routes.dart';
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
import 'package:jam3ia_flutter_app/view/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}


class FadePageRoute<T> extends PageRoute<T> {
  final WidgetBuilder builder;

  FadePageRoute({required this.builder})
      : super(
    fullscreenDialog: false,
  );

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => '';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 500);
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == 'login_view') {
          return FadePageRoute(builder: (_) => LoginView());
        } else if (settings.name == 'splash_view') {
          return FadePageRoute(builder: (_) => SplashView());
        } else if (settings.name == 'register_view') {
          return FadePageRoute(builder: (_) => RegisterView());
        } else if (settings.name == 'verify_phone_view') {
          return FadePageRoute(builder: (_) => VerifyPhoneView());
        } else if (settings.name == 'dashboard_view') {
          return FadePageRoute(builder: (_) => DashboardView());
        } else if (settings.name == 'circle_view') {
          return FadePageRoute(builder: (_) => CircleView());
        } else if (settings.name == 'my_circle_view') {
          return FadePageRoute(builder: (_) => MyCirclesView());
        } else if (settings.name == 'installmentReport_view') {
          return FadePageRoute(builder: (_) => InstallmentReportView());
        } else if (settings.name == 'payoutMonth_view') {
          return FadePageRoute(builder: (_) => PayoutMonthView());
        }
        return MaterialPageRoute(builder: (_) => HomeView());
      },
      initialRoute: RoutesName.splash,
      home: VerifyPhoneView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
