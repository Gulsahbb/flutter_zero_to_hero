import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.green;
                }
                return Colors.lightGreen;
              }),
            ),
            child: Text(
              'Gönder',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),

          ElevatedButton(onPressed: null, child: Text('Giriş Yap')),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_photo_alternate_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              // servise istek at.
              // sayfa rengi düzenle.
            },
            child: Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Text('ekle', style: Theme.of(context).textTheme.bodyLarge),
          ),
          InkWell(onTap: () {}, child: Text('Button')),
          Container(height: 200, color: Colors.black54),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 30,
                right: 30,
              ),
              child: Text('Place Bld', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
