import 'package:flutter/material.dart';

class BioSection extends StatelessWidget {
  const BioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "AppJam Group18",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 16),
        Text(
          "Semih Ata Öztürk, Fatıma Elmusa, Adem Han",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
