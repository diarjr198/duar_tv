import 'package:android_intent_plus/android_intent.dart';
import 'package:device_apps/device_apps.dart';
import 'package:duar_tv/pages/view_video_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ChannelCard extends StatefulWidget {
  // const ChannelCard({Key? key}) : super(key: key);

  final String channelName;
  final String channelId;
  final String channelLogo;
  final String channelUrl;
  final String channelDescription;
  final String channelCategory;

  ChannelCard(
      {Key? key,
      required this.channelName,
      required this.channelId,
      required this.channelLogo,
      required this.channelUrl,
      required this.channelDescription,
      required this.channelCategory});

  @override
  State<ChannelCard> createState() => _ChannelCardState();
}

class _ChannelCardState extends State<ChannelCard> {
  _launchUrl(String url) async {
    // try {
    //   await launch(
    //     url,
    //     customTabsOption: CustomTabsOption(
    //       extraCustomTabs: <String>[
    //         // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
    //         'com.mtdeer.exostreamr',
    //       ],
    //     ),
    //   );
    // } catch (e) {
    //   debugPrint(e.toString());
    // }
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
    // print('sukses');

    if (await canLaunch(url)) {
      bool isInstalled =
          await DeviceApps.isAppInstalled('com.mtdeer.exostreamr');
      if (isInstalled != false) {
        print('test');
        // await launch(url,
        //     forceWebView: false,
        //     forceSafariVC: false,
        //     universalLinksOnly: true);
        AndroidIntent intent = AndroidIntent(
          action: 'action_view',
          data: url,
          package: 'com.mtdeer.exostreamr',
        );
        await intent.launch();
      }
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ViewVideoPage(),
        //   ),
        // );
        _launchUrl(widget.channelUrl);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 150,
        color: Colors.cyan,
        child: Center(child: Image.network(widget.channelLogo, width: 75)),
      ),
    );
  }
}
