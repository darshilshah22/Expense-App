// import 'package:flutter/material.dart';
// import 'package:interack/core/constants/color_constants.dart';
// import 'package:interack/core/constants/font_family_constants.dart';
// import 'package:interack/core/constants/image_constants.dart';
// import 'package:interack/core/localization/app_localizations.dart';

// class AlertDialogBox extends StatelessWidget {
//   final String? text;
//   final String? subText;
//   final String? bText1;
//   final String? bText2;
//   final Function? function;
//   final Color? color;
//   const AlertDialogBox(
//       {this.text,
//       this.subText,
//       this.bText1,
//       this.bText2,
//       this.function,
//       this.color,
//       Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       insetPadding: EdgeInsets.zero,
//       elevation: 0.0,
//       backgroundColor: Colors.transparent,
//       child: Container(
//         margin: const EdgeInsets.only(right: 30, left: 30),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               BoxShadow(
//                   color: const Color(ColorConstants.black1).withOpacity(0.25),
//                   offset: const Offset(0, 0),
//                   blurRadius: 10)
//             ]),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               margin: const EdgeInsets.only(top: 23),
//               padding: const EdgeInsets.all(24),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: color,
//               ),
//               child: Image.asset(ImageConstants.alert, height: 55, width: 55),
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 18),
//               child: Text(
//                 text!,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: FontFamilyConstants.poppins,
//                   color: const Color(ColorConstants.black1),
//                 ),
//               ),
//             ),
//             if (subText != "")
//               Container(
//                 margin: const EdgeInsets.only(top: 4),
//                 child: Text(
//                   subText!,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w300,
//                     fontFamily: FontFamilyConstants.poppins,
//                     color: const Color(ColorConstants.red3),
//                   ),
//                 ),
//               ),
//             const SizedBox(height: 13),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     function!();
//                   },
//                   child: Container(
//                     margin: const EdgeInsets.only(bottom: 29, left: 20),
//                     padding: const EdgeInsets.only(
//                         left: 45, right: 45, top: 12, bottom: 12),
//                     decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(40)),
//                         color: Color(ColorConstants.grey2)),
//                     child: Text(
//                       bText1!,
//                       style: TextStyle(
//                           fontFamily: FontFamilyConstants.poppins,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                           color: const Color(ColorConstants.black1)),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 13),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Container(
//                     margin: const EdgeInsets.only(bottom: 29, right: 20),
//                     padding: const EdgeInsets.only(
//                         left: 45, right: 45, top: 12, bottom: 12),
//                     decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(40)),
//                         color: Color(ColorConstants.blue2)),
//                     child: Text(
//                       bText2!,
//                       style: TextStyle(
//                           fontFamily: FontFamilyConstants.poppins,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
