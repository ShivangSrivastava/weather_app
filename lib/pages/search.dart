import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        title: const Text(
          "Search place",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white.withAlpha(0),
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search Place',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  fillColor: Colors.blue[700],
                  hoverColor: Colors.blue[600],
                  focusColor: Colors.blue[800],
                ),
                cursorColor: Colors.black,
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.search),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Search'),
            ),
          ),
        ],
      ),
    );
  }
}
