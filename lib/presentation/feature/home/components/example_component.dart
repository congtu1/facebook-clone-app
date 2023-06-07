import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_app/presentation/feature/home/components/post_status.dart';
import 'package:happy_app/presentation/feature/home/components/story.dart';

import '../bloc/home_presenter.dart';
import '../bloc/home_state.dart';

class ExampleComponent extends StatelessWidget {
  const ExampleComponent({
    required this.presenter,
    required this.tabController,
    Key? key,
  }) : super(key: key);

  final HomePresenter presenter;
  final TabController tabController;

  //TODO: (remove) An example of a child component have state
  @override
  Widget build(BuildContext context) => BlocBuilder<HomePresenter, HomeState>(
        bloc: presenter,
        buildWhen: (previous, current) => false,
        builder: (context, state) => SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.grey[400],
              child: Column(
                children: <Widget>[
                  PostStatus(),
                  SizedBox(
                    height: 10,
                  ),
                  Story(tabController: tabController),
                  SizedBox(
                    height: 10,
                  ),
                  ...List.generate(
                    6,
                    (index) => News(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class News extends StatelessWidget {
  const News({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
              title: const Text('User Name'),
              subtitle: const Text('1 hr'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.cancel,
                      )),
                ],
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: const Text('thích thì đăng'),
          ),
          Container(
              height: MediaQuery.of(context).size.width,
              child: Image.network('https://picsum.photos/400')),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [const Icon(Icons.favorite), Text('16.114')],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('214 bình luận'),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('214 lượt chia sẻ'),
                ],
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.grey[400],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up_alt_outlined),
                    onPressed: () {},
                  ),
                  Text('Thích')
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.mode_comment_outlined),
                    onPressed: () {},
                  ),
                  Text('Thích')
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                  Text('Thích')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
