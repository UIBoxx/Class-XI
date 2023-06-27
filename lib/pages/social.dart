import 'package:classxii/utils/chapter_content.dart';
import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const SocialPage({super.key, required this.onToggleDarkMode});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  bool isDarkMode = false;
  List <String>socialUnits = [
    'एकाइ १',
    'एकाइ २',
    'एकाइ ३',
    'एकाइ ४',
    'एकाइ ५',
    'एकाइ ६',
    'एकाइ ७',
    'एकाइ ८',
    'एकाइ ९',
    'एकाइ १०',
    'एकाइ ११'
  ];
  List socialChapters = [
    [
      'पाठ १ सामाजिक अध्ययन तथा जीवनोपयोगी शिक्षा',
      'पाठ २ सामाजिक अध्ययन, सामाजिक शिक्षा र सामाजिक विज्ञानको अन्तरसम्बन्ध',
      'पाठ ३ सामाजिक अध्ययनका सिप र जीवनोपयोगी सिपको अवधारणा'
    ],
    [
      'पाठ १ डिजिटल साक्षरता',
      'पाठ २ सञ्चार एप्लिकेसनहरूको प्रयोग',
      'पाठ ३ अनलाइन भुक्तानी',
      'पाठ ४ इन्टरनेटबाट सूचना तथा अध्ययन सामग्रीको खोजी र प्रयोग',
      'पाठ ५ इन्टरनेट र सामाजिक सञ्जालको उत्तरदायी प्रयोग'
    ],
    [
      'पाठ १ निर्णय प्रक्रिया',
      'पाठ २ समस्या समाधान',
      'पाठ ३ सञ्चार',
      'पाठ ४ तनाव व्यवस्थापन',
      'पाठ ५ अन्तरवैयक्तिक सिपहरू'
    ],
    [
      'पाठ १ मानवको जैविकीय उत्पत्ति र विकासक्रम',
      'पाठ २ मानव समाजको विकासक्रम',
      'पाठ ३ कृषि युगको सुरुवात र विकास',
      'पाठ ४ पुँजीवादी युग र औद्योगिक विश्व',
      'पाठ ५ वर्तमान विश्व परिवेश र सामाजिक व्यवहार'
    ],
    [
      'पाठ १ विश्वमा नेपाल',
      'पाठ २ मानव र वातावरण',
      'पाठ ३ विश्वका भौगोलिक विविधता र जनजीवन',
      'पाठ ४ नेपालका पर्यावरणीय क्षेत्रहरू'
    ],
    [
      'पाठ १ विश्व इतिहासको लेखन र मूल प्रवृत्ति',
      'पाठ २ मध्यकालीन एसियाको आर्थिक उदय र सङ्कुचन',
      'पाठ ३ औद्योगिक क्रान्ति',
      'पाठ ४ लोकतन्त्र'
    ],
    [
      'पाठ १ नेपालमा जातप्रथा',
      'पाठ २ दलित सवाल',
      'पाठ ३ जाति, जनजाति',
      'पाठ ४ बहुसांस्कृतिकता र सामाजिक एकता'
    ],
    [
      'पाठ १ नेपालको संविधान विगत र वर्तमान',
      'पाठ २ वर्तमान संविधानको राजनीतिक, कानुनी, आर्थिक र सांस्कृतिक विशेषता',
      'पाठ ३ नेपालमा निर्वाचन प्रणाली',
      'पाठ ४ राष्ट्र, राष्ट्रियता र राष्ट्रिय सुरक्षा'
    ],
    [
      'पाठ १ मानव बस्ती',
      'पाठ २ बस्ती विकास',
      'पाठ ३ जनसङ्ख्या र विकास',
      'पाठ ४ उमेर संरचनाको सङ्क्रमण र जनसाख्यिक लाभांशको उपयोग',
      'पाठ ५ जनसङ्ख्या व्यवस्थापन'
    ],
    [
      'पाठ १ नेपालको अर्थतन्त्रका आधार र विशेषताहरू',
      'पाठ २ सार्वजनिक, निजी तथा सहकारी क्षेत्र',
      'पाठ ३ विप्रेषण र नेपाली अर्थतन्त्र',
      'पाठ ४ स्थानीय, औपचारिक र अनौपचारिक कारोबार',
      'पाठ ५ कृषि, उद्योग र निर्माण',
      'पाठ ६ नेपालमा श्रमशक्ति, रोजगारी र उद्यमशीलता'
    ],
    [
      'पाठ १ नेपालमा स्वास्थ्य सेवा',
      'पाठ २ आधुनिक र परम्परागत स्वास्थ्य सेवा पद्धति',
      'पाठ ३ आधुनिक र परम्परागत स्वास्थ्य सेवा पद्धति',
      'पाठ ४ किशोरावस्था र स्वास्थ्य जीवनशैली',
      'पाठ ५ योग तथा ध्यान',
      'पाठ ६ स्वस्थ जीवनशैली र हाम्रो दैनिकी',
      'पाठ ७ मितव्ययी जीवनशैली र आर्थिक व्यावस्थापन'
    ]
  ];

  List socialChaptersContent = [
    [],
  ];

  static const chapterContent = 'The content will be uploaded soon!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social'),
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
          itemCount: socialChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapters(
                              countList: socialChapters[index].length,
                              chapterName: socialChapters[index],
                              // chapterContent: socialChaptersContent[index],
                              chapterContent: chapterContent,
                              subName: socialUnits[index],
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      socialUnits[index],
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

class MyChapters extends StatefulWidget {
  final int countList;
  final String subName;
  final List chapterName;
  // final List chapterContent;
  final String chapterContent;
  const MyChapters(
      {super.key,
      required this.countList,
      required this.chapterName,
      required this.subName,
      required this.chapterContent});

  @override
  State<MyChapters> createState() => _MyChaptersState();
}

class _MyChaptersState extends State<MyChapters> {
  @override
  Widget build(BuildContext context) {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: widget.chapterName[index],
                              // chapterContent: widget.chapterContent[index],
                              chapterContent: widget.chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      widget.chapterName[index],
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
