// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:interack/core/constants/color_constants.dart';
// import 'package:interack/core/constants/font_family_constants.dart';
// import 'package:interack/core/constants/image_constants.dart';
// import 'package:interack/core/localization/app_localizations.dart';

// class BuildAppBar extends StatelessWidget {
//   final String text;
//   const BuildAppBar(this.text, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       highlightColor: Colors.white,
//         onTap: () {
//           Navigator.of(context).pop();
//         },
//         child: Container(
//           padding: const EdgeInsets.all(10),
//           margin: const EdgeInsets.only(left: 11, top: 15),
//           child: Row(
//             children: [
//               SvgPicture.asset(ImageConstants.backIcon),
//               const SizedBox(width: 14),
//               Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: FontFamilyConstants.poppins,
//                   color: const Color(ColorConstants.black1),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     }
// }
