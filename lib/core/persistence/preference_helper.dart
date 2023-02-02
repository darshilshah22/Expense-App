// import 'dart:convert';

// import 'package:interack/core/constants/constants.dart';
// import 'package:interack/core/models/pin_data.dart';
// import 'package:interack/core/models/user_data.dart';
// import 'package:interack/core/persistence/preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class PreferenceHelper{
//   static const fcmToken = "fcm_token";
//   static String userSet = "user_set";
//   static String pin = "pin";

//   static Future<bool> isRegistered() async {
//     return await Preferences.getBool(register, true);
//   }

//   static Future<bool> isLogin() async {
//     return await Preferences.getBool(login, true);
//   }

//   static setFcmToken(String fcm) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString(fcmToken, fcm);
//   }

//   getFcmToken() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? data = prefs.getString(fcmToken);
//     if (data != null && data.isNotEmpty) {
//       return data;
//     } else {
//       return null;
//     }
//   }

//   static setUserRegular(UserData user) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString(userSet, json.encode(user));
//   }

//   static getUserRegular() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? data = prefs.getString(userSet);
//     if (data != null && data.isNotEmpty) {
//       return UserData.fromJson(json.decode(data));
//     } else {
//       return null;
//     }
//   }

//   static setPins(List<PinData> pins) async{
//     await Preferences.setString(pin, json.encode(pins));
//   }

//   static Future<List<PinData>?> getPins() async {
//     List<PinData>? response = <PinData>[];
//     String data = await Preferences.getString(pin, '');
//     if (data != "[]" && data.isNotEmpty) {
//       response = (json.decode(data) as List)
//           .map((e) => PinData.fromJson(e))
//           .toList();
//       return response;
//     } else {
//       return response;
//     }
//   }

//   static Future<void> clearPreference() async {
//     await Preferences.remove(userSet);
//     await Preferences.remove(fcmToken);
//   }
// }
