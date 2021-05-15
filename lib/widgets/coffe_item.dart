import 'package:coffe_shop/coffee_details.dart';
import 'package:flutter/material.dart';
import 'package:coffe_shop/coffee_data.dart';

class CoffeeItem extends StatelessWidget {
  final int index;

  CoffeeItem({this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => CoffeePage(index: index),
        )
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: coffee_list[index].backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text(
                    coffee_list[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: new LinearGradient(
                      colors: [Colors.black12, coffee_list[index].backgroundColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => (){},
                  ),
                )
              ],
            ),
            Expanded(
              child: Hero(
                tag: coffee_list[index].image,
                child: Image.asset(
                  coffee_list[index].image,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
