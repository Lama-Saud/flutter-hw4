import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color(0xFF37809e),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Expanded(child: GoPayCard()),
                const SizedBox(
                  width: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Scaffold(), // navigate to empty page!
                      ),
                    );
                  },
                  child: FirstSectionIcon(
                    title: "Top Up",
                    icon: const Icon(
                      Icons.add,
                      color: Color(0xFF3d83a3),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                FirstSectionIcon(
                  title: "Pay",
                  icon: const Icon(
                    Icons.arrow_upward,
                    color: Color(0xFF3d83a3),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                FirstSectionIcon(
                  title: "Explore",
                  icon: const Icon(
                    Icons.rocket_launch,
                    color: Color(0xFF3d83a3),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FirstSectionIcon extends StatelessWidget {
  String title;
  Icon icon;

  FirstSectionIcon({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
            color: Color.fromARGB(255, 245, 252, 254),
          ),
          child: icon,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 11),
        ),
      ],
    );
  }
}

class GoPayCard extends StatelessWidget {
  const GoPayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(9),
          ),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.wallet,
                color: Color(0xFF53aed2),
                size: 16,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "gopay",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "No balance yet",
            style: TextStyle(
              color: Color(0xFFb2b2b2),
            ),
          ),
          const Text(
            "Tap to top up",
            style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF5b8f54)),
          ),
        ],
      ),
    );
  }
}
