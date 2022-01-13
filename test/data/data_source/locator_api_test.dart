import 'package:flutter_mask/data/api/locator_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('위치정보 api를 테스트 합니다.', () async {
    final api = LocatorApi();

    final position = api.getCurrentPosition();

    print(position);
  });
}
