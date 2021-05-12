import 'package:auto_route/annotations.dart';
import 'package:notes_ddd/presentation/sing_in/sing_in_page.dart';
import 'package:notes_ddd/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SignInPage)
], replaceInRouteName: 'Page,Route')
class $AppRouter {}
