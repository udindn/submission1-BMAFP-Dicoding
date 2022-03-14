class Film {
  String id;
  String title;
  String year;
  String overview;
  String posterPath;
  String productionCountries;
  String voteAverage;
  String voteCount;
  String originalLanguage;
  String popularity;
  String runtime;
  List<String> createdBy;

  Film(
      {required this.id,
      required this.title,
      required this.year,
      required this.overview,
      required this.posterPath,
      required this.productionCountries,
      required this.voteAverage,
      required this.voteCount,
      required this.originalLanguage,
      required this.popularity,
      required this.runtime,
      required this.createdBy});
}

var filmList = [
  Film(
      id: '1',
      title: 'Soul',
      year: '2020',
      overview:
          'Joe Gardner is a middle school teacher with a love for jazz music. After a successful gig at the Half Note Club, he suddenly gets into an accident that separates his soul from his body and is transported to the You Seminar, a center in which souls develop and gain passions before being transported to a newborn child. Joe must enlist help from the other souls-in-training, like 22, a soul who has spent eons in the You Seminar, in order to get back to Earth.',
      posterPath: 'images/soul.jpg',
      productionCountries: 'United States',
      voteAverage: '345.0',
      voteCount: '6.8',
      originalLanguage: 'English',
      popularity: '4698.966',
      runtime: '3h 01min',
      createdBy: ['Robert A.', 'Julius']),
  Film(
      id: '2',
      title: 'The Croods: A New Age',
      year: '2020',
      overview:
          'Searching for a safer habitat, the prehistoric Crood family discovers an idyllic, walled-in paradise that meets all of its needs. Unfortunately, they must also learn to live with the Bettermans -- a family that\'s a couple of steps above the Croods on the evolutionary ladder. As tensions between the new neighbors start to rise, a new threat soon propels both clans on an epic adventure that forces them to embrace their differences, draw strength from one another, and survive together.',
      posterPath: 'images/croods.jpg',
      productionCountries: 'United States',
      voteAverage: '848.0',
      voteCount: '7.8',
      originalLanguage: 'English',
      popularity: '1982.471',
      runtime: '2h 21min',
      createdBy: ['Jhonson']),
  Film(
      id: '3',
      title: 'Вратарь Галактики',
      year: '2020',
      overview:
          'Joe Gardner is a middle school teacher with a love for jazz music. After a successful gig at the Half Note Club, he suddenly gets into an accident that separates his soul from his body and is transported to the You Seminar, a center in which souls develop and gain passions before being transported to a newborn child. Joe must enlist help from the other souls-in-training, like 22, a soul who has spent eons in the You Seminar, in order to get back to Earth.',
      posterPath: 'images/cosmoball.jpg',
      productionCountries: 'United States',
      voteAverage: '4.7',
      voteCount: '41.0',
      originalLanguage: 'Russia',
      popularity: '1795.964',
      runtime: '3h 21min',
      createdBy: ['Bossman']),
  Film(
      id: '4',
      title: 'Monsters of Man',
      year: '2020',
      overview:
          'A robotics company vying to win a lucrative military contract team up with a corrupt CIA agent to conduct an illegal live field test. They deploy four weaponized prototype robots into a suspected drug manufacturing camp in the Golden Triangle, assuming they\'d be killing drug runners that no one would miss. Six doctors on a humanitarian mission witness the brutal slaughter and become prime targets.',
      posterPath: 'images/monster.jpg',
      productionCountries: 'United States',
      voteAverage: '7.2',
      voteCount: '103.0',
      originalLanguage: 'English',
      popularity: '1793.15',
      runtime: '2h 41min',
      createdBy: ['X-Man']),
  Film(
      id: '5',
      title: 'The Midnight Sky',
      year: '2020',
      overview:
          'A lone scientist in the Arctic races to contact a crew of astronauts returning home to a mysterious global catastrophe.',
      posterPath: 'images/midnightsky.jpg',
      productionCountries: 'United States',
      voteAverage: '6.0',
      voteCount: '614.0',
      originalLanguage: 'English',
      popularity: '1763.152',
      runtime: '3h 11min',
      createdBy: ['Valadimir Putin']),
  Film(
      id: '6',
      title: 'Honest Thief',
      year: '2020',
      overview:
          'A bank robber tries to turn himself in because he\'s falling in love and wants to live an honest life...but when he realizes the Feds are more corrupt than him, he must fight back to clear his title.',
      posterPath: 'images/honest.jpg',
      productionCountries: 'United States',
      voteAverage: '345.0',
      voteCount: '6.8',
      originalLanguage: 'English',
      popularity: '1563.956',
      runtime: '2h 34min',
      createdBy: ['Zelensky']),
  Film(
      id: '7',
      title: 'Tenet',
      year: '2020',
      overview:
          'Armed with only one word - Tenet - and fighting for the survival of the entire world, the Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.',
      posterPath: 'images/tenet.jpg',
      productionCountries: 'United States',
      voteAverage: '7.4',
      voteCount: '3471.0',
      originalLanguage: 'English',
      popularity: '1424.415',
      runtime: '3h 01min',
      createdBy: ['Robert Junior']),
  Film(
      id: '8',
      title: 'Wander',
      year: '2020',
      overview:
          'After getting hired to probe a suspicious death in the small town of Wander, a mentally unstable private investigator becomes convinced the case is linked to the same \'conspiracy cover up\' that caused the death of his daughter.',
      posterPath: 'images/wander.jpg',
      productionCountries: 'United States',
      voteAverage: '5.5',
      voteCount: '51.0',
      originalLanguage: 'English',
      popularity: '990.699',
      runtime: '4h 00min',
      createdBy: ['Valentino Rossi', 'Dani Pedrosa']),
  Film(
      id: '9',
      title: 'Jiu Jitsu',
      year: '2020',
      overview:
          'Every six years, an ancient order of jiu-jitsu fighters joins forces to battle a vicious race of alien invaders. But when a celebrated war hero goes down in defeat, the fate of the planet and mankind hangs in the balance.',
      posterPath: 'images/jiujitsu.jpg',
      productionCountries: 'United States',
      voteAverage: '5.4',
      voteCount: '218.0',
      originalLanguage: 'English',
      popularity: '984.755',
      runtime: '2h 01min',
      createdBy: ['C.Ronaldo']),
  Film(
      id: '10',
      title: 'Fatman',
      year: '2020',
      overview:
          'A rowdy, unorthodox Santa Claus is fighting to save his declining business. Meanwhile, Billy, a neglected and precocious 12 year old, hires a hit man to kill Santa after receiving a lump of coal in his stocking.',
      posterPath: 'images/fatman.jpg',
      productionCountries: 'United States',
      voteAverage: '5.7',
      voteCount: '277.0',
      originalLanguage: 'English',
      popularity: '901.878',
      runtime: '3h 51min',
      createdBy: ['Lionel Messi'])
];
