import 'package:flutter/material.dart';

import '../widgets/landing_show.dart';
import '../widgets/main_scaffold.dart';
import '../widgets/story.dart';
import '../widgets/movie_card.dart';
import '../widgets/coming_soon_card.dart';
import '../widgets/coming_soon_slider.dart';
import '../widgets/movie_card_panal.dart';
import '../widgets/movies_slider.dart';
import '../widgets/picked_for_you_card.dart';
import '../widgets/story_slider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScaffold(
        appBar: TransAppBar(
          height: 50,
          actions: [
            GestureDetector(
              child: FittedBox(child: Text('أفلام', style: actionsStyle)),
            ),
            GestureDetector(
              child: FittedBox(child: Text('مسلسلات', style: actionsStyle)),
            ),
            GestureDetector(
              child: FittedBox(child: Text('أطفال', style: actionsStyle)),
            ),
          ],
        ),
        body: ListView(
          children: [
            LandingShow(
              title: 'The Little Things',
              thumbNail:
                  'https://www.vitalthrills.com/wp-content/uploads/2020/12/the-little-things.jpg.webp',
              categories: 'Crime . Thraler',
              onAdd: () {},
              onInfo: () {},
              onPlay: () {},
            ),
            StoriesSlider(
              children: [
                StorieHolder(
                  onTap: () {},
                  thumbNail:
                      "https://ctl.s6img.com/society6/img/nq3mhs2BH57iT0uPDqwdIvAXkRA/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/e72252770ea54a2d92c41ecb0f10b82f/~~/its-the-little-things-in-life1417526-prints.jpg?wait=0&attempt=0",
                ),
                StorieHolder(
                  onTap: () {},
                  thumbNail:
                      "https://ctl.s6img.com/society6/img/nq3mhs2BH57iT0uPDqwdIvAXkRA/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/e72252770ea54a2d92c41ecb0f10b82f/~~/its-the-little-things-in-life1417526-prints.jpg?wait=0&attempt=0",
                ),
                StorieHolder(
                  onTap: () {},
                  thumbNail:
                      "https://ctl.s6img.com/society6/img/nq3mhs2BH57iT0uPDqwdIvAXkRA/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/e72252770ea54a2d92c41ecb0f10b82f/~~/its-the-little-things-in-life1417526-prints.jpg?wait=0&attempt=0",
                ),
                StorieHolder(
                  onTap: () {},
                  thumbNail:
                      "https://ctl.s6img.com/society6/img/nq3mhs2BH57iT0uPDqwdIvAXkRA/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/e72252770ea54a2d92c41ecb0f10b82f/~~/its-the-little-things-in-life1417526-prints.jpg?wait=0&attempt=0",
                ),
                StorieHolder(
                  onTap: () {},
                  thumbNail:
                      "https://ctl.s6img.com/society6/img/nq3mhs2BH57iT0uPDqwdIvAXkRA/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/e72252770ea54a2d92c41ecb0f10b82f/~~/its-the-little-things-in-life1417526-prints.jpg?wait=0&attempt=0",
                ),
              ],
            ),
            MoviesSlider(
              title: 'Movies',
              children: [
                MovieCard(
                  movieCardPanal: MovieCardPanal(title: 'New'),
                  thumbNail:
                      "https://i.pinimg.com/originals/37/46/b3/3746b33e879cca0e7c80611811f44318.jpg",
                  onTap: () {},
                ),
                MovieCard(
                  thumbNail:
                      "https://i.pinimg.com/originals/37/46/b3/3746b33e879cca0e7c80611811f44318.jpg",
                  onTap: () {},
                ),
                MovieCard(
                  thumbNail:
                      "https://i.pinimg.com/originals/37/46/b3/3746b33e879cca0e7c80611811f44318.jpg",
                  onTap: () {},
                ),
                MovieCard(
                  thumbNail:
                      "https://i.pinimg.com/originals/37/46/b3/3746b33e879cca0e7c80611811f44318.jpg",
                  onTap: () {},
                ),
                MovieCard(
                  thumbNail:
                      "https://i.pinimg.com/originals/37/46/b3/3746b33e879cca0e7c80611811f44318.jpg",
                  onTap: () {},
                ),
              ],
            ),
            ComingSoonSlider(
              title: 'Coming soon',
              children: [
                ComingSoonCard(
                  thumbNail:
                      'https://www.nme.com/wp-content/uploads/2020/10/Chris_Rock_Spiral-1392x884.jpg',
                  title: 'Speral: From The Book Of Saw',
                  categories: 'Thriller.Horror.Mystery',
                ),
                ComingSoonCard(
                  thumbNail:
                      'https://www.nme.com/wp-content/uploads/2020/10/Chris_Rock_Spiral-1392x884.jpg',
                  title: 'Speral: From The Book Of Saw',
                  categories: 'Thriller.Horror.Mystery',
                ),
                ComingSoonCard(
                  thumbNail:
                      'https://www.nme.com/wp-content/uploads/2020/10/Chris_Rock_Spiral-1392x884.jpg',
                  title: 'Speral: From The Book Of Saw',
                  categories: 'Thriller.Horror.Mystery',
                ),
                ComingSoonCard(
                  thumbNail:
                      'https://www.nme.com/wp-content/uploads/2020/10/Chris_Rock_Spiral-1392x884.jpg',
                  title: 'Speral: From The Book Of Saw',
                  categories: 'Thriller.Horror.Mystery',
                ),
              ],
            ),
            PickedForYouCard(
              movieName: 'The Little Things',
              onAdd: () {},
              onPlay: () {},
              stars: '8',
              thumbNail:
                  'https://www.vitalthrills.com/wp-content/uploads/2020/12/the-little-things.jpg.webp',
              time: '120',
              title: 'Picked For You',
              year: '2021',
            )
          ],
        ),
      ),
    );
  }
}
