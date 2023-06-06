import '../../../../injection/injector.dart';
import '../../../core/base_page/base_bloc/base_module.dart';
import './friend_presenter.dart';

class FriendModule extends BaseModule<FriendPresenter> {
  @override
  void register() {
    //TODO: (remove) Sign up for the site's presenter here. Note that it
    // is necessaryto strictly manage whether this presenter is a factory
    // or a singleton
    injector.registerFactory<FriendPresenter>(
      () => FriendPresenter(),
    );
  }
}
