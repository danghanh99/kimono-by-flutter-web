import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  // Controllers for the TextFields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  // Variable to hold the selected category
  String? _selectedCategory;

  // List of categories for the DropdownButton
  final List<String> _categories = [
    'All Categories',
    'Clothing',
    'Electronics',
    'Books',
    'Beauty'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000, // Set the width of the search box
      padding: EdgeInsets.all(20), // Add padding inside the container
      decoration: BoxDecoration(
        color: Colors.grey[300], // Background color
        borderRadius: BorderRadius.circular(20), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black12, // Shadow color
            blurRadius: 10, // Shadow blur effect
            offset: Offset(0, 5), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TextField for searching by name
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Search by Name',
              hintText: 'Type a name...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            ),
          ),
          SizedBox(height: 20),

          // TextField for searching by price range
          TextField(
            controller: _priceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Search by Price',
              hintText: 'Enter price range...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(Icons.attach_money),
              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            ),
          ),
          SizedBox(height: 20),

          // DropdownButton for selecting categories
          DropdownButtonFormField<String>(
            value: _selectedCategory,
            decoration: InputDecoration(
              labelText: 'Select Category',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            items: _categories.map((String category) {
              return DropdownMenuItem<String>(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedCategory = newValue;
              });
            },
            hint: Text('Choose a category'),
          ),
          SizedBox(height: 20),

          // Search button
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Add the search logic here
                String name = _nameController.text;
                String price = _priceController.text;
                String category = _selectedCategory ?? 'No category selected';

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text(
                        'Searching for: \nName: $name\nPrice: $price\nCategory: $category'),
                  ),
                );
              },
              child: Text('Search'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
