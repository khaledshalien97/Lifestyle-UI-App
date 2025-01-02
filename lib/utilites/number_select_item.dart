import 'package:flutter/material.dart';
import 'package:gridview_ui/widgets/text_widget.dart';

Widget containerNumberSekectItem ()=>  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10)),
                width: 36,
                height: 30,
                child: Center(
                    child: TextWidget(
                  text: "0",
                  color: Colors.white,
                )),
              ),
            );