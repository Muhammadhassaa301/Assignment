import 'package:assig/models/model.dart';
import 'package:assig/product_description.dart';
import 'package:assig/service/service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List Prod = [];

  Future<List<ProductModel>> getApi() async {
    var result = await AuthenicationService().productApi();

    Prod = result;

    return result;
  }

  @override
  void initState() {
    getApi();
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Product',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: Prod.isEmpty
          ? Center(
              child: CircularProgressIndicator(
              color: Colors.orange.shade900,
            ))
          : ListView.builder(
              itemCount: Prod.length,
              itemBuilder: ((context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(7)),
                  child: ListTile(
                    leading: Image.network(
                      Prod[index].image.toString(),
                      width: 6.h,
                      height: 6.h,
                    ),
                    title: Text(Prod[index].title.toString()),
                    trailing: Text(Prod[index].price.toString()),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product_description(
                                  prod: Prod[index],
                                )),
                      );
                    },
                  ),
                );
              })),
    );
  }
}
