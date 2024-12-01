import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  // List of items for the grid
  final List<Map<String, dynamic>> gridItems = [
    {"icon": Icons.shopping_cart_outlined, "label": "Buying"},
    {"icon": Icons.storefront, "label": "Selling"},
    {"icon": Icons.work_outline, "label": "Trades"},
    {"icon": Icons.play_circle_outline_outlined, "label": "Videos"},
    {"icon": Icons.local_offer_outlined, "label": "Deals"},
    {"icon": Icons.my_library_books, "label": "Case Study"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: gridItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
        ),
        itemBuilder: (context, index) {
          final item = gridItems[index];
          return GestureDetector(
            onTap: () {
              // Handle item tap
              print("Tapped on ${item['label']}");
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    item["icon"],
                    size: 40,
                    color: const Color.fromRGBO(95, 92, 233, 1),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item["label"],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
