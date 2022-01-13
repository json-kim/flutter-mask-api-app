import 'package:url_launcher/url_launcher.dart';

class UrlLaunchApi {
  UrlLaunchApi._();

  static final UrlLaunchApi _instance = UrlLaunchApi._();
  static UrlLaunchApi get instance => _instance;

  Future<void> launchUrl(String url) async {
    if (!await launch(url)) throw 'Could note launch $url';
  }
}
