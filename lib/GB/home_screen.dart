import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final String pageName = 'Home';
  final String exploreMore = 'Explore More';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 251, 251),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(pageName, style: Theme.of(context).textTheme.headlineSmall),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
              ],
            ),

            Card(
              elevation: 1,
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              child: SizedBox(
                width: 350,
                height: 60,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        hintText: 'Find your favorite seminars',
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        suffixIcon: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade800,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.zero,
                          ),
                          child: Icon(Icons.search_outlined, color: Colors.white, size: 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            _DefaultSizedBoxHeight(),
            _TextBodyLarge(bodyLargeText: 'Popular Categories'),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _CreateElevatedButton(child: _TextElevatedButton(text: 'All')),
                  _CreateElevatedButton(child: _TextElevatedButton(text: 'Business')),
                  _CreateElevatedButton(child: _TextElevatedButton(text: 'Public Speaking')),
                  _CreateElevatedButton(child: _TextElevatedButton(text: 'Sports')),
                ],
              ),
            ),
            _DefaultSizedBoxHeight(),
            _TextBodyLarge(bodyLargeText: 'Popular Seminars'),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _CreateCard(
                    imageName: 'Resim',
                    titleText: 'Scale up your\n businnes seminar.',
                    subTitleText: 'Speaker : Garyvee',
                    location: 'NEW YORK',
                    date: '5 Jun 2020',
                  ),
                  _CreateCard(
                    imageName: 'Resim2',
                    titleText: 'Test Test\n Test Test',
                    subTitleText: 'Speaker : X person',
                    location: 'DUBAI',
                    date: '4 May 2024',
                  ),
                ],
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(exploreMore, style: Theme.of(context).textTheme.bodyLarge),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CreateCard extends StatelessWidget {
  const _CreateCard({
    super.key,
    required this.imageName,
    required this.titleText,
    required this.subTitleText,
    required this.location,
    required this.date,
  });
  final String imageName;
  final String titleText;
  final String subTitleText;
  final String location;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.grey.shade600),
                  child: Center(child: Text(imageName)),
                ),
              ),
            ),
            Expanded(flex: 2, child: Text(titleText, style: Theme.of(context).textTheme.headlineSmall)),
            Expanded(flex: 1, child: Text(subTitleText)),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                width: 270,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Icon(Icons.location_on_outlined)),
                    Expanded(child: Text(location)),
                    Expanded(flex: 1, child: Icon(Icons.watch_later_outlined)),
                    Expanded(child: Text(date)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DefaultSizedBoxHeight extends StatelessWidget {
  const _DefaultSizedBoxHeight({super.key, this.defaultHeight = 20.0});
  final double defaultHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: defaultHeight);
  }
}

class _TextBodyLarge extends StatelessWidget {
  const _TextBodyLarge({super.key, required this.bodyLargeText});
  final String bodyLargeText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(bodyLargeText, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w800)),
    );
  }
}

class _TextElevatedButton extends StatelessWidget {
  const _TextElevatedButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleSmall);
  }
}

class _CreateElevatedButton extends StatelessWidget {
  const _CreateElevatedButton({super.key, required this.child});
  final child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade100,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: child,
      ),
    );
  }
}
