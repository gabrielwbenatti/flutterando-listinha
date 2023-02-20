import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home/home_module.dart';
import 'pages/settings/setings_page.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
        ChildRoute(
          '/settings',
          child: (context, args) => const SettingsPage(),
        ),
      ];
}
