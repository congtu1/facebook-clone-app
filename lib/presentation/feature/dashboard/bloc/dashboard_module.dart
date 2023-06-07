import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';
import './dashboard_presenter.dart';

class DashboardModule extends BaseModule<DashboardPresenter> {
  @override
  void register() {
    //TODO: (remove) Sign up for the site's presenter here. Note that it
    // is necessaryto strictly manage whether this presenter is a factory
    // or a singleton
    injector.registerFactory<DashboardPresenter>(
      () => DashboardPresenter(),
    );
  }
}
