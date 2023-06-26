import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_app/presentation/feature/home/components/post_status.dart';
import 'package:happy_app/presentation/feature/home/components/story.dart';

import '../bloc/home_presenter.dart';
import '../bloc/home_state.dart';
import 'news.dart';

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
