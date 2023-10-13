import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: camel_case_types
class Product_description extends StatelessWidget {
  final prod;

  const Product_description({super.key, required this.prod});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Product Detail',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange.shade900,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back))),
      body: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Image.network(
            prod.image.toString(),
            width: 30.h,
            height: 30.h,
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Column(children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Title :',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      prod.title.toString(),
                      style: TextStyle(fontSize: 17.sp, color: Colors.white),
                    )),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Price : ',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text(
                      prod.price.toString(),
                      style: TextStyle(fontSize: 17.sp, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Category :',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    prod.category.toString(),
                    style: TextStyle(fontSize: 17.sp, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Description :',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                Text(prod.description.toString(),
                    style: TextStyle(fontSize: 15.sp, color: Colors.white)),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
