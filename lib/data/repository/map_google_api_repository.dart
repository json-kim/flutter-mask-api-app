import 'package:flutter_mask/core/util/constants.dart';
import 'package:flutter_mask/data/api/url_launch_api.dart';
import 'package:flutter_mask/domain/repository/map_repositroy.dart';

class MapGoogleApiRepository implements MapRepository {
  final UrlLaunchApi _api;

  MapGoogleApiRepository(this._api);

  @override
  Future<void> showOnTheMap(double lat, double lng) async {
    final String url = googleMapUrl + '$lat,$lng';

    await _api.launchUrl(url);
  }
}
