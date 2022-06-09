import 'package:duar_tv/widgets/channel_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
            image: AssetImage('assets/images/profile.jpeg'), fit: BoxFit.cover),
      ),
      accountName: Text('Diar J R'),
      accountEmail: Text('diar.student@gmail.com'),
    );
  }

  Widget _drawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Duar TV')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _drawerHeader(),
            _drawerItem(
              icon: Icons.folder,
              text: 'My Files',
              onTap: () => print('Tap My Files'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          children: [
            ChannelCard(
              channelName: 'TRANS 7',
              channelId: '1',
              channelLogo: 'https://i.ibb.co/dPFnbkz/trans7-home-tv.png',
              channelUrl: 'http://akudandia.xyz/locs/akudandia-734.m3u8',
              channelDescription: 'TRANS 7',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'TRANS TV',
              channelId: '2',
              channelLogo: 'https://i.ibb.co/ChZx3vT/transtv-home-tv.png',
              channelUrl:
                  'http://singaporehub.net:5759/TranstvTvlocal/tracks-v1a1/mono.m3u8',
              channelDescription: 'TRANS TV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'INDOSIAR',
              channelId: '3',
              channelLogo: 'https://i.ibb.co/qC5NGhR/indosiar-home-tv.png',
              channelUrl: 'https://akudandia.xyz//locs/akudandia-205.m3u8',
              channelDescription: 'INDOSIAR',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'SCTV',
              channelId: '4',
              channelLogo: 'https://i.ibb.co/hFC9nw1/sctv-home-tv.png',
              channelUrl:
                  'http://hi.hi-back.masuk.web.id/c.m3u8?shinta=2022&coday=f846bc691110108f73cb55c2f4049864&cdy=274ad4786c3abca69fa097b85867d9a4446503011668def857b1c03bafabba51',
              channelDescription: 'SCTV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'RCTI',
              channelId: '5',
              channelLogo: 'https://i.ibb.co/wLWjY5G/rcti-home-tv.png',
              channelUrl:
                  'https://d1akid76fpbq4x.cloudfront.net/live/eds/RCTI_2021/live_fta/RCTI_2021.m3u8',
              channelDescription: 'RCTI',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'MNCTV',
              channelId: '6',
              channelLogo: 'https://i.ibb.co/HGkQ2YB/mnctv-home-tv.png',
              channelUrl:
                  'https://vcdn2.rctiplus.id/live/eds/MNCTV_2021/live_fta/MNCTV_2021-avc1_800000=6-mp4a_96000=2.m3u8',
              channelDescription: 'MNCTV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'TV ONE',
              channelId: '7',
              channelLogo: 'https://i.ibb.co/Ptrwg6d/tvone-home-tv.png',
              channelUrl: 'http://210.210.155.35:80/qwr9ew/s/s105/01.m3u8',
              channelDescription: 'TV ONE',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'GTV',
              channelId: '8',
              channelLogo: 'https://i.ibb.co/gZLhrBt/gtv-home-tv.png',
              channelUrl:
                  'https://vcdn2.rctiplus.id/live/eds/GTV2021/live_fta/GTV2021-avc1_800000=6-mp4a_96000=2.m3u8',
              channelDescription: 'GTV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'iNEWS',
              channelId: '9',
              channelLogo: 'https://i.ibb.co/KWttnf1/inews-home-tv.png',
              channelUrl:
                  'https://vcdn2.rctiplus.id/live/eds/INEWS_2021/live_fta/INEWS_2021-avc1_800000=7-mp4a_96000=2.m3u8',
              channelDescription: 'iNEWS',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'METRO TV',
              channelId: '10',
              channelLogo: 'https://i.ibb.co/M9c0sy2/metrotv-home-tv.png',
              channelUrl:
                  'https://cdn-telkomsel-01.akamaized.net/Content/HLS/Live/channel(bd164a95-722d-40db-a596-687c8123f197)/index.m3u8',
              channelDescription: 'METRO TV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'NET TV',
              channelId: '11',
              channelLogo: 'https://i.ibb.co/mJjQDnj/nettv-home-tv.png',
              channelUrl: 'http://akudandia.xyz/locs/akudandia-875.m3u8',
              channelDescription: 'NET TV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'O CHANNEL',
              channelId: '12',
              channelLogo: 'https://i.ibb.co/tXZT0Lz/Ochannel.png',
              channelUrl: 'http://akudandia.xyz/locs/akudandia-206.m3u8',
              channelDescription: 'O CHANNEL',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'BERITA SATU',
              channelId: '13',
              channelLogo: 'https://i.ibb.co/FxD8rj8/beritasatu-home-tv.png',
              channelUrl:
                  'https://b1world.beritasatumedia.com/Beritasatu/B1World_1280x720.m3u8?aux=eroz_brebes.m3u8',
              channelDescription: 'BERITA SATU',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'RTV',
              channelId: '14',
              channelLogo: 'https://i.ibb.co/Qmh4NMJ/rtv-home-tv.png',
              channelUrl:
                  'http://singaporehub.net:5759/RtvTvlocal/tracks-v1a1/mono.m3u8',
              channelDescription: 'RTV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'KOMPAS TV',
              channelId: '15',
              channelLogo: 'https://i.ibb.co/R3Hyxc1/kompastv-home-tv.png',
              channelUrl:
                  'https://cdn-telkomsel-01.akamaized.net/Content/HLS/Live/channel(dc9040ad-a4e1-4d08-883c-a65542b69602)/index.m3u8',
              channelDescription: 'KOMPAS TV',
              channelCategory: 'LOKAL',
            ),
            ChannelCard(
              channelName: 'TVRI',
              channelId: '16',
              channelLogo: 'https://i.ibb.co/d5tmxwX/tvri-home-tv.png',
              channelUrl:
                  'http://wpc.d1627.nucdn.net/80D1627/o-tvri/Content/HLS/Live/Channel(TVRINASIONAL)/Stream(03)/index.m3u8',
              channelDescription: 'TVRI',
              channelCategory: 'LOKAL',
            ),
          ],
        ),
      ),
      // Column(
      //   children: [
      //     Row(
      //       children: [
      //         ChannelCard(),
      //         ChannelCard(),
      //         ChannelCard(),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         ChannelCard(),
      //         ChannelCard(),
      //         ChannelCard(),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
