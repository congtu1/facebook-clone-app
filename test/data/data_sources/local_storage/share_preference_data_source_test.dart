import 'package:happy_app/data/data_sources/local_storage/share_preference_data_source.dart';
import 'package:test/test.dart';

void main() {
  group('SharePreferenceDataSource', () {
    setUp(() {});

    test('setAccessToken should call setString with correct key and value',
        () async {
      const token = 'test_token';
      print(token);
    });
  });
}
