// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class CustomToast {
//   static void showToast(
//       {required BuildContext context, required String message}) {
//     FToast fToast = FToast();
//     fToast.init(context);
//     Widget toast = Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         color: Colors.black,
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SvgPicture.asset(
//             ImageConstants.toastIcon,
//           ),
//           const SizedBox(
//             width: 12.0,
//           ),
//           Flexible(
//             child: Text(
//               message,
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                   fontSize: 16,
//                   fontFamily: FontFamilyConstants.poppins,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.white),
//             ),
//           )
//         ],
//       ),
//     );

//     fToast.showToast(
//       child: toast,
//       gravity: ToastGravity.BOTTOM,
//       toastDuration: const Duration(seconds: 2),
//     );
//   }
// }