// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:interack/core/constants/color_constants.dart';
// import 'package:interack/core/constants/image_constants.dart';
// import 'package:interack/ui/views/bottomNavigation/create_pin_tab/create_pin.dart';
// import 'package:interack/ui/views/bottomNavigation/notification_tab/push_notifications.dart';
// import 'package:interack/ui/views/bottomNavigation/profile_tab/own_profile.dart';
// import 'Home_tab/home_screen.dart';
// import 'nearby_tab/people_nearby.dart';

// class BottomNavigationTabs extends StatefulWidget {
//   final int index;
//   const BottomNavigationTabs(this.index, {Key? key}) : super(key: key);

//   @override
//   _BottomNavigationTabsState createState() => _BottomNavigationTabsState();
// }

// class _BottomNavigationTabsState extends State<BottomNavigationTabs>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   int currentIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       currentIndex = widget.index;
//     });
//     _tabController = TabController(vsync: this, length: 5, initialIndex: widget.index);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: currentIndex,
//         children: const <Widget>[
//           HomeScreen(),
//           PeopleNearBy(),
//           CreatePin(),
//           PushNotifications(),
//           OwnProfile()
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           height: 65,
//           decoration: BoxDecoration(
//               color: const Color(ColorConstants.white1),
//               borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//               boxShadow: [
//                 BoxShadow(
//                     color: const Color(ColorConstants.black1).withOpacity(0.25),
//                     offset: const Offset(0, 0),
//                     blurRadius: 10)
//               ]),
//           child: TabBar(
//             onTap: (index) {
//               setState(() {
//                 currentIndex = index;
//               });
//             },
//             indicator: const BoxDecoration(),
//             tabs: <Widget>[
//               Tab(
//                   child: SvgPicture.asset(ImageConstants.feed,
//                       color: currentIndex == 0
//                           ? const Color(ColorConstants.black1)
//                           : const Color(ColorConstants.grey1))),
//               Tab(
//                   child: SvgPicture.asset(ImageConstants.search,
//                       color: currentIndex == 1
//                           ? const Color(ColorConstants.black1)
//                           : const Color(ColorConstants.grey1))),
//               Tab(
//                   child: SvgPicture.asset(ImageConstants.add,
//                       color: currentIndex == 2
//                           ? const Color(ColorConstants.black1)
//                           : const Color(ColorConstants.grey1))),
//               Tab(
//                   child: SvgPicture.asset(ImageConstants.bell,
//                       color: currentIndex == 3
//                           ? const Color(ColorConstants.black1)
//                           : const Color(ColorConstants.grey1))),
//               Tab(
//                   child: SvgPicture.asset(ImageConstants.user,
//                       color: currentIndex == 4
//                           ? const Color(ColorConstants.black1)
//                           : const Color(ColorConstants.grey1))),
//             ],
//             controller: _tabController,
//           ),
//         ),
//       ),
//     );
//   }
// }
