import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unais_academy_prototype/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _text = TextEditingController();
    final double? size = MediaQuery.of(context).size.width / 2 - 160;
    return Padding(
      padding: EdgeInsets.only(
        right: size!,
        left: size,
      ),
      child: Container(
        height: 43,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kMainblueTheme, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 30, top: 0, bottom: 3),
          child: TextField(
            controller: _text,
            cursorColor: kDeepBlueTheme,
            style: const TextStyle(color: kDeepBlueTheme),
            decoration: InputDecoration(
              hintText: 'Search Here',
              hintStyle: TextStyle(color: kDeepBlueTheme.withAlpha(200)),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/search.svg',
                      color: kDeepBlueTheme.withAlpha(200)),
                ),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}