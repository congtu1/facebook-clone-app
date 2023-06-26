import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';
import './home_presenter.dart';

class HomeModule extends BaseModule<HomePresenter> {
  @override
  void register() {
    //TODO: (remove) Sign up for the site's presenter here. Note that it
    // is necessaryto strictly manage whether this presenter is a factory
    // or a singleton
    injector.registerFactory<HomePresenter>(
      () => HomePresenter(),
    );
  }
}
