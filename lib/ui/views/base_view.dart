// import 'package:flutter/cupertino.dart';
// import 'package:interack/core/di/locator.dart';
// import 'package:interack/core/viewmodel/base_model.dart';
// import 'package:provider/provider.dart';

// class BaseView<T extends BaseModel> extends StatefulWidget {
//   final Widget Function(BuildContext context, T model, Widget? child) builder;
//   final Function(T)? onModelReady;

//   BaseView({required this.builder, this.onModelReady});

//   @override
//   _BaseViewState<T> createState() => _BaseViewState<T>();
// }

// class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
//   T model = locator<T>();

//   @override
//   void initState() {
//     if (widget.onModelReady != null) {
//       widget.onModelReady!(model);
//     }
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {

//     return ChangeNotifierProvider<T>.value(
//       //builder: (context) => model,
//       child: Consumer<T>(builder: widget.builder),
//       //notifier: model,
//       value: model,
//     );
//   }
// }