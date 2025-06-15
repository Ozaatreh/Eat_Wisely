import 'package:eat_wisely/category_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'كربوهيدرات', 'icon': Icons.bakery_dining, 'color': Colors.orange[100]},
    {'title': 'بروتينات', 'icon': Icons.egg, 'color': Colors.blue[100]},
    {'title': 'دهون', 'icon': Icons.oil_barrel, 'color': Colors.red[100]},
    {'title': 'فيتامينات', 'icon': Icons.local_florist, 'color': Colors.green[100]},
    {'title': 'معادن', 'icon': Icons.science, 'color': Colors.teal[100]},
    {'title': 'ألياف غذائية', 'icon': Icons.grass, 'color': Colors.brown[100]},
    {'title': 'ماء', 'icon': Icons.water_drop, 'color': Colors.lightBlue[100]},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('السعرات الحرارية' , 
        style: GoogleFonts.tajawal(
          // fontSize: ,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final item = categories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => CategoryDetailsPage(category: item['title']),
                ));
              },
              child: Card(
                color: item['color'],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 4,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(item['icon'], size: 40),
                      SizedBox(height: 10),
                      Text(item['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
