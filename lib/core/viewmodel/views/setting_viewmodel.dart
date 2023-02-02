// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:interack/core/constants/constants.dart';
// import 'package:interack/core/localization/app_localizations.dart';
// import 'package:interack/core/models/user_data.dart';
// import 'package:interack/core/persistence/preference_helper.dart';
// import 'package:interack/ui/shared/custom_toast.dart';

// import '../base_model.dart';

// class SettingViewModel extends BaseModel {
//   Future<bool> deleteAccount(BuildContext context) async {
//     try {
//       UserData userData = await PreferenceHelper.getUserRegular();
//       log(userData.id);
//       await FirebaseFirestore.instance
//           .collection(USER)
//           .doc(userData.id)
//           .delete();
//       User? user = FirebaseAuth.instance.currentUser;
//       user!.delete();
//       await PreferenceHelper.clearPreference();
//       CustomToast.showToast(
//           context: context,
//           message: AppLocalizations.of(context).translate('account_deleted'));
//       return true;
//     } on FirebaseException catch (e) {
//       log(e.message!);
//       return false;
//     }
//   }
// }
