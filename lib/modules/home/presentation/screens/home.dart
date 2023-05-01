

import '../../../../shared/constants/my_images.dart';
import './search.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                      color: const Color(0xff0191EE),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          height: 3,
                          width: 18,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          height: 3,
                          width: 12,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  )),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                    color: const Color(0xff0191EE),
                    borderRadius: BorderRadius.circular(16)),
                child: const Icon(
                  Icons.person,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                height: 200,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  MyImages.search,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(12)),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen(),));
                          },
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
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(49, 53, 59, 0.5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              )
            ],
          ),
          const Text(
            ' Categories',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 86,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                          MyImages.categoryImages[index],
                          height: 64,
                          width: 64)),
                );
              },
            ),
          ),
          const Text(
            ' Offers',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 570,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12),
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: Image.asset(
                                MyImages.offersImages[index]),
                          ),
                          const SizedBox(width: 16),
                          Flexible(
                            child: Column(children: [
                              const SizedBox(height: 10),
                              const SizedBox(
                                child: Text(
                                  'Game station',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff0191EE),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                child: Text(
                                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                  style: TextStyle(fontSize: 8),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(children: [
                                      SizedBox(
                                        width: 80,
                                        child: Row(
                                          children: const [
                                            Text(
                                              '20',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'th',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text('March,Wednesday',
                                          style: TextStyle(
                                            fontSize: 10,
                                          ))
                                    ]),
                                    const Text(
                                      '50\$',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff0191EE),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(double.infinity, 48),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                child: const Text('Book'),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 250,
            child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    MyImages.letsDoIt,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Let`s do it',
                          style: TextStyle(fontSize: 32, color: Colors.white,fontWeight: FontWeight.w900)),
                      const SizedBox(height: 8),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(140, 48),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text('Book'),
                      ),
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
