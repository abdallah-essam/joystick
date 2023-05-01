
import 'package:flutter/material.dart';

import '../../../../shared/constants/my_images.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.expand,
          children: [
            Container(color: Colors.black87),
            Container(color: Colors.white10),
            Image.asset(
             MyImages.searchBackground,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  height: 3,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0191EE),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  height: 3,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0191EE),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  height: 3,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0191EE),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                          )),
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: const Icon(
                          Icons.person,
                          size: 32,
                          color: Color(0xff0191EE),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                           MyImages.searchPage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 12),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12)),
                              fillColor: const Color(0xff31353B),
                              filled: true,
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.search,
                                    color: Color(0xff0191EE),
                                  )),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.mic,
                                    color: Color(0xff0191EE),
                                  )),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              hintText: 'Search for game center',
                              hintStyle:
                                  const TextStyle(color: Color(0xffF3F3F3)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12))),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
