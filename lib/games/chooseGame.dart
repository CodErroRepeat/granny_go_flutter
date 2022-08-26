import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                      // MaterialPageRoute(
                        // builder: ((context) => const CourseDetailScreen()),
                      // ),
                    // );
                  },
                  child: Text(
                    'Master Class',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            // SizedBox(
            //   height: 349,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     physics: const BouncingScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       return const MyHorizontalList(
            //         startColor: 0xFF9288E4,
            //         endColor: 0xFF534EA7,
            //         courseHeadline: 'Recommended',
            //         courseTitle: 'UI/UX DESIGNER\nBEGINNER',
            //         courseImage: 'assets/about/games.png',
            //       );
            //     },
            //   ),
            // ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free online class',
                ),
                Text(
                  'From over 80 lectures',
                ),
              ],
            ),
            // ListView.builder(
            //   itemCount: 5,
            //   shrinkWrap: true,
            //   itemBuilder: ((context, index) {
            //     return const MyVerticalList(
            //       courseImage: 'assets/about/tips.png',
            //       courseTitle: 'Flutter Developer',
            //       courseDuration: '8 Hours',
            //       courseRating: 3.0,
            //     );
            //   }),
            // ),
          ],
        ),
      ),
    );
  }
}

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList(
      {Key? key,
        required this.startColor,
        required this.endColor,
        required this.courseHeadline,
        required this.courseTitle,
        required this.courseImage,
        required this.onTap})
      : super(key: key);
  final int startColor, endColor;
  final String courseHeadline, courseTitle, courseImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: InkWell(
       onTap: () => onTap(),
        child: Container (
        width: 246,
        height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: <Color>[
              Color(startColor),
              Color(endColor),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 11,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 39,
                decoration: BoxDecoration(
                  color: const Color(0xFFAFA8EE),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Text(
                  courseHeadline,
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 14,
              child: Text(
                courseTitle,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                courseImage,
                scale: 2,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}


class MyVerticalList extends StatelessWidget {
  const MyVerticalList(
      {Key? key,
        required this.image,
        required this.title,
        required this.onTap
      })
      : super(key: key);

  final String image, title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF3E3A6D),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 13,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
                bottom: 19,
              ),
              child: InkWell(
                onTap: () => onTap(),
                child: Row(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          title,
                          style: TextStyle(color: Colors.white,fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ),
            ),
            Positioned(
              bottom: 34,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.06,
                width: MediaQuery.of(context).size.width * 0.06,
                // child: const Icon(
                //   Icons.play_arrow,
                //   color: Colors.white,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
