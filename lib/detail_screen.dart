import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'model/film.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final Film film;

  const DetailScreen({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(film: film);
        } else {
          return DetailMobilePage(film: film);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Film film;

  const DetailMobilePage({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(film.posterPath),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                film.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.production_quantity_limits),
                      const SizedBox(height: 8.0),
                      Text(
                        film.productionCountries,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.language),
                      const SizedBox(height: 8.0),
                      Text(
                        film.originalLanguage,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.date_range),
                      const SizedBox(height: 8.0),
                      Text(
                        film.year,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.star),
                      const SizedBox(height: 8.0),
                      Text(
                        film.voteCount,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.alarm),
                      const SizedBox(height: 8.0),
                      Text(
                        film.runtime,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                child: const Text("Synopsis",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.bold))),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                film.overview,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Film film;

  const DetailWebPage({Key? key, required this.film}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: kIsWeb ? null : AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 64,
            ),
            child: Center(
              child: SizedBox(
                width: screenWidth <= 1200 ? 800 : 1200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Detail Film',
                      style: TextStyle(
                        fontFamily: 'Staatliches',
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image.asset(widget.film.posterPath),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text(
                                    widget.film.title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: 'Staatliches',
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          const Icon(
                                              Icons.production_quantity_limits),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.film.productionCountries,
                                            style: informationTextStyle,
                                          ),
                                        ],
                                      ),
                                      const FavoriteButton(),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.language),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.film.originalLanguage,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.date_range),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.film.year,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.star),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.film.voteAverage,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.alarm),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.film.runtime,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text(
                                      widget.film.overview,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Oxygen',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
