import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:hack_22/presentation/pages/home_page.dart';

import 'config/routing/router.gr.dart';
import 'presentation/global_styles/themes/global_theme.dart';

void main() {
  runApp(MyApp());
=======
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
>>>>>>> firebase_branch
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
