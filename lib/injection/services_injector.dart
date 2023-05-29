import 'package:happy_app/data/data_sources/local_storage/share_preference_data_source.dart';
import 'package:happy_app/injection/injector.dart';
import 'package:happy_app/presentation/core/app_lifecycle/app_lifecycle.dart';
import 'package:happy_app/presentation/routes/app_router.dart';
import 'package:happy_app/utilities/helpers/app_helper/app_flavor_helper.dart';
import 'package:happy_app/utilities/helpers/logger_helper/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceInjector {
  static Future<void> register() async {
    LoggerHelper.setEnableLogger(injector.get<AppFlavor>().isDevelopment);

    // Share Preferences
    final sharedPreferences = await SharedPreferences.getInstance();

    injector
      ..registerLazySingleton<SharePreferenceDataSource>(
        () => SharePreferenceDataSource(sharedPreferences),
      )

      // // Http Client
      // injector.registerLazySingleton<Dio>(() {
      //   final dio = Dio();
      //   dio.options.baseUrl = injector.get<AppFlavor>().apiBaseUrl;
      //   dio.interceptors.addAll([
      //     AuthInterceptor(dio),
      //     RetryOnConnectionChangeInterceptor(dio: dio),
      //     if (injector.get<AppFlavor>().isDevelopment) LoggerInterceptor(),
      //   ]);
      //   return dio;
      // });

      // injector.registerLazySingleton<ApiClient>(
      //   () => ApiClient(
      //     injector.get<Dio>(),
      //     baseUrl: injector.get<AppFlavor>().apiBaseUrl,
      //   ),
      // );

      // Router
      ..registerLazySingleton<AppLifecycle>(
        AppLifecycle.new,
      )
      ..registerLazySingleton<AppRouter>(AppRouter.new);

    // AppLifecycle
  }
}
