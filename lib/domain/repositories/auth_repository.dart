
abstract class AuthRepository {

  Future<bool> setAccessTokenToLocal(String token);

  Future<bool> setRefreshTokenToLocal(String token);

  Future<void> clearAllAuthLocalData();

  String? getAccessTokenFromLocal();

  String? getRefreshTokenFromLocal();
}
