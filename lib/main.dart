import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog/core/constants/my_strings.dart';
import 'package:journo_blog/core/themes/app_themes.dart';

import 'presentation/router/router_imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: MyStrings.appName,
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          routerConfig: _appRouter.config(),
          //home: const Center(child: Text("Hello Duniya")),
        );
      }
    );
  }
}

