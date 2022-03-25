import 'package:auto_route/annotations.dart';
import 'package:hack_22/presentation/pages/chat_page.dart';
import 'package:hack_22/presentation/pages/home_page.dart';
import 'package:hack_22/presentation/pages/spaces_page.dart';

import '../../presentation/pages/space_page.dart';

// Setup a basic first Route
// Commands to regenerate route after applying changes:
// Watch mode:
// flutter packages pub run build_runner watch
// One-time mode:
// flutter packages pub run build_runner build
// DOCUMENTATION: https://pub.dev/packages/auto_route

// To get the router:
//context.router or AutoRouter.of(context)
// To navigate:
// router.pushNamed('/path_of_route')
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, path: '/', children: [
      AutoRoute(
        path: 'spaces',
        page: SpacesPage,
        initial: true,
      ),
      AutoRoute(path: 'space', page: SpacePage),
    ]),
    AutoRoute(path: '/chat', page: ChatPage),
  ],
)
class $AppRouter {}
