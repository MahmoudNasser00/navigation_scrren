import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat(
      'EEEE, MMMM d, yyyy',
    ).format(DateTime.now());

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Task2"),
              Tab(text: "Task3"),
            ],
          ),
        ),
        drawer: const Drawer(),
        body: TabBarView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  formattedDate,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),

                const SizedBox(height: 10),

                Expanded(
                  child: ListView.builder(
                    itemCount: 25,
                    itemBuilder: (context, index) {
                      return alarm();
                    },
                  ),
                ),
              ],
            ),

            /// Tab 2
            cart(),
          ],
        ),
      ),
    );
  }
}

Widget alarm() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Mahmoud", style: TextStyle(fontSize: 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(Icons.alarm_on),
            SizedBox(width: 5),
            Text("10:25", style: TextStyle(fontSize: 15)),
          ],
        ),
        const Divider(color: Colors.black, indent: 30, endIndent: 30),
      ],
    ),
  );
}

Widget cart() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Image.asset('assets/logo.png'),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "C2 Motorcycle",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              "\$500",
              style: TextStyle(fontSize: 25, color: Colors.pinkAccent),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Row(
          children: const [
            Icon(Icons.star_rate, color: Colors.amberAccent),
            Icon(Icons.star_rate, color: Colors.amberAccent),
            Icon(Icons.star_rate, color: Colors.amberAccent),
            Icon(Icons.star_half, color: Colors.amberAccent),
            Icon(Icons.star_rate_outlined, color: Colors.black),
          ],
        ),

        const SizedBox(height: 10),

        const Text(
          "I am selling my excellent condition 2021 Yamaha MT-09 SP with only 4,500 miles. I am selling because I plan to upgrade to a touring model. The bike has been meticulously maintained, always garage-kept, and has a clean title in my name. It runs perfectly with no mechanical issues and was last serviced by a certified Yamaha dealership in October 2025.",
          maxLines: 8,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 15, color: Colors.black54),
        ),

        const SizedBox(height: 12),

        Center(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
              fixedSize: WidgetStateProperty.all<Size>(const Size(200, 50)),
            ),
            onPressed: () {
              print("Add my cart");
            },
            child: const Text(
              "Add my cart",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    ),
  );
}
