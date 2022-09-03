import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://marathonfox.com');
final Uri _tel = Uri.parse('tel:+919105604725');
final Uri _mail = Uri.parse(
    'mailto:ayush.mandal11@gmail.com?subject=Work opportunity&body=New%20plugin');

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepOrangeAccent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('Image/photo.jpg'),
                ),
                const Text(
                  "Ayush Mandal",
                  style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 19.0,
                  width: 160.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () => _telephone(),
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.phone,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '+91 910 560 4725',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _mailTo(),
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.email,
                            color: Colors.orange,
                          ),
                          const SizedBox(width: 20.0),
                          const Text(
                            'ayush.mandal11@gmail.com',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _launchUrl(),
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.web_rounded,
                            color: Colors.orange,
                          ),
                          const SizedBox(width: 20.0),
                          const Text(
                            'www.marathonfox.com',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

Future<void> _telephone() async {
  if (!await launchUrl(_tel)) {
    throw 'Could not launch $_url';
  }
}

Future<void> _mailTo() async {
  if (!await launchUrl(_mail)) {
    throw 'Could not launch $_url';
  }
}
