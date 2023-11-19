import 'package:flutter/material.dart';

class LessonAboutCustomScrollView extends StatelessWidget {
  const LessonAboutCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "CustomScrollView",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              background: Image.network(
                "https://picsum.photos/seed/1/600",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(32),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              child: Text("Click Me"),
              onPressed: () {},
            ),
          ),
          SliverToBoxAdapter(
            child: Container(height: 16),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [
          //       ...List.generate(
          //         3,
          //         (index) => Container(
          //           height: 100,
          //           color: Colors.primaries[index % Colors.primaries.length],
          //           margin: EdgeInsets.all(8),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.primaries[index % Colors.primaries.length],
                margin: EdgeInsets.all(8),
                height: 100,
                child: Center(
                  child: Text(
                    "SliverList $index",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              childCount: 6,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 200,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.primaries[index % Colors.primaries.length],
                margin: EdgeInsets.all(8),
              ),
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
