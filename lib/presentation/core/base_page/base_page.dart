import 'package:flutter/material.dart';
import 'package:happy_app/injection/injector.dart';
import 'package:happy_app/presentation/components/loading_wrapper/bloc/loading_wrapper_presenter.dart';
import 'package:happy_app/presentation/components/loading_wrapper/loading_wrapper.dart';
import 'package:happy_app/presentation/components/visibility_wrapper.dart';
import 'package:happy_app/presentation/core/base_page/base_bloc/base_presenter.dart';
import 'package:happy_app/presentation/core/base_page/base_page_mixin.dart';
import 'package:happy_app/presentation/core/refresh_service/refresh_service.dart';
import 'package:happy_app/presentation/resources/resources.dart';

/// Every page needs to inherit from this class.
/// A page should not be created with `StateFulWidget`
abstract class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);
}

abstract class BasePageState<Page extends BasePage,
    Presenter extends BasePresenter<dynamic>> extends State<Page> with BasePageMixin {
  late Presenter _presenter;
  late LoadingWrapperPresenter _loadingPresenter;

  bool isShowingError = false;

  /// This is the only presenter of the page.
  /// Use it instead of creating a new presenter.
  Presenter get presenter => _presenter;

  @override
  @Deprecated(
    'Override `onInitState()` instead of `initState()`',
  )
  void initState() {
    super.initState();

    //Inject instance presenter for this page
    _presenter = injector.get<Presenter>();
    _loadingPresenter = injector.get<LoadingWrapperPresenter>();
    RefreshService.addPageInitialized(pageName);
    onInitState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => onStateCreated(context),
    );
  }

  @override
  @mustCallSuper
  @Deprecated(
    'Override `buildPage()` instead of `build()`. '
    'If it is required to override build, can ignore this line',
  )
  Widget build(BuildContext context) => buildPage(context);

  @override
  @Deprecated(
    'Override `onDispose()` instead of `dispose()`',
  )
  void dispose() {
    RefreshService.removePageInitialized(pageName);
    onDispose();
    super.dispose();
  }

  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  Widget buildBody(BuildContext context);

  Widget buildPage(BuildContext context) => Stack(
        children: [
          WillPopScope(
            onWillPop: onWillPop(),
            child: hasUseSafeArea
                ? SafeArea(
                    child: _bodyInsideSafeArea(),
                  )
                : _bodyInsideSafeArea(),
          ),
          LoadingWrapper(presenter: _loadingPresenter),
        ],
      );

  Widget _bodyInsideSafeArea() => VisibilityWrapper(
        onAppeared: () {
          onAppearedPage();
          if (RefreshService.hadRefresh(pageName)) {
            RefreshService.removePage(pageName);
            onRefreshPage();
          }
        },
        onDisappeared: onDisappearedPage,
        child: GestureDetector(
          onTap: tapOutsideHideKeyBoard
              ? () {
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              : null,
          child: Scaffold(
            backgroundColor: backgroundColor ?? AppColors.value.background,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            appBar: buildAppBar(context),
            body: buildBody(context),
          ),
        ),
      );

  void showLoadingDialog() {
    _loadingPresenter.showLoading();
  }

  void dismissLoadingDialog() {
    // ignore: deprecated_member_use_from_same_package
    if (presenter.futuresIsEmpty) {
      _loadingPresenter.dismissLoading();
    }
  }

  void forceDismissLoading() {
    _loadingPresenter.dismissLoading();
  }

  /// If override this function, you should not call super,
  /// dialog error will show the first error of the page
  Future<void> handleError(Object? error) async {
    //TODO: handle
    // await DialogPlatform(
    //   content: ErrorHelper.getError(error),
    // ).show(context);
  }

  /// If override this function, you should not call super,
  /// dialog error show duplicate if have many error
  void handlerFutureError(Object? error) {
    if (!isShowingError) {
      isShowingError = true;
      handleError(error);
      isShowingError = false;
    }
  }
}
