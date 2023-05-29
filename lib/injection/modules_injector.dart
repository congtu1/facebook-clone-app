import 'package:happy_app/presentation/components/loading_wrapper/bloc/loading_wrapper_module.dart';
import 'package:happy_app/presentation/feature/splash/bloc/splash_module.dart';

class ModulesInjector {
  static Future<void> register() async {
    // Module loading progress
    LoadingWrapperModule().register();

    // Module splash page
    SplashModule().register();
  }
}
