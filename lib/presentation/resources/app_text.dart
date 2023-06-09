part of './resources.dart';

class AppTexts {
  AppTexts._();

  static AppLocalizations get value => AppLocalizations.of(
      injector.get<AppRouter>().navigatorKey.currentContext!,);
}
