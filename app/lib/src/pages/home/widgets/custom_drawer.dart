import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:listinha/src/shared/store/app_store.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appStore = context.watch<AppStore>(
      (store) => store.syncDate,
    );
    final syncDate = appStore.syncDate.value;
    var syncDateText = 'Nunca';

    if (syncDate != null) {
      final format = DateFormat('dd/MM/yyyy às hh:mm');
      syncDateText = format.format(syncDate);
    }

    return NavigationDrawer(
      onDestinationSelected: (index) {
        if (index == 1) {
          Navigator.of(context).pop(); // Esconde o drawer
          Navigator.of(context).pushNamed('/settings');
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 28, 12, 12),
          child: Text(
            'opções',
            style: theme.textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync_outlined),
          selectedIcon: const Icon(Icons.sync),
          label: Row(
            children: [
              const Text(
                'sincronizar',
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                syncDateText,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
          label: Text('configurações'),
        ),
      ],
    );
  }
}
