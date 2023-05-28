import 'package:happy_app/data/data_sources/local_storage/share_preference_data_source.dart';
import 'package:happy_app/domain/repositories/auth_repository.dart';
import 'package:happy_app/injection/injector.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl();

  final _preference = injector.get<SharePreferenceDataSource>();



  
  @override
  Future<void> clearAllAuthLocalData() => _preference.clearAllAuthData();

  @override
  String? getAccessTokenFromLocal() => _preference.getAccessToken();

  @override
  String? getRefreshTokenFromLocal() => _preference.getRefreshToken();

  @override
  Future<bool> setAccessTokenToLocal(String token) =>
      _preference.setAccessToken(token);

  @override
  Future<bool> setRefreshTokenToLocal(String token) =>
      _preference.setRefreshToken(token);
}
