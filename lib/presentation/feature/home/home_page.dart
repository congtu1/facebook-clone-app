import 'package:flutter/material.dart';

import './bloc/home_module.dart';
import './bloc/home_presenter.dart';
import './bloc/home_state.dart';
import './components/example_component.dart';
import '../../core/base_page/base_page.dart';
import '../../resources/resources.dart';

/// Create at:   31/05/2023
/// Page:        [HomePage]
/// Module:      [HomeModule]
/// Presenter:   [HomePresenter]
/// State:       [HomeState]
/// Description: 
/// TODO: This is [HomePage]

class HomePage extends BasePage {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState
    extends BasePageState<HomePage, HomePresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        //TODO: (remove) App bar of new page
        title: const Text('HomePage'),
        centerTitle: true,
      );

  @override
  Widget buildBody(BuildContext context) => ExampleComponent(
        presenter: presenter,
        //TODO: (remove) presenter will automatically be initialized
        //after initState() is called. No need to initialize this value
      );

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
