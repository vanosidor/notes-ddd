import 'package:auto_route/annotations.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:notes_ddd/presentation/sing_in/sing_in_page.dart';
import 'package:notes_ddd/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage),
  MaterialRoute(page: NotesOverviewPage),
], replaceInRouteName: 'Page,Route')
class $AppRouter {}
