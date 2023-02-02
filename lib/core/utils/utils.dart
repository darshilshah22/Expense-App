
// import 'package:flutter/cupertino.dart';
// import 'package:interack/core/localization/app_localizations.dart';
// import 'package:interack/ui/shared/custom_toast.dart';

// class Utils{

//   static bool validateUserName(String value, BuildContext context) {
//     final validCharacter = RegExp(r'^[a-z0-9._]+$');
//     if(value.length < 3){
//       return false;
//     }else if(!validCharacter.hasMatch(value)){
//       return false;
//     }else{
//       return true;
//     }
//   }

//   static bool isCheckPassword(BuildContext context, String password, [int minLength = 8]) {
//     if(password.isEmpty){
//       CustomToast.showToast(
//           context: context, message: AppLocalizations.of(context).translate('enter_password'));
//       return false;
//     }else if(password.length < minLength){
//       CustomToast.showToast(
//           context: context, message: AppLocalizations.of(context).translate('pass_length'));
//       return false;
//     }else{
//       return true;
//     }
//   }
// }