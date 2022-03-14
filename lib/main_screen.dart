import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'model/film.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Daftar Film'),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const FilmList();
              } else if (constraints.maxWidth <= 800) {
                return const FilmGrid(gridCount: 2);
              } else if (constraints.maxWidth <= 1000) {
                return const FilmGrid(gridCount: 3);
              } else {
                return const FilmGrid(gridCount: 4);
              }
            },
          ),
        );
      },
    );
  }
}

class FilmList extends StatelessWidget {
  const FilmList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final Film film = filmList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(film: film);
              }));
            },
            // child: Card(
            child: Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.asset(film.posterPath)),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            film.title,
                            style: const TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(film.year),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: Container(
                                      color: const Color.fromARGB(
                                          255, 235, 235, 235),
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: <Widget>[
                                          const SizedBox(width: 8.0),
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            film.voteAverage,
                                            style: const TextStyle(
                                                fontFamily: 'Oxygen',
                                                fontSize: 12.0),
                                          ),
                                          const SizedBox(width: 8.0),
                                        ],
                                      ))),
                              const SizedBox(width: 8.0),
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Container(
                                          color: const Color.fromARGB(
                                              255, 235, 235, 235),
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: <Widget>[
                                              const SizedBox(width: 8.0),
                                              const Icon(Icons.alarm),
                                              const SizedBox(width: 8.0),
                                              Text(
                                                film.runtime,
                                                style: const TextStyle(
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 12.0),
                                              ),
                                              const SizedBox(width: 8.0),
                                            ],
                                          ))),
                                  const SizedBox(width: 8.0),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Container(
                                  width: 150,
                                  color:
                                      const Color.fromARGB(255, 235, 235, 235),
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      const SizedBox(width: 8.0),
                                      const Icon(
                                          Icons.production_quantity_limits),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        film.productionCountries,
                                        style: const TextStyle(
                                            fontFamily: 'Oxygen',
                                            fontSize: 12.0),
                                      ),
                                      const SizedBox(width: 8.0),
                                    ],
                                  ))),
                          const SizedBox(width: 8.0),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: filmList.length,
      ),
    );
  }
}

class FilmGrid extends StatelessWidget {
  final int gridCount;

  const FilmGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: filmList.map((film) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(film: film);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        film.posterPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 8.0),
                      child: Text(
                        film.title + " (" + film.year + ")",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const SizedBox(width: 8.0),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              film.voteAverage,
                              style: const TextStyle(
                                  fontFamily: 'Oxygen', fontSize: 12.0),
                            ),
                            const SizedBox(width: 8.0),
                          ],
                        ),
                        const SizedBox(width: 8.0),
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const SizedBox(width: 8.0),
                                const Icon(Icons.alarm),
                                const SizedBox(width: 8.0),
                                Text(
                                  film.runtime,
                                  style: const TextStyle(
                                      fontFamily: 'Oxygen', fontSize: 12.0),
                                ),
                                const SizedBox(width: 8.0),
                              ],
                            ),
                            const SizedBox(width: 8.0),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
