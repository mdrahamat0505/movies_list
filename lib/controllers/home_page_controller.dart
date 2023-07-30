import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as hh;
import 'package:movies_list/config/constants.dart';
import 'package:movies_list/models/movies_list.dart';
import 'package:movies_list/services/api_service.dart';

class HomePageController extends GetxController with ApiService {
  final showSpinner = RxBool(false);
  final isMovies = RxBool(false);
  final itemCount = RxInt(2);
  final moviesList = RxList<Movie>([]);
  final genres = RxList([]);

  @override
  void onInit() {
    getMovieList();
    super.onInit();
  }

  @override
  void onReady() {
    try {
      final logIn = Hive.box('Movies');
      2.delay();
      final movie = logIn.get('Movies');
      if (movie != null) {
        moviesList.value.addAll(movie as List<Movie>);
      }
    } catch (e) {}
    // TODO: implement onReady
    super.onReady();
  }

  void getMovieList() async {
    // final connectivityResult =
    // await InternetConnection.isConnectedToInternet();
    //
    // if (connectivityResult) {

    isMovies.value = true;
    try {
      final url = Uri.parse(Constants.baseUrl);
      final res = await hh.get(url);

      if (res.statusCode == 200) {
        try {
          final responseJson = res.body;

          isMovies.value = false;

          final decodedMap = jsonDecode(res.body);
          final json = Map<String, dynamic>.from(decodedMap as Map);

          if (responseJson != null) {
            final Map<String, dynamic> newsjson = <String, dynamic>{};

            final usdKey = decodedMap.entries.firstWhere(
              (entries) => entries.key == 'movies',
            );

            newsjson['${usdKey.key}'] = usdKey.value;

            final gene = decodedMap.entries.firstWhere(
              (entries) => entries.key == 'genres',
            );

            final List<MoviesList> list = [];
            try {
              genres.clear();
              genres.value = gene.value as List;

              list.add(MoviesList.fromJson(newsjson));
            } catch (e) {
              log('$e');
            }

            moviesList.clear();
            moviesList.addAll(list[0].movies as List<Movie>);

            try {
              final logIn = Hive.box('Movies');
              await logIn.clear();
              await logIn.put(
                'Movies',
                moviesList,
              );
            } catch (e) {
              log('$e');
            }

            // getOpenTrades.value = openTrades;
            update(['aVeryUniqueID']);
            update();
          }
        } catch (e) {
          log('$e');
        }
      } else {
        Get.snackbar(
          'Attention!!',
          'There is no movies list',
          colorText: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
        );
      }
    } catch (e) {
      isMovies.value = false;
      log(e.toString());
    }
    // }else {
    //   Get.snackbar(
    //     'Attention!!',
    //     'Please check your internet connection.',
    //     colorText: Colors.red,
    //     snackPosition: SnackPosition.BOTTOM,
    //     backgroundColor: Colors.white,
    //   );
    // }
  }
}
