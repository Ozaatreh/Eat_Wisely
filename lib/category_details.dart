import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryDetailsPage extends StatelessWidget {
  final String category;

  CategoryDetailsPage({required this.category});

  final Map<String, List<Map<String, String>>> categoryFoods = {
    'كربوهيدرات': [
      {
        'name': 'أرز أبيض',
        'calories': '130 سعرة / 100غ',
        'benefit': 'مصدر طاقة سريع وغني بالنشويات.'
      },
      {
        'name': 'خبز قمح كامل',
        'calories': '250 سعرة / 100غ',
        'benefit': 'غني بالألياف ويشبع لفترة أطول.'
      },
      {
        'name': 'بطاطا',
        'calories': '77 سعرة / 100غ',
        'benefit': 'نشويات معقدة ومصدر جيد للبوتاسيوم.'
      },
      {
        'name': 'معكرونة',
        'calories': '131 سعرة / 100غ',
        'benefit': 'تمد الجسم بالطاقة وتناسب الرياضيين.'
      },
    ],

   'بروتينات': [
  {
    'name': 'صدر دجاج',
    'calories': '165 سعرة / 100غ',
    'benefit': 'غني بالبروتين وقليل الدهون، مناسب للريجيم.'
  },
  {
    'name': 'بيض مسلوق',
    'calories': '155 سعرة / 100غ',
    'benefit': 'مصدر ممتاز للبروتين والدهون الصحية.'
  },
  {
    'name': 'لحم بقري',
    'calories': '250 سعرة / 100غ',
    'benefit': 'يحتوي على بروتين عالي الجودة وحديد.'
  },
  {
    'name': 'عدس مطبوخ',
    'calories': '116 سعرة / 100غ',
    'benefit': 'بروتين نباتي مع ألياف وفوائد للقلب.'
  },
  {
    'name': 'تونة معلبة بالماء',
    'calories': '132 سعرة / 100غ',
    'benefit': 'بروتين سريع التحضير ومناسب للريجيم.'
  },
],

'دهون': [
  {
    'name': 'أفوكادو',
    'calories': '160 سعرة / 100غ',
    'benefit': 'غني بالدهون الأحادية المفيدة للقلب.'
  },
  {
    'name': 'زيت الزيتون',
    'calories': '884 سعرة / 100غ',
    'benefit': 'دهون صحية مضادة للالتهاب.'
  },
  {
    'name': 'مكسرات (لوز، جوز)',
    'calories': '600-700 سعرة / 100غ',
    'benefit': 'مصدر ممتاز للدهون والألياف والبروتين.'
  },
  {
    'name': 'زبدة الفول السوداني',
    'calories': '588 سعرة / 100غ',
    'benefit': 'دهون نباتية مع بروتين ونسبة سكر معتدلة.'
  },
  {
    'name': 'سمك السلمون',
    'calories': '208 سعرة / 100غ',
    'benefit': 'غني بأوميغا-3، مفيد لصحة القلب والدماغ.'
  },
],

'فيتامينات': [
  {
    'name': 'برتقال',
    'calories': '47 سعرة / 100غ',
    'benefit': 'غني بفيتامين C، يقوي المناعة.'
  },
  {
    'name': 'جزر',
    'calories': '41 سعرة / 100غ',
    'benefit': 'مصدر ممتاز لفيتامين A لتحسين النظر.'
  },
  {
    'name': 'موز',
    'calories': '89 سعرة / 100غ',
    'benefit': 'غني بفيتامين B6 والمغنيسيوم للطاقة.'
  },
  {
    'name': 'سبانخ',
    'calories': '23 سعرة / 100غ',
    'benefit': 'غنية بالحديد والمغنيسيوم وفيتامين K.'
  },
  {
    'name': 'لوز',
    'calories': '579 سعرة / 100غ',
    'benefit': 'يحتوي على فيتامين E ومضادات أكسدة.'
  },
],

'ألياف غذائية': [
  {
    'name': 'شوفان',
    'calories': '389 سعرة / 100غ',
    'benefit': 'غني بالألياف القابلة للذوبان، يساعد على تقليل الكوليسترول.'
  },
  {
    'name': 'عدس',
    'calories': '116 سعرة / 100غ',
    'benefit': 'مصدر ممتاز للألياف والبروتين النباتي.'
  },
  {
    'name': 'تفاح بقشره',
    'calories': '52 سعرة / 100غ',
    'benefit': 'قشر التفاح يحتوي على ألياف مفيدة للهضم.'
  },
  {
    'name': 'بروكلي',
    'calories': '34 سعرة / 100غ',
    'benefit': 'ألياف مع مضادات أكسدة تعزز المناعة.'
  },
  {
    'name': 'حمص مسلوق',
    'calories': '164 سعرة / 100غ',
    'benefit': 'ألياف مع بروتين ومغنيسيوم، ممتاز لصحة القلب.'
  },
],

'ماء': [
  {
    'name': 'ماء نقي',
    'calories': '0 سعرة / 100مل',
    'benefit': 'أساسي لوظائف الجسم، ينظم الحرارة والهضم.'
  },
  {
    'name': 'خيار',
    'calories': '16 سعرة / 100غ',
    'benefit': 'غني بالماء، يرطب الجسم.'
  },
  {
    'name': 'بطيخ',
    'calories': '30 سعرة / 100غ',
    'benefit': 'يحتوي على أكثر من 90٪ ماء، منعش ومغذي.'
  },
  {
    'name': 'كرفس',
    'calories': '16 سعرة / 100غ',
    'benefit': 'مفيد للهضم ويحتوي على نسبة ماء عالية.'
  },
  {
    'name': 'لبن رائب',
    'calories': '60 سعرة / 100غ',
    'benefit': 'يرطب الجسم ويدعم الهضم بالبكتيريا النافعة.'
  },
],

'معادن': [
  {
    'name': 'موز',
    'calories': '89 سعرة / 100غ',
    'benefit': 'غني بالبوتاسيوم، يساعد في تنظيم ضغط الدم.'
  },
  {
    'name': 'سبانخ',
    'calories': '23 سعرة / 100غ',
    'benefit': 'مصدر ممتاز للحديد والمغنيسيوم.'
  },
  {
    'name': 'لبن زبادي',
    'calories': '59 سعرة / 100غ',
    'benefit': 'يحتوي على الكالسيوم الضروري للعظام.'
  },
  {
    'name': 'سمك السردين',
    'calories': '208 سعرة / 100غ',
    'benefit': 'غني بالكالسيوم والفوسفور وفيتامين D.'
  },
  {
    'name': 'بذور اليقطين',
    'calories': '446 سعرة / 100غ',
    'benefit': 'مصدر غني بالزنك والمغنيسيوم لتقوية المناعة.'
  },
],

  };

  @override
  Widget build(BuildContext context) {
    final foods = categoryFoods[category] ?? [];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 230, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 230, 238),
        leading: IconButton( onPressed: () { 
          Navigator.pop(context);
         },
          icon: Icon( Icons.arrow_back_ios_rounded) ,),
        centerTitle: true,
        title: Text(category ,
        style: GoogleFonts.tajawal(
          // fontSize: ,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),)),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 3,
            child: ListTile(
              title: Text(food['name']!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food['calories']!),
                  SizedBox(height: 4),
                  Text(food['benefit']!, style: TextStyle(color: Colors.grey[700])),
                ],
              ),
              leading: Icon(Icons.food_bank, size: 30, color: Colors.orange),
            ),
          );
        },
      ),
    );
  }
}
