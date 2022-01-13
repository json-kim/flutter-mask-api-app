import 'dart:convert';

import 'package:flutter_mask/data/util/mask_util.dart';
import 'package:http/http.dart' as http;

class MaskApi {
  Future<List> fetch(double lat, double lng) async {
    // lat, lng 로 url 만들기 => maskApiUrl
    final uri = Uri.parse(maskApiUrl);
    final result = await http.get(uri);

    if (result.statusCode == 200) {
      final List jsonStore = jsonDecode(result.body)['stores'];

      return jsonStore;
    } else {
      throw Exception('네트워크 에러');
    }
  }
}
