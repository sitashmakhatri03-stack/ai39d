// import 'package:flutter/material.dart';
//
// class CardScreen extends StatefulWidget {
//   const CardScreen({super.key});
//
//   @override
//   State<CardScreen> createState() => _CardScreenState();
// }
//
// class _CardScreenState extends State<CardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Card",style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.white
//             ),),
//             Text("Simple and easy to use app",style: TextStyle(
//
//                 color: Colors.white
//             ),),
//             SizedBox(height: 50,),
//             Row(
//               children: [
//                 Expanded(child: Card(
//                   child: Column(
//
//                     children: [
//                       Image.asset(
//                         'assets/images/my_img.jpg',
//                         height: 120,
//                         width: double.infinity,
//                         fit: BoxFit.cover,
//                       ),
//                       Text("My Image"),
//                     ],
//                   ),
//                 )),
//                 Expanded(child: Card(
//                   child: Text("world"),
//                 )),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Card",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Simple and easy to use app",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),

                  // Profile
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Grid cards
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.15,
                  children: [

                    menuCard(
                      Icons.article,
                      "Text",
                    ),

                    menuCard(
                      Icons.location_on,
                      "Address",
                    ),

                    menuCard(
                      Icons.person,
                      "Character",
                    ),

                    menuCard(
                      Icons.credit_card,
                      "Bank card",
                    ),

                    menuCard(
                      Icons.key,
                      "Password",
                    ),

                    menuCard(
                      Icons.local_shipping,
                      "Logistics",
                    ),

                  ],
                ),
              ),

              // Settings
              Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Configure your settings",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable menu card
  static Widget menuCard(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 42,
            color: Colors.teal,
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 4),

          const Text(
            "Tap to open",
            style: TextStyle(
              fontSize: 9,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}