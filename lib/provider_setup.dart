// import 'package:connectivity/connectivity.dart';
// import 'package:interack/core/viewmodel/views/edit_profile/userdata_viewmodel.dart';
// import 'package:provider/provider.dart';
// import 'package:provider/single_child_widget.dart';

// import 'core/di/locator.dart';
// import 'core/viewmodel/network_view_model.dart';
// import 'core/viewmodel/views/create_pin/search_place_viewmodel.dart';

// List<SingleChildWidget> providers = [
//   //...independentServices,
//   //...dependentServices,
//   ...uiConsumableProviders,
// ];

// List<SingleChildWidget> independentServices = [
//   //Provider.value(value: API())
// ];

// /*List<SingleChildWidget> dependentServices = [
// ProxyProvider<API, AuthenticationService>(
//       update: (context, api, authenticationService) =>
//           AuthenticationService(api: api))

// ];*/

// List<SingleChildWidget> uiConsumableProviders = [
//   ValueListenableProvider<ConnectivityResult>.value(
//       value: locator<NetworkViewModel>().connectivityResultStatus),

//   ChangeNotifierProvider(create: (_) => SearchPlaceViewModel()),
//   ChangeNotifierProvider(create: (_) => UserDataViewModel()),
// ];
