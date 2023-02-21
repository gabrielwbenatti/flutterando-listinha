import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/shared/store/app_store.dart';

import 'pages/home/home_module.dart';
import 'pages/settings/setings_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        // AutoBind.singleton(AppStore.new), // sintaxe nova
        Bind.singleton((i) => AppStore()), // sintaxe antiga
      ];

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
