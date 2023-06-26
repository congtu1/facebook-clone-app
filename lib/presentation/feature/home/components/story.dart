import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0.5,
                  blurRadius: 3,
                  offset: Offset(0, 0.8),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TabBar(
                labelColor: Colors.blue[500],
                indicatorColor: Colors.blue[800],
                unselectedLabelColor: Colors.black87,
                controller: tabController,
                tabs: [
                  Tab(
                    text: 'Tin',
                  ),
                  Tab(
                    text: 'Reels',
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(2),
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    color: Colors.blue,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
