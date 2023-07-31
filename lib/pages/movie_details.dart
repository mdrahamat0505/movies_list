import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_list/helpers/hex_color.dart';
import 'package:movies_list/models/movies_list.dart';
import 'package:movies_list/pages/home_page.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;
  final int it;

  const MovieDetails({required this.movie, required this.it, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: 360.0,
              height: 362.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: hexToColor('#000000'),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.network(
                  '${movie.posterUrl}',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: InkWell(
                onTap: () {
                  Get.offAll(() => HomePage());
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    color: hexToColor('#000000'),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/img/Frame.png',
                      height: 40,
                      width: 40,
                      color: hexToColor('#FFFFFF'),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: hexToColor('#FFFFFF'),
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: hexToColor('#FFFFFF'),
                ),
                height: 290.0,
                child: Container(
                  color: hexToColor('#FFFFFF'),
                  margin: const EdgeInsets.only(left: 16.0, top: 20, right: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (int i = 0;
                                  i <= movie.genres!.length - 1;
                                  i++)
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 10, 8, 10),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: hexToColor('#FFFFFF'),
                                      backgroundColor: hexToColor('#FFFFFF'),
                                      padding: const EdgeInsets.fromLTRB(
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
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        '${movie.genres?[i]}',
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter-Medium',
                                          color: hexToColor('#000000'),
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
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${movie.genres?.length} movies',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Inter-SemiBold',
                                      color: hexToColor('#000000'),
                                      height: .2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
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
                                        '${movie.year}',
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
                                    height: 30,
                                  ),
                                  Text(
                                    'Director:',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter-SemiBold',
                                      color: hexToColor('#000000'),
                                      height: .2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '${movie.director}',
                                    maxLines: 2,
                                    softWrap: false,
                                    overflow: TextOverflow.visible,
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
                                    height: 30,
                                  ),
                                  Text(
                                    'Actors:',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter-SemiBold',
                                      color: hexToColor('#000000'),
                                      height: .2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      '${movie.actors}',
                                      maxLines: 3,
                                      overflow: TextOverflow.visible,
                                      softWrap: false,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Inter-Regular',
                                        color: hexToColor('#000000'),
                                        height: .2,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Plot:',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter-SemiBold',
                                      color: hexToColor('#000000'),
                                      height: .2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      '${movie.plot}',
                                      maxLines: 3,
                                      softWrap: false,
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Inter-Regular',
                                        color: hexToColor('#000000'),
                                        height: .2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
