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
    )..addListener(() {
        if (tabController.indexIsChanging) {}
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
                actions: [
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
                ],
                title: Text(
                  AppTexts.value.facebook,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(72),
                  child: Container(
                    child: TabBar(
                      onTap: presenter.tabChange,
                      controller: tabController,
                      tabs: List.generate(
                        6,
                        (index) => Container(
                          height: 70,
                          width: double.infinity,
                          child: Icon(
                            presenter.state.homeTabs[index].icon,
                            color: presenter.state.currentTab == index
                                ? Colors.blue
                                : presenter.state.homeTabs[index].color,
                            size: 30,
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
