import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 150, 0, 0),
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Resume',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 150, 0, 0),
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Section
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          "https://scontent.fbkk3-2.fna.fbcdn.net/v/t1.6435-9/80226611_639542333452875_1833990832558964736_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeEanNJiVzjIpF4UPf7mMXPLTgwhVcBYegFODCFVwFh6ASg9dp5zhCXteobjvuHacJ6-erZmX5YmdHbIIXyge4Hj&_nc_ohc=bzEsoo7zJggQ7kNvgEyvRus&_nc_zt=23&_nc_ht=scontent.fbkk3-2.fna&_nc_gid=AilP2QjJGjqkRmQgeRpLh3k&oh=00_AYB_uTYqMqikldMmHQ6evZlioWjwg_D8lph8mNxlDKQCpw&oe=6791F0BB",
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Kawinsit Ngamloetsathit Nathong",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 143, 3, 3),
                        ),
                      ),
                      SizedBox(height: 8),
                      Divider(thickness: 1.5, color: const Color.fromARGB(255, 202, 76, 76)),
                    ],
                  ),
                ),
                SizedBox(height: 24),

                // Personal Information Section
                Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 150, 0, 0),
                  ),
                ),
                SizedBox(height: 12),
                Card(
                  color: const Color.fromARGB(255, 255, 235, 238), // สีแดงอ่อน
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDetailRow("Hobby", "Play a game"),
                        _buildDetailRow("Food", "Ramen"),
                        _buildDetailRow("Birthplace", "Bangkok"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),

                // Education Section
                Text(
                  "Education",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 150, 0, 0),
                  ),
                ),
                SizedBox(height: 12),
                Card(
                  color: const Color.fromARGB(255, 255, 235, 238), // สีแดงอ่อน
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        _buildEducationRow("Elementary", "Saint Nicholas School", "59"),
                        _buildEducationRow("Primary", "Saint Nicholas School", "59"),
                        _buildEducationRow("High School", "Saint Nicholas School", "65"),
                        _buildEducationRow("Undergrad", "Naresuan University", "69"),
                      ],
                    ),  
                  ),  
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

// Helper widget to build personal detail rows
Widget _buildDetailRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 143, 3, 3)),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ],
    ),
  );
}

// Helper widget to build education rows
Widget _buildEducationRow(String level, String institution, String year) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            "$level: $institution",
            style: TextStyle(fontSize: 16, color: Colors.black87),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          "Year: $year",
          style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 105, 0, 0)),
        ),
      ],
    ),
  );
}