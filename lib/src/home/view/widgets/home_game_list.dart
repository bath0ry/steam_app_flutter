import 'package:flutter/material.dart';
import 'package:steam_app/src/data/model/steam_model.dart';

class HomePageGameList extends StatelessWidget {
  const HomePageGameList({
    Key? key,
    required this.data,
  }) : super(key: key);
  final List<SteamModel> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    '${data[index].title}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Icon(Icons.sports_esports),
              SizedBox(
                height: 10,
              ),
              Image.network(
                data[index].thumb,
                width: 250,
                height: 250,
              ),
              Text(
                '\ORIGINAL PRICE:  \$${data[index].normalPrice}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '\SALE PRICE:  \$${data[index].salePrice}',
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.overline),
              ),
              Text(
                '\METACRITIC SCORE:  ${data[index].metacriticScore}',
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.overline),
              ),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
            ]);
          }),
    );
  }
}
