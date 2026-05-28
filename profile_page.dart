import 'package:flutter/material.dart';
import 'cineframe_page.dart';
import 'movie_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFE9F0FF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 15),

                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,

                    child: Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            profileItem(Icons.person, "Nalendra Putra Wicaksana"),
            profileItem(Icons.phone, "1462300034"),
            profileItem(Icons.email, "nputra101104@gmail.com"),
            profileItem(Icons.location_on, "Surabaya"),
            profileItem(Icons.camera_alt, "@nalendraputraw"),

            const SizedBox(height: 30),
          ],
        ),
      ),

 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        backgroundColor: const Color(0xFF1F2A44),

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

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

  static Widget profileItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blue,
      ),

      title: Text(text),
    );
  }
}
