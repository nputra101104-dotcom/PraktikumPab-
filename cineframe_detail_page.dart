import 'package:flutter/material.dart';
import 'cineframe_page.dart';
import 'profile_page.dart';
import 'movie_page.dart';

class CineframeDetailPage extends StatelessWidget {
  final String genre;
  final String image;

  const CineframeDetailPage({
    super.key,
    required this.genre,
    required this.image,
  });

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

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(15),

              child: Image.network(
                image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              genre,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Dune : Part Two (2024)",
              style: TextStyle(fontSize: 16),
            ),

            const Divider(),

            const Text("Oppenheimer (2023)"),
            const Divider(),

            const Text("Parasite (2019)"),
            const Divider(),

            const Text("The Godfather (1972)"),
            const Divider(),

            const Text("The Dark Knight"),
            const Divider(),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {},

                child: const Text("WATCH TRAILER"),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,

              child: OutlinedButton(
                onPressed: () {},

                child: const Text("MORE DETAILS"),
              ),
            ),
          ],
        ),
      ),

 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

        backgroundColor: const Color(0xFF1F2A44),

        onTap: (index) {

       
          if (index == 0) {

            Navigator.pushReplacement(
              context,

              MaterialPageRoute(
                builder: (context) => const CineframePage(),
              ),
            );
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
}