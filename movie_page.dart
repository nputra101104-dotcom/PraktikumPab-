import 'package:flutter/material.dart';
import 'cineframe_page.dart';
import 'profile_page.dart';
import 'cineframe_detail_page.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> movies = [

      {
        "title": "Interstellar",
        "image":
        "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg",
      },

      {
        "title": "Oppenheimer",
        "image":
        "https://upload.wikimedia.org/wikipedia/en/4/4a/Oppenheimer_%28film%29.jpg",
      },

      {
        "title": "The Dark Knight",
        "image":
        "https://m.media-amazon.com/images/I/81CLFQwU-WL.jpg",
      },

      {
        "title": "Inception",
        "image":
        "https://m.media-amazon.com/images/I/91Rc8cAmnAL.jpg",
      },

      {
        "title": "Dune",
        "image":
        "https://m.media-amazon.com/images/I/81zN7udGRUL.jpg",
      },

      {
        "title": "Parasite",
        "image":
        "https://upload.wikimedia.org/wikipedia/en/5/53/Parasite_%282019_film%29.png",
      },

      {
        "title": "Avengers",
        "image":
        "https://m.media-amazon.com/images/I/71niXI3lxlL.jpg",
      },

      {
        "title": "Joker",
        "image":
        "https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg",
      },

      {
        "title": "Tenet",
        "image":
        "https://upload.wikimedia.org/wikipedia/en/1/14/Tenet_movie_poster.jpg",
      },

      {
        "title": "Batman Begins",
        "image":
        "https://upload.wikimedia.org/wikipedia/en/a/af/Batman_Begins_Poster.jpg",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("MOVIES"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: GridView.builder(
          itemCount: movies.length,

          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.6,
          ),

          itemBuilder: (context, index) {

            return Column(
              children: [

                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),

                    child: Image.network(
                      movies[index]["image"]!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) => CineframeDetailPage(
                            genre: movies[index]["title"]!,
                            image: movies[index]["image"]!,
                          ),
                        ),
                      );
                    },

                    child: Text(
                      movies[index]["title"]!,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

        backgroundColor: const Color(0xFF1F2A44),

        onTap: (index) {

          // HOME
          if (index == 0) {

            Navigator.pushReplacement(
              context,

              MaterialPageRoute(
                builder: (context) => const CineframePage(),
              ),
            );
          }

          else if (index == 2) {

            Navigator.pushReplacement(
              context,

              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          }
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Movie",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}