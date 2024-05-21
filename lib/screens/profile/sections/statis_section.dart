import 'package:flutter/material.dart';

class StatisSection extends StatelessWidget {
  const StatisSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Text(
            "20",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 8,
          ),
          Text("YAŞ ", style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
      Column(
        children: [
          Text(
            "16",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 8,
          ),
          Text("OKUNAN KİTAPLAR",
              style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
      Column(
        children: [
          Text(
            "154 ₺",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "TOPLAM HARCAMA",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    ]);
  }
}
