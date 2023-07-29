import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:movies_list/components/circle_image.dart';
import 'package:movies_list/helpers/hex_color.dart';

import 'package:movies_list/pages/movie_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 250,
      backgroundColor: Colors.green,
      color: Colors.greenAccent,
      strokeWidth: 3,
      onRefresh: () async {
        await Future.delayed(const Duration(milliseconds: 100));
        // logic.GetOpenTrades();
        // logic.itemCount.value = logic.itemCount.value + 1;
      },
      child: Scaffold(
        backgroundColor: hexToColor('#FFFFFF'),
        appBar: AppBar(
          backgroundColor: hexToColor('#FFFFFF'),
          surfaceTintColor: hexToColor('#FFFFFF'),
          bottomOpacity: 0.0,
          toolbarOpacity: 0.0,
          // leadingWidth: 92,
          toolbarHeight: 60,
          centerTitle: true,
          elevation: 0,
          shadowColor: hexToColor('#FFFFFF'),

          leading: IconButton(
            icon: Image.asset(
              'assets/img/Icon.png',
              height: 24,
              width: 24,
              fit: BoxFit.cover,
              color: hexToColor('#000000'),
            ),
            iconSize: 24,
            onPressed: () {},
            color: hexToColor('#FFFFFF'),
          ),
          title: Text(
            'MovieOnline',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter-SemiBold',
              color: hexToColor('#000000'),
              height: .2,
            ),
          ),
          titleSpacing: 0,

          actions: [
            getDefaultImageFromAsset(context: context),
            const SizedBox(
              width: 14,
            ),
          ],
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: hexToColor('#000000'),
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            systemNavigationBarDividerColor: hexToColor('#000000'),
            systemNavigationBarColor: hexToColor('#000000'),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: hexToColor('#FFFFFF'),
                  backgroundColor: hexToColor('#000000'),
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  minimumSize: const Size(72, 36),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    side: BorderSide(
                      color: hexToColor(
                        '#111322',
                      ),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Crime',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter-Medium',
                      color: hexToColor('#FFFFFF'),
                      height: .2,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '4 Crime movies',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter-SemiBold',
                  color: hexToColor('#000000'),
                  height: .2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => const MovieDetails());
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(
                      color: hexToColor('#EAECF0'),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 115.0,
                          height: 133.0,
                          decoration: BoxDecoration(
                            borderRadius: const
                            BorderRadius.all(Radius.circular(16)),
                            color: hexToColor('#000000'),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(16),
                              child: Image.network(
                                height: 115.0,
                                width: 133.0,
                                fit: BoxFit.fill,
                                'https://image.tmdb.org/t/p/w500/yJdeWaVXa2se9agI6B4mQunVYkB.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '4 Crime movies',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter-SemiBold',
                                color: hexToColor('#000000'),
                                height: .2,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Year:',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter-Regular',
                                    color: hexToColor('#000000'),
                                    height: .2,
                                  ),
                                ),
                                Text(
                                  '1999',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter-Regular',
                                    color: hexToColor('#000000'),
                                    height: .21,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Director:',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                color: hexToColor('#000000'),
                                height: .2,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Name',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                color: hexToColor('#000000'),
                                height: .2,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
