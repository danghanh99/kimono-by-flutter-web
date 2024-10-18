import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kimono_rental_flutter_web/shared/components/background_widget.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({
    super.key,
  });

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text("Q&A page"),
                footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Social Media Section
          Column(
            children: [
              const Text(
                'KILALA MIMONO RENTAL',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.instagram,
                        color: Colors.pink),
                    onPressed: () {
                      // Handle Instagram link
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebookF,
                        color: Colors.blue),
                    onPressed: () {
                      // Handle Facebook link
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.xTwitter,
                        color: Colors.black),
                    onPressed: () {
                      // Handle X link
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.tiktok,
                        color: Colors.black),
                    onPressed: () {
                      // Handle TikTok link
                    },
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          // Logo Section
          const Column(
            children: [
              Text(
                'KILALA',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '気軽に美しく',
                style: TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'KIMONO RENTAL',
                style: TextStyle(
                  fontSize: 14.0,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          // Footer Links Section
          Column(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Terms of service'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Privacy policy'),
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          // Copyright Section
          const Text(
            'Copyright © KILALA all rights reserved.',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
