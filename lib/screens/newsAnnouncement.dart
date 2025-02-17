import 'package:flutter/material.dart';
import '../data/getData.dart';

class News_Announcement_Widget extends StatefulWidget {
  final bool isDarkMode;
  const News_Announcement_Widget({required this.isDarkMode});

  @override
  State<News_Announcement_Widget> createState() => _News_Announcement_WidgetState();
}

class _News_Announcement_WidgetState extends State<News_Announcement_Widget> {
  BusData _BusData = BusData();
  String _NewsContent = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _NewsContent = _BusData.News;
    print('Printing _NewsContent: $_NewsContent');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.announcement, color: Colors.orange),
                    SizedBox(width: 5.0),
                    Text(
                      'Announcements',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  _NewsContent,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          )
        )
      )
      ],
    );
  }
}

class NewsAnnouncement extends StatelessWidget {
  final bool isDarkMode;

  const NewsAnnouncement({required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.lightBlue[600] : Colors.lightBlue[100],
        title: Text(
          'NP News Announcements',
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: isDarkMode ? Colors.lightBlue[900] : Colors.white,
        child: News_Announcement_Widget(isDarkMode: isDarkMode),
      ),
    );
  }
}
