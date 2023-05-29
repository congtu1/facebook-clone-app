import 'package:flutter_test/flutter_test.dart';
import 'package:happy_app/data/data_sources/local_storage/share_preference_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './share_preference_data_source_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late MockSharedPreferences mockSharedPreferences;
  late SharePreferenceDataSource dataSource;

  setUp(
    () {
      mockSharedPreferences = MockSharedPreferences();
      dataSource = SharePreferenceDataSource(mockSharedPreferences);
    },
  );
  group('PersistentStorage', () {
    group(
      'clear',
      () {
        test(
          'have clears all data',
          () async {
            // GIVEN
            const token = 'test_token';
            expect(await dataSource.testString(token), token);
          },
        );
      },
    );
  });
}
