import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String catName;
  final icon;
  final color;
  const Categories({Key? key, required this.catName, required this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(50)
                ),
                padding: EdgeInsets.all(5),
                child: Icon(icon,size: 25,color: Colors.grey.shade600,)),
            SizedBox(width: 10,),
            Text(catName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey.shade300),)
          ],
        ),
      ),
    );
  }
}
