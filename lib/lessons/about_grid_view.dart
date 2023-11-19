import 'package:flutter/material.dart';

class AboutGridView extends StatefulWidget {
  const AboutGridView({super.key});

  @override
  State<AboutGridView> createState() => _AboutGridViewState();
}

class _AboutGridViewState extends State<AboutGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About GridView'),
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   children: List.generate(
      //     100,
      //     (index) {
      //       return Container(
      //         margin: const EdgeInsets.all(4),
      //         color: Colors.blue[100 * (index % 9)],
      //         child: Center(
      //           child: Text(
      //             'Item $index',
      //             style: Theme.of(context).textTheme.headline5,
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blue[100 * (index % 9)],
            child: Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          );
        },
      ),
    );
  }
}
