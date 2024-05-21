import 'package:final_app_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class ShoesItemCell extends StatelessWidget {
  final Map sObj;
  const ShoesItemCell({super.key, required this.sObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      width: media.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 1))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            child: Container(
              color: AppColor.white,
              width: media.width * 0.4,
              height: media.width * 0.25,
              child: Image.asset(
                sObj["image"].toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  const Text(
                    "BEST SELLER",
                    style: TextStyle(
                      color: AppColor.blue,
                      fontSize: 15,
                    ),
                  ),
                Text(
                  sObj["name"].toString(),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  sObj["price"].toString(),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
            ]),
          )
        ],
      ),
    );
  }
}
