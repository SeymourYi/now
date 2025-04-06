import 'package:flutter/material.dart';
import 'package:now/screen/home/home.dart';
import 'package:now/test/dialogtest.dart';
import 'package:now/utils/mydio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now/test/privacy_dialog_demo_page.dart';
import 'package:now/test/exact_privacy_dialog.dart';
import 'package:now/test/privacy_home.dart';
import 'package:now/screen/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HttpClient.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Navi App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 126, 121, 211),
            ),
            useMaterial3: true,
          ),
          home: child,
          routes: {
            '/login': (context) => const LoginPage(),
            '/home': (context) => const home(),
            '/privacy_demos': (context) => const PrivacyDialogDemoPage(),
            '/exact_privacy': (context) => const ExactPrivacyDialog(),
          },
        );
      },
      child: const LoginPage(),
    );
  }
}
