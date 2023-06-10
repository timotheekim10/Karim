import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RecommendedAppDetails extends StatefulWidget {
  final String? productName;

  const RecommendedAppDetails({
    Key? key,
    required this.productName,
  }) : super(key: key);

  @override
  State<RecommendedAppDetails> createState() => _RecommendedAppDetailsState();
}

class _RecommendedAppDetailsState extends State<RecommendedAppDetails> {
  void _launchYouTubeSearch(String searchQuery) async {
    String url =
        'https://www.youtube.com/results?search_query=${Uri.encodeComponent(searchQuery)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not launch YouTube search.'),
        ),
      );
    }
  }

  void _launchPlayStore(String searchQuery) async {
    String url =
        'https://play.google.com/store/search?q=${Uri.encodeComponent(searchQuery)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not launch Play Store search.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/karim.png'),
              ),
            ),
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 230),
                  child: Column(
                    children: [
                      Image.asset(
                        widget.productName != null
                            ? 'assets/images/${widget.productName}.jpg'
                            : 'assets/images/default.jpg',
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text(
                          widget.productName!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 350,
            left: 115,
            child: Container(
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        _launchPlayStore(widget.productName!);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/playstore.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Download',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        _launchYouTubeSearch(widget.productName!);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/youtube.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'YouTube',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
