// import 'package:get_it/get_it.dart';
// import 'package:interack/core/helper/navigation_service.dart';
// import 'package:interack/core/viewmodel/network_view_model.dart';
// import 'package:interack/core/viewmodel/views/create_pin/create_pin_viewmodel.dart';
// import 'package:interack/core/viewmodel/views/edit_profile/change_number_viewmodel.dart';
// import 'package:interack/core/viewmodel/views/edit_profile/edit_profile_viewmodel.dart';
// import 'package:interack/core/viewmodel/views/homescreen/homescreen_viewmodel.dart';
// import 'package:interack/core/viewmodel/views/pinboard/comments_viewmodel.dart';
// import 'package:interack/core/viewmodel/views/pinboard/pinboard_viewmodel.dart';
// import 'package:interack/core/viewmodel/views/setting_viewmodel.dart';
// import 'package:interack/core/viewmodel/views/user_profile/user_profile_viewmodel.dart';

// final locator = GetIt.instance;

// void setupLocator() {
//   // Repository

//   //OR
//   //GetIt.I.registerSingleton<DashboardRepository>(DashboardRepository());

//   // ViewModels
//   locator.registerLazySingleton(() => NetworkViewModel());

//   // Preferences

//   // Services
//   locator.registerLazySingleton(() => NavigationService());
//   locator.registerLazySingleton(() => SettingViewModel());
//   locator.registerLazySingleton(() => EditProfileViewModel());
//   locator.registerLazySingleton(() => ChangeNumberViewModel());
//   locator.registerLazySingleton(() => CreatePinViewModel());
//   locator.registerLazySingleton(() => HomeScreenViewModel());
//   locator.registerLazySingleton(() => PinboardViewModel());
//   locator.registerLazySingleton(() => CommentsViewModel());
//   locator.registerLazySingleton(() => UserProfileViewModel());
// }
