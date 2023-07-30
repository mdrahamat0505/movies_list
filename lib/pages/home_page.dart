import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:movies_list/components/circle_image.dart';
import 'package:movies_list/controllers/home_page_controller.dart';
import 'package:movies_list/helpers/hex_color.dart';

import 'package:movies_list/pages/movie_details.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController logic = Get.find();

  @override
  void initState() {
    //logic.getMovieList();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 250,
      backgroundColor: Colors.green,
      color: Colors.greenAccent,
      strokeWidth: 3,
      onRefresh: () async {
        await Future.delayed(const Duration(milliseconds: 100));
        logic.getMovieList();
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
        body: GetBuilder<HomePageController>(
          id: 'aVeryUniqueID',
          builder: (logic) {
            return logic.isMovies.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Obx(() {
                    return (logic.moviesList.value != [] &&
                            logic.isMovies.value)
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView(
                            // mainAxisSize: MainAxisSize.min,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 0,
                                child: SizedBox(
                                  height: 60,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      for (int i = 0;
                                          i <= logic.genres.value.length - 1;
                                          i++)
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 10, 8, 10),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  hexToColor('#FFFFFF'),
                                              backgroundColor:
                                                  hexToColor('#000000'),
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8, 16, 8, 16),
                                              minimumSize: const Size(72, 36),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(70.0),
                                                side: BorderSide(
                                                  color: hexToColor(
                                                    '#111322',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                '${logic.genres.value[i]}',
                                                overflow: TextOverflow.visible,
                                                softWrap: false,
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
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
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '${logic.genres.value.length}Crime movies',
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
                              //  for (MoviesList ls in logic.moviesList.value)
                              for (int i = 0;
                                  i <= logic.moviesList.value.length - 1;
                                  i++)
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(
                                        () => MovieDetails(
                                          movie: logic.moviesList.value[i],
                                          it: i,
                                        ),
                                      );
                                    },
                                    child: SingleChildScrollView(
                                      child: Card(
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          side: BorderSide(
                                            color: hexToColor('#EAECF0'),
                                          ),
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                                width: 115.0,
                                                height: 133.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(16)),
                                                  color: hexToColor('#000000'),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  child: SizedBox.fromSize(
                                                    size: const Size.fromRadius(
                                                        16),
                                                    child: (logic.moviesList
                                                                    .value !=
                                                                null &&
                                                            logic.moviesList
                                                                    .value[i] !=
                                                                'null')
                                                        ? Image.network(
                                                            '${logic.moviesList.value[i].posterUrl}',
                                                          )
                                                        : SizedBox(),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 12,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${logic.moviesList.value[i].title}',
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.visible,
                                                      softWrap: false,
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily:
                                                            'Inter-SemiBold',
                                                        color: hexToColor(
                                                            '#000000'),
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
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                'Inter-Regular',
                                                            color: hexToColor(
                                                                '#000000'),
                                                            height: .2,
                                                          ),
                                                        ),
                                                        Text(
                                                          '${logic.moviesList.value[i].year}',
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .visible,
                                                          softWrap: false,
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                'Inter-Regular',
                                                            color: hexToColor(
                                                                '#000000'),
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
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Inter-Regular',
                                                        color: hexToColor(
                                                            '#000000'),
                                                        height: .2,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Expanded(
                                                      flex: 0,
                                                      child: Text(
                                                        '${logic.moviesList.value[i].director}',
                                                        maxLines: 2,
                                                        softWrap: false,
                                                        overflow: TextOverflow
                                                            .visible,
                                                        style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily:
                                                              'Inter-Regular',
                                                          color: hexToColor(
                                                              '#000000'),
                                                          height: .2,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                  });
          },
        ),
      ),
    );
  }
}
