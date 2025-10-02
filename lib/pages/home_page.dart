import 'package:flutter/material.dart';
import "package:woo_commerce/data/categories_data.dart";
import '../components/my_card.dart';
import 'package:woo_commerce/data/discount_data.dart';
import '../components/my_circle_avatar.dart';
import '../components/my_prod_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.transparent,
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.store,size: 30,color: Colors.pinkAccent,),
                          SizedBox(width: 5),
                          Text("WooCommerce",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.search,color: Colors.black,),
                          SizedBox(width: 10,),
                          Icon(Icons.notifications_active_outlined),
                          SizedBox(width: 10),
                          Icon(Icons.shopping_cart_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    CategoriesData.categories.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: MyCircleAvatar(
                        imageUrl: CategoriesData.categories[index]['imageUrl']!,
                        items: CategoriesData.categories[index]['items']!,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DiscountDataData.discounts.length,
                    itemBuilder: (context, index) {
                      return MyCard(
                        discount:
                            DiscountDataData.discounts[index]['discount']!,
                        discountImage:
                            DiscountDataData.discounts[index]['discountImage']!,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft, // Pre-defined positions
                  child: Text('New Products', style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    crossAxisCount: 2,
                    childAspectRatio: 0.73,
                  ),
                  itemBuilder: (context, index) {
                    return MyProdColumn(imageUrl: 'https://toptenmartltd.com/wp-content/uploads/2025/09/shirt.jpg', price: '\$50', title: 'Red Shirt',rating: '5*',

                    );
                  },
                ),
              ),

              /*  SizedBox(
                height: 200,
                width: double.infinity,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: DiscountDataData.discounts.length,
                  itemBuilder: (context, index) {
                    return MyCard(
                      discount: DiscountDataData.discounts[index]['discount']!,
                      discountImage:
                          DiscountDataData.discounts[index]['discountImage']!,
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}


