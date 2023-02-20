import 'package:flutter/material.dart';

import '../../shared/widgets/user_image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('listinha'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: UserImageButton(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add_outlined),
        label: const Text('nova lista'),
      ),
      drawer: NavigationDrawer(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              top: 28,
              right: 12,
              bottom: 12,
            ),
            child: Text(
              'opções',
              style: Theme.of(context).textTheme.titleSmall,
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
                  style: Theme.of(context).textTheme.bodySmall,
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('todos'),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('pendentes'),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text('concluídas'),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text('desativadas'),
                  ),
                ],
                onSelectionChanged: (values) {},
                selected: const {2},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
