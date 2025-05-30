import 'package:loyapy/core/constants/app_contents.dart';
import 'package:loyapy/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

void openWhatsApp(String productTitle) async {
  final message =
      Uri.encodeComponent("Hi, I'm interested in buying: $productTitle");
  final url =
      Uri.parse("https://wa.me/${AppContents.companyPhone}?text=$message");

  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    kLog.i("Could not launch WhatsApp");
  }
}
