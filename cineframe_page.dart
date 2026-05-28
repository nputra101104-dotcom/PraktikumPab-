import 'package:flutter/material.dart';
import 'cineframe_detail_page.dart';
import 'profile_page.dart';
import 'movie_page.dart';

class CineframePage extends StatefulWidget {
  const CineframePage({super.key});

  @override
  State<CineframePage> createState() => _CineframePageState();
}

class _CineframePageState extends State<CineframePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("CINEFRAME"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                
                  Row(
                    children: [

                      const CircleAvatar(
                        radius: 30,

                        backgroundImage: AssetImage(
                          "assets/carthetya.png",
                        ),
                      ),

                      const SizedBox(width: 10),

                      const Text(
                        "Christopher Nolan",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // ROW 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      movieCard(
                        context,
                        "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg",
                        "Sci-Fi",
                      ),

                      movieCard(
                        context,
                        "https://upload.wikimedia.org/wikipedia/en/d/d2/Prestige_poster.jpg",
                        "Mystery",
                      ),
                    ],
                  ),

                  // ROW 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      movieCard(
                        context,
                        "https://m.media-amazon.com/images/I/71lqDylcvGL.jpg",
                        "Drama",
                      ),

                      movieCard(
                        context,
                        "https://m.media-amazon.com/images/I/81CLFQwU-WL.jpg",
                        "Action",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

     
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

        backgroundColor: const Color(0xFF1F2A44),

        onTap: (index) {
          if (index == 0) {
          }

          
          else if (index == 1) {

            Navigator.pushReplacement(
              context,

              MaterialPageRoute(
                builder: (context) => const MoviePage(),
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

  Widget movieCard(BuildContext context, String image, String genre) {
    return Column(
      children: [

        ClipRRect(
          borderRadius: BorderRadius.circular(12),

          child: Image.network(
            image,
            height: 180,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 8),

        SizedBox(
          width: 120,

          child: ElevatedButton(
            onPressed: () {

              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) => CineframeDetailPage(
                    genre: genre,
                    image: image,
                  ),
                ),
              );
            },

            child: Text(genre),
          ),
        ),
      ],
    );
  }
}