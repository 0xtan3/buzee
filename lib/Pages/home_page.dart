import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: signUserOut,
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: Stack(
          children: [
            // The original content of your page
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your destiny...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                // Expanded(
                //   child: Center(
                //     child: Text(
                //       "Logged IN as: ${user?.email ?? 'No Email'}",
                //       style: const TextStyle(fontSize: 20),
                //     ),
                //   ),
                // ),
              ],
            ),
            // Floating BottomNavigationBar
            Positioned(
              bottom: 20, // Adjust the distance from the bottom
              left: 20, // Adjust the distance from the left
              right: 20, // Adjust the distance from the right
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    30.0), // Circular border for floating effect
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF222831), // Your desired color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26, // Shadow color
                        blurRadius: 10, // Shadow blur
                        offset: const Offset(0, 5), // Shadow position
                      ),
                    ],
                  ),
                  child: BottomNavigationBar(
                    selectedFontSize: 0,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: const Color(0xFF222831),
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.home_rounded,
                            color: Colors.grey,
                          ),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.explore_rounded, color: Colors.grey),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.send, color: Colors.grey),
                          label: ''),
                      BottomNavigationBarItem(
                          icon:
                              Icon(Icons.favorite_rounded, color: Colors.grey),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_box_rounded,
                              color: Colors.grey),
                          label: ''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
