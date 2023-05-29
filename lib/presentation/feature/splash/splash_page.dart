import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:happy_app/presentation/core/base_page/base_page.dart';
import 'package:happy_app/presentation/feature/splash/bloc/splash_module.dart';
import 'package:happy_app/presentation/feature/splash/bloc/splash_presenter.dart';
import 'package:happy_app/presentation/feature/splash/bloc/splash_state.dart';

/// Create at:   26/05/2023
/// Page:        [SplashPage]
/// Module:      [SplashModule]
/// Presenter:   [SplashPresenter]
/// State:       [SplashState]
/// Description:
/// TODO: This is [SplashPage]

@RoutePage()
class SplashPage extends BasePage {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<SplashPage, SplashPresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
        //TODO: (remove) App bar of new page
        title: const Text('SplashPage'),
        centerTitle: true,
      );

  @override
  Widget buildBody(BuildContext context) => SafeArea(
        child: Center(
          child: Text('Abc'),
        ),
      );

  @override
  void handlerFutureError(Object? error) {
    //TODO: (remove) Example of an overridden method
  }

  @override
  bool get resizeToAvoidBottomInset => true;
}

///==========================================================================///
///=> Behavior of the [SplashPage]
///==========================================================================///
extension _SplashPageBehavior on _SplashPageState {}
