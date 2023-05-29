part of './resources.dart';

class AppText {
  AppText._();

  static AppLocalizations get value => AppLocalizations.of(
      injector.get<AppRouter>().navigatorKey.currentContext!);
}
