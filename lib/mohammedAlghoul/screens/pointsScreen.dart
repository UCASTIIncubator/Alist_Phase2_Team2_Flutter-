import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sizer/sizer.dart';

class PointsScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();

  PointsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Points'.tr,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(vertical: 10.h),
              color: Colors.grey.shade100,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total'.tr,
                    style: TextStyle(fontSize: 10),
                  ),
                  Text('1080',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Theme.of(context).primaryColor)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(vertical: 10.h),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade100,
                    offset: Offset(0, 5), //(x,y)
                    blurRadius: 3,
                    spreadRadius: 3)
              ]),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            actionsAlignment: MainAxisAlignment.center,
                            title: Text('phone'.tr),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Covert'.tr))
                            ],
                            content: TextField(
                              keyboardType: TextInputType.phone,
                              controller: phoneController,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade300,
                                  filled: true,
                                  hintText: '+97256958322'),
                            ),
                          ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Transfer_Points'.tr,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey.shade500),
                        ),
                        Text('hello'.tr,
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade100,
                    offset: Offset(0, 5), //(x,y)
                    blurRadius: 3,
                    spreadRadius: 3)
              ]),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Redeem_Points'.tr,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey.shade500),
                        ),
                        Text('Choose_Place'.tr,
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade100,
                    offset: Offset(0, 5), //(x,y)
                    blurRadius: 3,
                    spreadRadius: 3)
              ]),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Redeem_Points'.tr,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey.shade500),
                        ),
                        Text('500 ' + 'Points'.tr,
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
