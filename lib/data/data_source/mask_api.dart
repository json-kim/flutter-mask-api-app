import 'dart:convert';

import 'package:flutter_mask/core/result/result.dart';
import 'package:flutter_mask/data/util/mask_api_util.dart';
import 'package:http/http.dart' as http;

class MaskApi {
  Future<Result<List>> fetch(double lat, double lng) async {
    // lat, lng 로 url 만들기 => maskApiUrl
    try {
      final uri = Uri.parse(maskApiUrl);
      final result = await http.get(uri);

      if (result.statusCode == 200) {
        final List jsonStores = jsonDecode(result.body)['stores'];

        return Result.success(jsonStores);
      } else {
        return Result.error('$runtimeType : 네트워크 에러 ${result.statusCode}');
      }
    } catch (error) {
      return Result.error('$runtimeType : 네트워크 에러 $error');
    }
  }
}
