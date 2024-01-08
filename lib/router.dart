import 'package:flutter_subway_info_app/presentation/screen/main_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MainScreen(),
  )
]);
