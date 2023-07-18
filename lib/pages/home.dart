import 'package:flutter/material.dart';
import 'package:movies_catalog/pages/main_page.dart';
import 'package:movies_catalog/rest/service/api_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: apiService.getApiData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                          'Something is wrong! Error to load movies')),
                );
              } else {
                final movies = snapshot.data as List;

                return const MainPage();
              }
          }
        });
  }
}
