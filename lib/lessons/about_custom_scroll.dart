import 'package:flutter/material.dart';

class AboutCustomScroll extends StatefulWidget {
  const AboutCustomScroll({super.key});

  @override
  State<AboutCustomScroll> createState() => _AboutCustomScrollState();
}

class _AboutCustomScrollState extends State<AboutCustomScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Custom Scroll',
                style: TextStyle(color: Colors.black),
              ),
              background: Image.network(
                'https://picsum.photos/seed/picsum/200/300',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ListTile(title: Text('Item 0')),
                const ListTile(title: Text('Item 1')),
                const ListTile(title: Text('Item 2')),
                // ... more items
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 100,
                  margin: const EdgeInsets.all(4),
                  color: Colors.red[100 * (index % 9)],
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                );
              },
              childCount: 3,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
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
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
