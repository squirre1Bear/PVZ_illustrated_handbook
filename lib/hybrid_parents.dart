import 'package:flutter/material.dart';

class HybridParentsPage extends StatelessWidget {
  final String parent1ImagePath;
  final String parent2ImagePath;
  final String childImagePath;
  final String parent1Name;
  final String parent2Name;
  final String childName;

  HybridParentsPage({
    required this.parent1ImagePath,
    required this.parent2ImagePath,
    required this.childImagePath,
    required this.parent1Name,
    required this.parent2Name,
    required this.childName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 101, 85),
        title: Text(
          '杂交双亲',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "PVZ"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(parent1ImagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      parent1Name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(parent2ImagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      parent2Name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Icon(
              Icons.arrow_downward,
              size: 50,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(childImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text(
                  childName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}