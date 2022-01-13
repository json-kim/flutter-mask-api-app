import 'package:flutter_mask/domain/model/store.dart';

abstract class StoreRepository {
  Future<List<Store>> getStores();
}
