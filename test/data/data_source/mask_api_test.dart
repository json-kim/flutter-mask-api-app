import 'package:flutter_mask/data/data_source/mask_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('마스크 api 테스트 합니다.', () async {
    final api = MaskApi();

    final stores = await api.fetch();

    expect(stores.length, 222);

    print(stores.first);
  });
}
