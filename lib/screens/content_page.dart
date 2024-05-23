import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Контент',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Container(
                width: 300,
                height: 179,
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            separatorBuilder: (context, index) => const Gap(20),
          ),
        )
      ],
    );
  }
}
