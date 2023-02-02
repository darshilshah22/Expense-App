import 'package:flutter/material.dart';

import 'core/di/locator.dart';
import 'core/helper/navigation_service.dart';
import 'core/routing/router.dart';
import 'core/routing/routes.dart';

void main() async {
  runApp(const Interack());
}

class Interack extends StatefulWidget {
  const Interack({Key? key}) : super(key: key);

  @override
  _InterackState createState() => _InterackState();
}

class _InterackState extends State<Interack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext? context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context!);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      //navigatorKey: locator<NavigationService>().navigationKey,
      initialRoute: Routes.splashRoute,
      onGenerateRoute: PageRouter.generateRoute,
    );
  }
}
