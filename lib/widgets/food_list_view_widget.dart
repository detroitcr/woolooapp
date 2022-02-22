import 'package:flutter/material.dart';
import 'package:internapp/models/Food/food_data.dart';
import 'package:internapp/widgets/size_config.dart';
import 'package:internapp/widgets/text_widget.dart';

class FoodListView extends StatefulWidget {
  const FoodListView({Key? key}) : super(key: key);
  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {
  int count = 0;
  void increament() {
    count++;
  }

  void decreament() {
    count--;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20, left: 20, top: 20),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 0.8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              hintText: 'Search Food Items',
              prefixIcon: Icon(Icons.search, size: 30),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: fooddataitems.length,
            itemBuilder: (context, index) {
              final data = fooddataitems[index];
              return Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MyText(
                          text: data.name,
                          size: 30.0,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        MyText(
                          text: data.description,
                          size: 24.0,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow),
                          ),
                        ),
                        MyText(
                          text: '\₹ ' + data.price,
                          fontColor: Colors.red,
                          size: 30.0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: SizeConfig.deviceWidth * 0.24,
                          height: SizeConfig.deviceWidth * 0.25,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(8.0),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(data.image),
                            ),
                            // Image(
                            //   fit: BoxFit.fill,
                            //   image: NetworkImage(data.image),
                            // ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.deviceHeight * 0.01,
                        ),
                        Container(
                          height: 24,
                          width: 90,
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.red,
                          //   ),
                          //   borderRadius: BorderRadius.circular(5),
                          // ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  increament();
                                });
                              },
                              child: Text(
                                count.toString(),
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            // child:

                            // MyText(
                            //   text: 'ADD +'.toUpperCase(),
                            //   fontColor: Colors.red,
                            //   size: 18,
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}












































































// MaterialButton(
//               child: Text(
//                 count.toString(),
//                 style: TextStyle(fontSize: 30),
//               ),
//               onPressed: () {
//                 setState(() {
//                   increament();
//                 });
//               },
//             ),














// _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
//             new Text(_itemCount.toString()),
//             new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++))






















// /////            Container(
//                   padding: EdgeInsets.all(3),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Theme.of(context).accentColor),
//                   child: Row(
//                     children: [
//                       InkWell(
//                           onTap: () {},
//                           child: Icon(
//                             Icons.remove,
//                             color: Colors.white,
//                             size: 16,
//                           )),
//  Container(
//                         margin: EdgeInsets.symmetric(horizontal: 3),
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 3, vertical: 2),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(3),
//                             color: Colors.white),
//                         child: Text(
//                           '3',
//                           style: TextStyle(color: Colors.black, fontSize: 16),
//                         ),
//                       ),

  // InkWell(
  //                         onTap: () {},
  //                         child: Icon(
  //                           Icons.add,
  //                           color: Colors.white,
  //                           size: 16,
  //                         )),
  //                   ],
  //                 ),
  //               ),

