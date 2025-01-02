

import 'package:flutter/material.dart';


Widget gridViewCard(dynamic item) => Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(item["images"]), fit: BoxFit.cover)),
          child: Transform.translate(
            offset: const Offset(55, -58),
            child: Container(
              width: 30,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(),
              child: Center(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  height: 35,
                  minWidth: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                      item["isSaved"] ? Icons.bookmark : Icons.bookmark_border,
                      size: 22,
                      color:
                          item["isSaved"] ? Colors.yellow[700] : Colors.black),
                ),
              ),
            ),
          )),
    );
