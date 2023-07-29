import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:movies_list/config/constants.dart';
import 'package:movies_list/models/movies_list.dart';
import 'package:movies_list/services/api_service.dart';

import '../services/internet_connection.dart';

class HomePageController extends GetxController with ApiService {
  final showSpinner = RxBool(false);
  final isMovies = RxBool(false);
  final itemCount = RxInt(2);
  final moviesList = RxList<MoviesList>([]);
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
        moviesList.value.addAll(movie as List<MoviesList>);
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
      final res = await get(
        baseUrl: Constants.baseUrl,
      );

      if (res.statusCode == 200) {
        try {
          final responseJson = res.data;

          isMovies.value = false;

          final decodedMap = jsonDecode(responseJson as String);

          if (responseJson != null) {
            var ss = decodedMap.entries.toList();
            var usdKey = decodedMap.entries.firstWhere(
              (entries) => entries.key == 'movies',
            );

            var gene = decodedMap.entries.firstWhere(
              (entries) => entries.key == 'genres',
            );
            try {
              genres.value = gene.value as List;
            } catch (e) {}
            // final valueMap = jsonDecode(responseJson);
            // final List<MoviesList> openTrades = usdKey.map((json) => MoviesList.fromJson(json as Map<String, dynamic>))
            //     .toList()
            //     .cast<MoviesList>() as List<MoviesList>;

            // final asMap = Map<String, dynamic>.fromEntries(usdKey as Iterable<MapEntry<String, dynamic>>);

            var moviesList = await usdKey.value.map((e) => MoviesList.fromJson(e as Map<String, dynamic>)).toList();

            moviesList.clear();
            moviesList.addAll(moviesList);

            try {
              final logIn = Hive.box('Movies');
              logIn.clear();
              await logIn.put(
                'Movies',
                moviesList,
              );
            } catch (e) {}

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
