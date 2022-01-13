import 'package:flutter_mask/core/api/url_launch_api.dart';
import 'package:flutter_mask/core/util/constants.dart';
import 'package:flutter_mask/domain/use_case/store/store_data.dart';

class ShowStoreOnMapUseCase {
  final UrlLaunchApi _urlInstance = UrlLaunchApi.instance;

  Future<void> call(StoreData store) async {
    final String url = googleMapUrl + '${store.lat},${store.lng}';

    await _urlInstance.launchUrl(url);
  }
}
