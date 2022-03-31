import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../listview_model.dart';
Column listBuilder(groceries, double bodyHeight) {
  return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)),
              child: Image(
                image: AssetImage(
                  "${groceries.image}",
                ),
                height: bodyHeight * .3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              Text("${groceries.name}",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                width: 40,
              ),
              Image(
                image: AssetImage(
                  "images/motor.jpg",
                ),
                height: 30,
                width: 50,
              ),
              Text(
                "within 50 minutes",
              )
            ],
          ),
          Text("Grocery"),
          Row(
            children: [
              Image(image: AssetImage("images/smile.jpg",),height: 50,width: 25,)
              , Text("very good",style: TextStyle(color: Colors.grey),),SizedBox(width: 30,),Text("delivery:free",style: TextStyle(color: Colors.grey)) ],
          )
        ],
      );
}