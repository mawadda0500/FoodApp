import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_food/configuration/theme.dart';
import 'package:task_food/data/data.dart';
import 'package:task_food/widget/slidable_widget.dart';
import 'package:task_food/widget/snack_bar.dart';

class FoodCart extends StatefulWidget {
  const FoodCart({super.key});

  @override
  State<FoodCart> createState() => _FoodCartState();
}

class _FoodCartState extends State<FoodCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Text('Cart',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 61.59),
                Icon(
                  CupertinoIcons.hand_draw,
                  size: 20,
                ),
                SizedBox(width: 5.0),
                Text('Swipe on item to delete',
                    style: TextStyle(fontSize: 10.0)),
              ],
            ),
            const SizedBox(height: 19.0),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 17.0,
              ),
              itemCount: foods.length,
              itemBuilder: (context, index) {
                return SlidableWidget(
                  child: Center(
                    child: Card(
                      shadowColor: Colors.black.withOpacity(0.2),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Peletta.firstWhite,
                            ),
                            width: 315,
                            height: 102,
                            margin: const EdgeInsets.symmetric(vertical: 7.0),
                          ),
                          Positioned(
                            left: 17.0,
                            top: 22.0,
                            child: Container(
                              height: 69.21,
                              width: 69.21,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Peletta.firstWhite,
                                image: DecorationImage(
                                  image: foods[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 26.0,
                            left: 103.0,
                            child: Text(
                              '#${foods[index].price}',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Peletta.primarySwatch,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 27,
                            left: 102,
                            child: Text(
                              foods[index].food,
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Positioned(
                            right: 24.0,
                            bottom: 17,
                            child: Container(
                              height: 20,
                              width: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Peletta.primarySwatch,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (foods[index].counter >= 1) {
                                          --foods[index].counter;
                                        }
                                      });
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 18.0,
                                    ),
                                  ),
                                  Text('${foods[index].counter}',
                                      style:
                                          const TextStyle(color: Colors.white)),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (foods[index].counter < 9) {
                                          ++foods[index].counter;
                                        }
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onDismissed: (action, context) =>
                      dismissSlidableItem(context, index, action),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void dismissSlidableItem(
      BuildContext context, int index, SlidableActionCho action) {
    switch (action) {
      case SlidableActionCho.delete:
        Utils.showSnackBar(context, 'Item has been deleted');
        setState(() {
          foods.removeAt(index);
        });

        break;
      case SlidableActionCho.favorite:
        Utils.showSnackBar(context, 'Item has been add to my favorit');
        break;
    }
  }
}
