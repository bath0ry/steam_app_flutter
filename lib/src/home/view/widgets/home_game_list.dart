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
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 214, 211, 211),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Image.network(
                  data[index].thumb,
                  width: 250,
                  height: 250,
                ),
              ),
              Container(
                height: 220,
                width: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 214, 211, 211),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.attach_money,
                      color: Colors.green,
                    ),
                    Text(
                      'ORIGINAL PRICE:  \$${data[index].normalPrice}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 139, 0, 0),
                    ),
                    Text(
                      'SALE PRICE:  \$${data[index].salePrice}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 219, 198, 5),
                    ),
                    Text(
                      'METACRITIC SCORE:  ${data[index].metacriticScore}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
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
