import 'package:farm/models/seeds.dart';
import 'package:farm/widgets/widgets_barrel.dart';
import 'package:flutter/material.dart';

class SeedsScreen extends StatelessWidget {
  static String id = "seeds_screen";
  const SeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
              preferredSize: Size(screenSize.width,50.0),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: _SeedsAppBar(),
              )
          ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: _SeedsAppBar(),
            ),
             SeedsGrid(seeds: dummySeeds),

          ],
        ),
      ),
    ));
  }
}

class _SeedsAppBar extends StatelessWidget {
  const _SeedsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:   <Widget>[

        InkWell(
          onTap: (){
            //TODO:  add logic
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        const Text(
          "Seeds",
          style:TextStyle(
            fontSize: 25,
            color:Colors.black,
          ),
        ),
        InkWell(
          onTap: (){
            //TODO: logic
          },
          child: const Icon(
            Icons.search,
          ),
        ),
      ],
    );
  }
}
