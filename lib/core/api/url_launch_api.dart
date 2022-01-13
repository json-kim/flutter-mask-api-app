import 'package:url_launcher/url_launcher.dart';

class UrlLaunchApi {
  Future<void> launchUrl(String url) async {
    if (!await launch(url)) throw 'Could note launch $url';
  }
}
