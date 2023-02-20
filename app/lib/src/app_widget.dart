import 'package:flutter/material.dart';
import 'package:listinha/src/pages/home/edit_task_board_page.dart';
import 'package:listinha/src/pages/settings/setings_page.dart';

import 'pages/home/home_page.dart';
import 'shared/themes/app_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        '/': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(),
        '/edit': (context) => const EditTaskBoardPage(),
      },
    );
  }
}
