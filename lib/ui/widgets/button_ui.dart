// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:interack/core/constants/image_constants.dart';

// import '../../core/constants/color_constants.dart';
// import '../../core/constants/font_family_constants.dart';

// class ButtonUi extends StatefulWidget {
//   final String? text;
//   final Function? tap;
//   final int? color;
//   final int? textC;
//   const ButtonUi({Key? key, this.text, this.tap, this.color, this.textC}) : super(key: key);

//   @override
//   State<ButtonUi> createState() => _ButtonUiState();
// }

// class _ButtonUiState extends State<ButtonUi> {
//   bool isRequest = false;
//   bool isAccept = false;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isRequest = !isRequest;
//           isAccept = false;
//         });
//         Timer(const Duration(seconds: 3), (){
//           setState(() {
//             isAccept = true;
//           });
//         });
//       },
//       child: Container(
//         width: 95,
//         height: 35,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: isRequest == true ? const Color(ColorConstants.white1) : const Color(ColorConstants.blue2),
//           gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 isRequest == true ? const Color(ColorConstants.white1) : const Color(ColorConstants.blue2),
//                 isRequest == true ? const Color(ColorConstants.white1) : const Color(ColorConstants.blue2),
//               ],
//               stops: const [1,1]
//           ),
//           boxShadow: [
//             BoxShadow(
//                 color: const Color(ColorConstants.black1).withOpacity(0.15),
//                 offset: isRequest == true ? const Offset(0, 0) : const Offset(0, 4),
//                 blurRadius: isRequest == true ? 10 : 6
//             )
//           ],
//         ),
//         child: Container(
//           alignment: Alignment.center,
//           padding: isRequest == false ? const EdgeInsets.only(
//               top: 8, bottom: 8, right: 19, left: 20) : const EdgeInsets.only(
//               top: 7, bottom: 8, right: 12, left: 12),
//           decoration: BoxDecoration(
//             color: isRequest == true ? const Color(ColorConstants.white1) : const Color(ColorConstants.blue2),
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   const Color(ColorConstants.white1).withOpacity(0.4),
//                   const Color(ColorConstants.white1).withOpacity(0.08),
//                 ],
//                 stops: const [0, 1]
//             ),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: isAccept == true ? _buildInsta() : Text(
//             isRequest == true ? "Requested" : "Connect",
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.w300,
//               fontFamily: FontFamilyConstants.poppins,
//               color: isRequest == true ? const Color(ColorConstants.black1) : const Color(ColorConstants.white1),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInsta() {
//     return Row(
//       children: [
//         Image.asset(ImageConstants.instaIcon, height: 17, width: 17),
//         const SizedBox(width: 8),
//         Flexible(
//           child: Text(
//             "sanketb101",
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.w300,
//               fontFamily: FontFamilyConstants.poppins,
//               color: const Color(ColorConstants.black1),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }