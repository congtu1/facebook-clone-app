import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import './bloc/home_module.dart';
import './bloc/home_presenter.dart';
import './bloc/home_state.dart';
import './components/example_component.dart';
import '../../core/base_page/base_page.dart';

/// Create at:   31/05/2023
/// Page:        [HomePage]
/// Module:      [HomeModule]
/// Presenter:   [HomePresenter]
/// State:       [HomeState]
/// Description:
/// TODO: This is [HomePage]
@RoutePage()
class HomePage extends BasePage {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomePresenter>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void onInitState() {
    // TODO: implement onInitState
    super.onInitState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget buildBody(BuildContext context) {
    return ExampleComponent(
      tabController: _tabController,
      presenter: presenter,
      //TODO: (remove) presenter will automatically be initialized
      //after initState() is called. No need to initialize this value
    );
  }

  @override
  void handlerFutureError(Object? error) {
    //TODO: (remove) Example of an overridden method
  }

  @override
  bool get resizeToAvoidBottomInset => true;
}

///==========================================================================///
///=> Behavior of the [HomePage]
///==========================================================================///
extension _HomePageBehavior on _HomePageState {
  void _onPressButton() {
    //TODO: (remove) Example of a self-defined method
  }
}
