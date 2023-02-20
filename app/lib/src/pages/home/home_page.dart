import 'package:flutter/material.dart';

import '../../shared/widgets/user_image_button.dart';
import 'widgets/custom_drawer.dart';

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
        onPressed: () {
          // Indicar ao Modular que a rota /edit está dentro do home
          // Método de posix (igual ao terminal)

          // Navigator.of(context).pushNamed('/home/edit');
          Navigator.of(context).pushNamed('./edit');
        },
        icon: const Icon(Icons.add_outlined),
        label: const Text('nova lista'),
      ),
      drawer: const MyCustomDrawer(),
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
