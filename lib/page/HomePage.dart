import 'package:flutter/material.dart';
import 'package:netflix/model/shows.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.black12,
      body: CustomScrollView(slivers: [appBar(), ...shows(), copyright()]),
    ));
  }

  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.black,
        expandedHeight: 200,
        title: const Text("MyNetflix"),
        centerTitle: true,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(color: Colors.black12),
        ),
      );
  List<Widget> shows() => sliverShows.map((s) {
        if (s.displayMode == SliverShowDisplayMode.list) {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white12,
                        ),
                        width: double.infinity,
                        height: 150,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.symmetric(vertical: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              s.shows[index].label,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper dolor augue, sit amet posuere justo condimentum pretium. Praesent eu lacinia ex, ac dignissim est. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white60,
                              ),
                            )
                          ],
                        ),
                      ),
                  childCount: s.shows.length));
        } else {
          return SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 2),
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white12,
                      ),
                      width: double.infinity,
                      height: 150,
                      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                      child: Center(
                          child: Text(s.shows[index].label,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                  childCount: s.shows.length));
        }
      }).toList();

  Widget copyright() => SliverToBoxAdapter(
        child: Container(
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 10),
            child:Center(child:Text(
          "Copyrigth to Netflix",
          style: TextStyle(color: Colors.white70),
        ))),
      );
}
