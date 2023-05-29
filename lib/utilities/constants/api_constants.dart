class ApiConstants {
  ApiConstants._();
  // Base Url
  static const String devBaseUrl =
      'https://flask-demo123-annguyen98.vercel.app/api';
  static const String stgBaseUrl =
      'https://flask-demo123-annguyen98.vercel.app/api';
  static const String prodBaseUrl =
      'https://flask-demo123-annguyen98.vercel.app/api';

  // Account
  static const String login = '/login';
  static const String logout = '/logout';

  static const List<String> nonAuthenticatedPaths = [
    ApiConstants.login,
  ];
}
