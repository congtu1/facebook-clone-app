import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_app/presentation/feature/friend/friend_page.dart';
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
    )..addListener(() {
        if (tabController.indexIsChanging) {
          presenter.tabChange(tabController.index);
        }
      });
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
                actions: state.currentTab == 0
                    ? [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            child: Center(
                              child: Icon(
                                Icons.message,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ]
                    : null,
                title: state.currentTab == 0
                    ? Text(
                        AppTexts.value.facebook,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      )
                    : null,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(48),
                  child: Container(
                    child: TabBar(
                      labelColor: Colors.blue,
                      controller: tabController,
                      unselectedLabelColor: Colors.grey,
                      tabs: List.generate(
                        6,
                        (index) => Tab(
                          icon: Icon(
                            presenter.state.homeTabs[index].icon,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            body: TabBarView(
              controller: tabController,
              children: List.generate(
                6,
                (index) => FriendPage(
                  key: PageStorageKey(index),
                ),
              ),
            ),
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
