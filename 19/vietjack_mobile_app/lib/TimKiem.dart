import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TimKiem extends StatefulWidget {
  @override
  _TimKiemState createState() => _TimKiemState();
}

class _TimKiemState extends State<TimKiem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiem Kiem',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tìm kiếm'),
          ),
          body: ListView(children: [
            searchBar,
            historySearch,
            hotKey,
          ])),
    );
  }

  Widget searchBar = Container(
    padding: const EdgeInsets.all(8.0),
    // child: Row(
    //   children: [
    child: TextField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), hintText: 'search...'),
      onChanged: (text) {
        text = text.toLowerCase();
      },
    ),
    // Icon(
    //   Icons.beach_access,
    // ),
    // ],
    // )
  );

  Widget historySearch = Container(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Lịch sư đã tim kiếm',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                      bottom:
                          BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                    ),
                    // color: Color(0xFFBFBFBF),
                  ),
                  child: Text(
                    'Toán',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );

  Widget hotKey = Container(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hay tìm kiếm',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                      bottom:
                          BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                    ),
                    // color: Color(0xFFBFBFBF),
                  ),
                  child: Text(
                    'Toán',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                      bottom:
                          BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                    ),
                    // color: Color(0xFFBFBFBF),
                  ),
                  child: Text(
                    'Văn',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                      bottom:
                          BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                    ),
                    // color: Color(0xFFBFBFBF),
                  ),
                  child: Text(
                    'Anh',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
