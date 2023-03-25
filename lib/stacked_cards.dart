import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dummy_list.dart';

class StackedCards extends StatelessWidget {
  const StackedCards({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.32,
      // color: Colors.yellow,
      child: Row(children: [
        Container(
          height: size.height * 0.32,
          width: size.width * 0.1,
          // color: Colors.blue,
          child: DottedBorder(
            strokeWidth: 1.2,
            borderType: BorderType.RRect,
            dashPattern: [3, 4],
            radius: const Radius.circular(10),
            child: const Center(child: Icon(Icons.add)),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ListView.builder(
              itemCount: cards.length,
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Align(
                  widthFactor: 0.5,
                  child: Material(
                    elevation: 5,
                    color: Colors.transparent,
                    child: Container(
                      width: size.width * 0.45,
                      height: size.height * 0.32,
                      decoration: BoxDecoration(
                        color: cards[index]['color'],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Physical',
                                          ),
                                          Icon(Icons.more_horiz)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'Num:',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '0259',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Expanded(
                                            flex: 2,
                                            child: Center(
                                              child: Divider(
                                                  indent: 6,
                                                  endIndent: 10,
                                                  thickness: 1,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'Exp:',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  '08/22',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Visa'.toUpperCase(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                            Container(
                              height: size.height * 0.08,
                              width: size.width * 0.5,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Balance',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '\$ 50,500',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]),
                            ),
                          ]),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
