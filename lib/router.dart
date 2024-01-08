import 'package:flutter_subway_info_app/di/di_setup.dart';
import 'package:flutter_subway_info_app/presentation/screen/main_screen.dart';
import 'package:flutter_subway_info_app/presentation/view_model/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => ChangeNotifierProvider(
      create: (context) => getIt<MainViewModel>(),
      child: const MainScreen(),
    ),
  )
]);
