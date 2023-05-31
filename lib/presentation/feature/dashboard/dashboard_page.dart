import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_app/presentation/resources/resources.dart';

import './bloc/dashboard_module.dart';
import './bloc/dashboard_presenter.dart';
import './bloc/dashboard_state.dart';
import '../../core/base_page/base_page.dart';

/// Create at:   30/05/2023
/// Page:        [DashboardPage]
/// Module:      [DashboardModule]
/// Presenter:   [DashboardPresenter]
/// State:       [DashboardState]
/// Description:
/// TODO:  create a base dashboard

@RoutePage()
class DashboardPage extends BasePage {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState
    extends BasePageState<DashboardPage, DashboardPresenter>
    with TickerProviderStateMixin {
  late TabController tabController;
  ScrollController _scrollController = ScrollController();
  @override
  void onInitState() {
    tabController = TabController(
      length: 6,
      vsync: this,
      initialIndex: presenter.state.currentTab,
    );
    super.onInitState();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<DashboardPresenter, DashboardState>(
        bloc: presenter,
        builder: (context, state) => SafeArea(
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, headerSliverBuilder) => [
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                snap: true,
                floating: true,
                expandedHeight: 120.0,
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppTexts.value.facebook,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey.withOpacity(0.1),
                                child: Center(
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey.withOpacity(0.1),
                                child: Center(
                                  child: Icon(
                                    Icons.message,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //TODO: Will change icon and tab view in future
                bottom: TabBar(
                  onTap: presenter.tabChange,
                  controller: tabController,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.people_outline,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.tv,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.notifications_on_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.notifications_on_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            body: TabBarView(
                controller: tabController,
                children: List.generate(
                  6,
                  (index) => ListView.builder(
                    key: PageStorageKey(index),
                    itemBuilder: (context, index) => Container(
                      color: index.isOdd ? Colors.white : Colors.black12,
                      height: 100.0,
                      child: Center(
                        child: Text('$index', textScaleFactor: 5),
                      ),
                    ),
                    itemCount: 20,
                  ),
                )),
          ),
        ),
        listener: (context, state) {},
      );

  @override
  void handlerFutureError(Object? error) {
    //TODO: (remove) Example of an overridden method
  }

  @override
  bool get resizeToAvoidBottomInset => true;
}

///==========================================================================///
///=> Behavior of the [DashboardPage]
///==========================================================================///
extension _DashboardPageBehavior on _DashboardPageState {}
