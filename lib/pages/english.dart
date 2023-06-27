import 'package:flutter/material.dart';

class EnglishPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const EnglishPage({super.key, required this.onToggleDarkMode});

  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
  bool isDarkMode = false;
  List <String>sectionEnglish = [
    'Section One: Language Development',
    'Section Two: Literature',
  ];
  List<List<String>> englishUnits = [
    [
      '1. Education and Humanity',
      '2. Communication',
      '3. Media and Society',
      '4. History and Culture',
      '5. Life and Love',
      '6. Health and Exercise',
      '7. Ecology and Development',
      '8. Humour and Satire',
      '9. Democracy and Human Rights',
      '10. Home Life and Family Relationship',
      '11. Arts and Creation',
      '12. Fantasy',
      '13. Career and Entrepreneurship',
      '14. Power and Politics',
      '15. War and Peace',
      '16. Critical Thinking',
      '17. Globalisation and Diaspora',
      '18. Immigration and Identity',
      '19. Travel and Tourism',
      '20. Science and Technology'
    ],
    [
      'Unit One: Short Stories',
      '1. The Selfish Giant by Oscar Wilde',
      '2. The Oval Portrait by Edgar Allan Poe',
      '3. God Sees the Truth but Waits by Leo Tolstoy',
      '4. The Wish by Roald Dahl',
      '5. Civil Peace by Chinua Achebe',
      '6. Two Little Soldiers by Guy de Maupassant',
      '7. An Astrologer\'s Day by R. K. Narayan',
      'Unit Two: Poems',
      '1. Corona Says by Vishnu S. Rai',
      '2. A Red, Red Rose by Robert Burns',
      '3. All the World\'s a Stage by William Shakespeare',
      '4. Who are you, little I? by E. E. Cummings',
      '5. The Gift in Wartime by Tran Mong Tu',
      'Unit Three: Essays',
      '1. Sharing Tradition by Frank LaPena',
      '2. How to Live Before You Die by Steve Jobs',
      '3. What I Require From Life by J.B.S. Haldane',
      '4. What is Poverty? by Jo Goodwin Parker',
      '5. Scientific Research is a Token of Humankind\'s Survivalby Vladimir Kellis-Borok',
      'Unit Four: One-act Plays',
      '1. Trifles by Susan Glaspell',
      '2. A Sunny Morning by Serafin and Foaquin Alvarez Quintero',
      '3. Refund by Fritz Karinthy'
    ]
  ];

  // List<List<String>> englishUnitsContent = [
  //   [
      
  //   ],
  //   [
  //     'Unit One: Short Stories',
      
  //     'Unit Two: Poems',
      
  //     'Unit Three: Essays',
     
  //     'Unit Four: One-act Plays',
      
  //   ]
  // ];

String  englishUnitsContent='The content will be Uploaded soon!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English-XI'),
        elevation: 0,
        actions: [
          Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
              }),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: sectionEnglish.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SectionPage(
                              countList: englishUnits[index].length,
                              chapterName: englishUnits[index],
                              subName: sectionEnglish[index],
                              indexColor: index == 1,
                              unitsList: englishUnits,
                              unitsContent: englishUnitsContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      sectionEnglish[index],
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

class SectionPage extends StatefulWidget {
  final int countList;
  final String subName;
  final List<String> chapterName;
  final bool indexColor;
  final List<List<String>> unitsList;
  // final List<String> unitsContent;
  final String unitsContent;
  SectionPage(
      {super.key,
      required this.countList,
      required this.chapterName,
      required this.subName,
      required this.indexColor,
      required this.unitsList,
      required this.unitsContent});

  @override
  State<SectionPage> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  List<Color> cardColors = List.generate(25, (_) => Colors.white);
  final colorText=Colors.white;
  double textSize =16;

  @override
  Widget build(BuildContext context) {
    if (widget.indexColor) {
      cardColors = List.generate(widget.countList, (index) {
        if (index == 0) {
          return Colors.purple[400]!;
        } else if (index == 8) {
          return Colors.purple[400]!;
        } else if (index == 14) {
          return Colors.purple[400]!;
        } else if (index == 20) {
          return Colors.purple[400]!;
        }
        {
          return Theme.of(context).colorScheme.surface;
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subName),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: widget.countList,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  if (widget.indexColor &&
                      (index == 0 ||
                          index == 8 ||
                          index == 14 ||
                          index == 20)) {
                    return; // do not navigate to NotePage if the index is purple
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              chapterName: widget.chapterName[index],
                              subName: widget.subName,
                              unitsList: widget.unitsList,
                              unitContent: widget.unitsContent,
                              unitIndex: index,
                            )),
                  );
                },
                child: Card(
                  color: widget.indexColor ? cardColors[index] : null,
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      widget.chapterName[index],
                     
                      style: Theme.of(context).textTheme.bodyMedium)
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class NotePage extends StatefulWidget {
  final String subName;
  final String chapterName;
  final List<List<String>> unitsList;
  final String unitContent;
  final int unitIndex;

  NotePage(
      {super.key,
      required this.chapterName,
      required this.subName,
      required this.unitsList,
      required this.unitIndex,
      required this.unitContent});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.chapterName),
          elevation: 0,
        ),
        body: Center(
          child: Text(widget.unitContent),
        )
        );
  }
}
