import 'package:classxii/utils/chapter_content.dart';
import 'package:flutter/material.dart';

class NepaliPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const NepaliPage({super.key,required this.onToggleDarkMode});

  @override
  State<NepaliPage> createState() => _NepaliPageState();
}

class _NepaliPageState extends State<NepaliPage> {
  bool isDarkMode = false;
  List nepaliChapters = [
    'Chapter 1: Bir Purkha',
    'Chapter 2: Gauko Maya',
    'Chapter 3: Sanskriti ko Naya Yatra',
    'Chapter 4: Yogmaya',
    'Chapter 5: Sathi lai Chithi',
    'Chapter 6: Tyo Feri Farkala',
    'Chapter 7: Paryaparyatan ka Sambhavna ra Aayam',
    'Chapter 8: Lau Aayo Taja khabar',
    'Chapter 9: Safalta ko Katha',
    'Chapter 10: Krishishala ma Ek din',
    'Chapter 11: Rara Bhraman',
    'Chapter 12: Jalsrot ra Urja'
  ];
  // List chapterContent = [
  // ];

  static const chapterContent = 'The content will be uploaded soon!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepali-XII'),
        elevation: 0,
        actions: [
          Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
                
              }
            ),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: nepaliChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: nepaliChapters[index],
                              // chapterContent: chapterContent[index],
                              chapterContent: chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      nepaliChapters[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
