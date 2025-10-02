import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:said/core/colors_app.dart';
import 'package:said/core/text_app_style.dart';
import 'package:said/widgets/custome_card.dart';
import 'package:said/widgets/image_courser.dart';
import 'package:dev_icons/dev_icons.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  
  final List<Map<String, dynamic>> languages = [
    {'name': 'Dart', 'icon': DevIcons.dartPlain},
    {'name': 'Python', 'icon': DevIcons.pythonPlain},
    {'name': 'Java', 'icon': DevIcons.javaPlain},
    {'name': 'C++', 'icon': DevIcons.cplusplusPlain},
    {'name': 'JavaScript', 'icon': DevIcons.javascriptPlain},
    {'name': 'C#', 'icon': DevIcons.csharpPlain},
    {'name': 'Kotlin', 'icon': DevIcons.kotlinPlain},
    {'name': 'Swift', 'icon': DevIcons.swiftPlain},
    {'name': 'Ruby', 'icon': DevIcons.rubyPlain},
    {'name': 'Go', 'icon': DevIcons.goPlain},
    {'name': 'Rust', 'icon': DevIcons.rustPlain},
    {'name': 'PHP', 'icon': DevIcons.phpPlain},
    {'name': 'TypeScript', 'icon': DevIcons.typescriptPlain},
    {'name': 'Flutter', 'icon': DevIcons.flutterPlain},
    {'name': 'Angular', 'icon': DevIcons.angularjsPlain},
    {'name': 'Vue.js', 'icon': DevIcons.vuejsPlain},
    {'name': 'Laravel', 'icon': DevIcons.laravelPlain},
    {'name': 'Node', 'icon': DevIcons.nodejsPlain},
    {'name': 'Mysql', 'icon': DevIcons.mysqlPlain},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ass'),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              ColorsApp().mainColor,
              ColorsApp().secoundColor
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text('Flutter Developing !', style: TextAppStyle().titleAppStyle,),
              SizedBox(height: 8,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 3,
                                ),
                                itemCount: languages.length,
                                 itemBuilder: (context, index) {
                                  return Card(
                                    color: index.isEven ? ColorsApp().mainCardColor : ColorsApp().mainFontColor,
                                    elevation: 3,
                                    shadowColor: ColorsApp().blackColor,
                                    child: ListTile(
                                      title: Text(languages[index]['name']),
                                      // leading: Icon(languages[index]['icon']),
                                      trailing: Icon(languages[index]['icon']),
                                      onTap: () => print(languages[index]['name']),
                                    ),
                                  );
                                 }
                                 ),
                      ),
                    )
                    ],
                ),
              ),
            ],
          ),
          ),
      ),
    );
  }
}