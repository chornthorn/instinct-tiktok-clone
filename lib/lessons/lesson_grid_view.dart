import 'package:flutter/material.dart';

class LessonGridView extends StatelessWidget {
  const LessonGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Grid View'),
      ),
      // body: GridView(
      //   padding: EdgeInsets.all(8),
      //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   //   crossAxisCount: 2,
      //   //   mainAxisSpacing: 8,
      //   //   crossAxisSpacing: 8,
      //   // ),
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 200,
      //     mainAxisExtent: 200,
      //     mainAxisSpacing: 8,
      //     crossAxisSpacing: 8,
      //   ),
      //   children: [
      //     ...List.generate(
      //       10,
      //       (index) => Container(
      //         color: Colors.blue[100 * (index % 9)],
      //       ),
      //     ),
      //   ],
      // ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisExtent: 200,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // conver image
                Center(
                  child: Image.network(
                    'https://picsum.photos/400/200?random=$index',
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        'Item $index',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // description
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, quis aliquam nisl nunc eu nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, quis aliquam nisl nunc eu nisl.',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
