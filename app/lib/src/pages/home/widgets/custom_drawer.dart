import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                '12/12/12 12:12',
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
