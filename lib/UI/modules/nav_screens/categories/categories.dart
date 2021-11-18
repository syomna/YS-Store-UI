import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/modules/nav_screens/categories/sub_categories.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: categoriesItems
            .map((e) => Expanded(
                    child: InkWell(
                  onTap: () {
                    navigateTo(context, SubCategories(category: e['name']));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: Container(
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(e['image']))),
                        ),
                      ),
                      Text(
                        e['name'],
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )))
            .toList(),
      ),
    );
  }
}
