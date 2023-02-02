// import 'package:flutter/material.dart';
// import 'package:interack/core/constants/color_constants.dart';

// class OtpFields extends StatefulWidget {
//   final FocusNode? focusNode;
//   final TextEditingController? controller;
//   final bool autoDismissKeyboard;
//   final ValueChanged<String> onChanged;
//   const OtpFields({Key? key, this.focusNode, this.controller, this.autoDismissKeyboard = true, required this.onChanged}) : super(key: key);

//   @override
//   _OtpFieldsState createState() => _OtpFieldsState();
// }

// class _OtpFieldsState extends State<OtpFields> {
//   TextEditingController? _textEditingController;
//   FocusNode? _focusNode;
//   late List<String> _inputList;
//   int _selectedIndex = 0;

//   @override
//   void initState() {
//     _assignController();
//     _focusNode = widget.focusNode ?? FocusNode();
//     _focusNode!.addListener(() {
//       setState(() {});
//     }); // Rebuilds on every change to reflect the correct color on each field.
//     _inputList = List<String>.filled(6, "");

//     if (_textEditingController!.text.isNotEmpty) {
//       _setTextToInput(_textEditingController!.text);
//     }
//     super.initState();
//   }

//   void _assignController() {
//     _textEditingController = widget.controller;
//     _textEditingController?.addListener(() {
//       var currentText = _textEditingController!.text;

//       if (_inputList.join("") != currentText) {
//         if (currentText.length >= 6) {
//             if (currentText.length > 6) {
//               // removing extra text longer than the length
//               currentText = currentText.substring(0,6);
//             }

//           if (widget.autoDismissKeyboard) _focusNode!.unfocus();
//         }
//         widget.onChanged(currentText);
//       }
//       _setTextToInput(currentText);
//     });
//   }

//   void _setTextToInput(String data) async {
//     var replaceInputList = List<String>.filled(6, "");

//     for (int i = 0; i < 6; i++) {
//       replaceInputList[i] = data.length > i ? data[i] : "";
//     }

//     if (mounted) {
//       setState(() {
//         _selectedIndex = data.length;
//         _inputList = replaceInputList;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GestureDetector(
//           onTap: (){

//           },
//           child: generateTextFields(context)),
//     );
//   }

//   Widget generateTextFields(BuildContext context) {
//     List<Widget> textFields = List.generate(6, (int i) {
//       return _buildTextField(context: context, index: i);
//     });

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: textFields,
//     );
//   }

//   void _onFocus() {
//     if (_focusNode!.hasFocus &&
//         MediaQuery.of(context).viewInsets.bottom == 0) {
//       _focusNode!.unfocus();
//       Future.delayed(
//           const Duration(microseconds: 1), () => _focusNode!.requestFocus());
//     } else {
//       _focusNode!.requestFocus();
//     }
//   }

//   Widget _buildTextField({
//     required BuildContext context,
//     required int index,
//     TextStyle? style,
//   }) {
//     return Row(
//       children: [
//         Container(
//           color: Colors.red,
//           height: 30,
//           width: 30,
//           margin: const EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
//           child: const TextField(
//             keyboardType: TextInputType.number,
//             textAlign: TextAlign.center,
//             maxLength: 1,
//             decoration: InputDecoration(
//               counterText: '',
//               border: InputBorder.none
//             ),
//           ),
//         ),
//         if(index != 5)SizedBox(
//           height: 33,
//           child: VerticalDivider(
//             color: const Color(ColorConstants.black1)
//                 .withOpacity(0.5),
//             width: 0,
//           ),
//         ),
//       ],
//     );
//   }
// }
