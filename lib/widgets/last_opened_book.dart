import 'package:flutter/material.dart';
import 'package:lithabit/widgets/reading_book.dart';

import 'book_cover_3d.dart';

class LastOpenedBook extends StatelessWidget {
  const LastOpenedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Son Okunan  ",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReadingBook(
                          pdfPath:
                              "assets/Klonlama Uygulamalar__ ve Biyoetik.pdf",
                        )),
              );
            },
            child: BookCover3D(
              imageUrl:
                  "https://dergipark.org.tr/media/cache/issue_cover_filter/356f/234b/8909/6605c8281f859.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
