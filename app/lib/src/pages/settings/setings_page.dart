import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/shared/store/app_store.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final appStore = context.watch<AppStore>(
      (store) => store.themeMode,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('listinha'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text('configurações', style: textTheme.titleLarge),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text('tema', style: textTheme.titleMedium),
          ),
          RadioListTile<ThemeMode>(
            title: const Text('sistema'),
            value: ThemeMode.system,
            groupValue: appStore.themeMode.value,
            onChanged: appStore.changeThemeMode,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('claro'),
            value: ThemeMode.light,
            groupValue: appStore.themeMode.value,
            onChanged: appStore.changeThemeMode,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('escuro'),
            value: ThemeMode.dark,
            groupValue: appStore.themeMode.value,
            onChanged: appStore.changeThemeMode,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text('controle de dados', style: textTheme.titleMedium),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('apagar cache e reiniciar o app'),
            ),
          ),
        ],
      ),
    );
  }
}
