import 'package:happy_app/data/repositories_impl/auth_repository_impl.dart';
import 'package:happy_app/domain/repositories/auth_repository.dart';
import 'package:happy_app/injection/injector.dart';

class RepositoriesInjector {
  static Future<void> register() async {
    /// Auth Repository
    injector.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(),
    );
  }
}
