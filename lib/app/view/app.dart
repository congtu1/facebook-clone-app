import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:happy_app/injection/injector.dart';
import 'package:happy_app/presentation/core/app_lifecycle/app_lifecycle.dart';
import 'package:happy_app/presentation/core/app_theme.dart';
import 'package:happy_app/presentation/core/locale/bloc/locale_module.dart';
import 'package:happy_app/presentation/core/locale/bloc/locale_presenter.dart';
import 'package:happy_app/presentation/core/locale/bloc/locale_state.dart';
import 'package:happy_app/presentation/core/locale/support_locale.dart';
import 'package:happy_app/presentation/core/responsive/responsive_wrapper.dart';
import 'package:happy_app/presentation/routes/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  final _appLifecycle = injector.get<AppLifecycle>();
  final _appRouter = injector.get<AppRouter>();
  late LocalePresenter _localePresenter;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _localePresenter = LocaleModule().register();
    _localePresenter.initialLocale();
  }
  

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _appLifecycle.close();
    LocaleModule().unRegister();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    _appLifecycle.addAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<LocalePresenter, LocaleState>(
        bloc: _localePresenter,
        buildWhen: (previous, current) => previous.locale != current.locale,
        builder: (context, state) => MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          locale: state.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: SupportLocale.support,
          theme: getAppTheme(Brightness.light),
          builder: getResponsiveWrapper,
        ),
      );
}
