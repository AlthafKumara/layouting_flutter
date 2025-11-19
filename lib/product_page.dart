import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  double price = 150000;
  double discount = 0.5;
  int countdown = 5;
  int counterproduct = 0;
  int stock = 10;

  Timer? timer;

  double get discountPrice => price * discount;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        countdown--;
      });

      if (countdown == 0) {
        setState(() {
          price = discountPrice;
        });

        timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent.shade100,
        centerTitle: true,
        title: const Text(
          "Product Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              width: 0.9.sw,
              height: 0.9.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: const DecorationImage(
                  image: AssetImage("assets/product.jpg"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rp. ${price.toInt()}",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10.w),
                if (countdown > 0)
                  Text(
                    "Diskon aktif dalam: $countdown detik",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),

                if (countdown == 0)
                  Text(
                    "Harga Diskon Aktif!",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
              ],
            ),

            SizedBox(height: 15.h),

            Text(
              "Men's Plus Size Zip Up Long Sleeve Jacket - Beige",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Stock: $stock",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      color: Colors.black,
                      onPressed: () {
                        if (counterproduct <= 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.red,
                              content: const Text(
                                "Jumlah produk tidak boleh negatif!",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                          return;
                        }

                        setState(() {
                          counterproduct--;
                        });
                      },
                    ),

                    Text("$counterproduct"),

                    IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.black,
                      onPressed: () {
                        if (counterproduct >= stock) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.red,
                              content: const Text(
                                "Melebihi Jumlah Stock yang tersedia!",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                          return;
                        }

                        setState(() {
                          counterproduct++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 10.h, horizontal: 20.w),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            fixedSize: Size(0.9.sw, 50.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Tambahkan ke Keranjang",
            style: TextStyle(fontSize: 15.sp, color: Colors.amber),
          ),
        ),
      ),
    );
  }
}
