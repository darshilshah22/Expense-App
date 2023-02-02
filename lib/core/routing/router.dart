import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.splashRoute:
      //   return _getPageRoute(const SplashScreen(), settings);
      // case Routes.loginRoute:
      //   return _getBottomPageRoute(const LoginView(), settings);
      // case Routes.bottomNavigationTab:
      //   int args = settings.arguments as int;
      //   return _getBottomPageRoute(BottomNavigationTabs(args), settings);
      // case Routes.userProfileRoute:
      //   UserData args = settings.arguments as UserData;
      //   return _getLeftPageRoute(UserProfile(args), settings);
      // case Routes.pinboardRoute:
      //   PinBoardArgs? args = settings.arguments as PinBoardArgs;
      //   return _getLeftPageRoute(PinBoard(args.userData, args.isOwn, args.isTagged, args.pins), settings);
      // case Routes.likesRoute:
      //   List<String> args = settings.arguments as List<String>;
      //   return _getLeftPageRoute(LikesScreen(args), settings);
      // case Routes.commentRoute:
      //   PinData args = settings.arguments as PinData;
      //   return _getLeftPageRoute(CommentScreen(args), settings);
      // case Routes.followersScreenRoute:
      //   List<String> args = settings.arguments as List<String>;
      //   return _getLeftPageRoute(FollowerScreen(args), settings);
      // case Routes.editProfileRoute:
      //   return _getLeftPageRoute(const EditProfile(), settings);
      // case Routes.settingsRoute:
      //   UserData args = settings.arguments as UserData;
      //   return _getLeftPageRoute(Settings(args), settings);
      // case Routes.changePasswordRoute:
      //   bool args = settings.arguments as bool;
      //   return _getLeftPageRoute(ChangePassword(args), settings);
      // case Routes.changeNumberRoute:
      //   return _getLeftPageRoute(const ChangeNumber(), settings);
      // case Routes.locationPinsRoute:
      //   return _getLeftPageRoute(const LocationPins(), settings);
      // case Routes.webViewScreenRoute:
      //   return _getLeftPageRoute(const WebViewScreen(), settings);
      default:
      //return _getPageRoute(HomeView(), settings);

        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }

  static PageRoute _getPageRoute(Widget child, RouteSettings settings) {
    return _FadeRoute(child: child, routeName: settings.name, arguments: settings.arguments);
  }

  static PageRoute _getRightPageRoute(Widget child, RouteSettings settings) {
    return _FadeRightRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }

  static PageRoute _getLeftPageRoute(Widget child, RouteSettings settings) {
    return _FadeLeftRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }

  static Route _getBottomPageRoute(Widget child, RouteSettings settings) {
    return _FadeBottomRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }
}

class _FadeBottomRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeBottomRoute(
      {required this.child, required this.routeName, required this.arguments})
      : super(
    settings: RouteSettings(name: routeName, arguments: arguments),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child!,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeRoute({this.child, this.routeName, this.arguments})
      : super(
    settings: RouteSettings(name: routeName, arguments: arguments),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child!,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}

class _FadeRightRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeRightRoute({this.child, this.routeName, this.arguments})
      : super(
    settings: RouteSettings(name: routeName, arguments: arguments),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child!,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class _FadeLeftRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeLeftRoute(
      {required this.child, required this.routeName, required this.arguments})
      : super(
    settings: RouteSettings(name: routeName, arguments: arguments),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child!,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}