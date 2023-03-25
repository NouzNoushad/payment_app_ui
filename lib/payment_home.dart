import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app_ui/dummy_list.dart';

import 'stacked_cards.dart';

class PaymentHome extends StatelessWidget {
  const PaymentHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.tealAccent,
                          backgroundImage: AssetImage(
                            'assets/profile.png',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hello Nobo',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.search),
                  ],
                ),
                const StackedCards(),
                Container(
                  height: size.height * 0.11,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 25,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: paymentOptions.length,
                    itemBuilder: (context, index) {
                      final payment = paymentOptions[index];
                      return Container(
                        width: size.width * 0.18,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.2, color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.black,
                                child: Icon(
                                  payment['icon'],
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Text(payment['title'])
                            ]),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Send Money',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        DottedBorder(
                          dashPattern: [3, 4],
                          borderType: BorderType.Circle,
                          child: const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 20,
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Add')
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: size.height * 0.11,
                        // color: Colors.yellow,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 15,
                          ),
                          itemCount: people.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                      'assets/${people[index]['image']}'),
                                ),
                                Text(people[index]['name'])
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Transaction',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: size.height * 0.2,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = transactions[index];
                      return Container(
                        height: size.height * 0.095,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 1.2, color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: size.height * 0.07,
                                    width: size.width * 0.15,
                                    decoration: BoxDecoration(
                                        color: transaction['color'],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      transaction['name'][0].toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        transaction['name'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        transaction['date'],
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                '\$${transaction['price']}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ]),
                      );
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
