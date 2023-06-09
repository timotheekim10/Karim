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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/karim.png'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
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
                  const SizedBox(width: 50),
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
      ),
    );
  }
}
