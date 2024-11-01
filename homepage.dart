import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Online Soft Sell"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          // Header Text
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Hello Admin",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),

          // Dashboard Grid
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // 2 columns
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 8.0, // Spacing between rows
              padding: const EdgeInsets.all(4.0),
              childAspectRatio: 1, // Maintain a square aspect ratio for each item
              children: [
                buildDashboardItem("Customer", "assets/customer.png"),
                buildDashboardItem("Suppliers", "assets/suppliers.png"),
                buildDashboardItem("Product", "assets/product.png"),
                buildDashboardItem("POS", "assets/pos.png"),
                buildDashboardItem("Expense", "assets/expense.png"),
                buildDashboardItem("Order", "assets/order.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget for each dashboard item
  Widget buildDashboardItem(String title, String imagePath) {
    return Container(
      padding: EdgeInsets.all(8.0), // Padding inside the container
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 80, // Adjusted image size
            width: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0), // Spacing between image and text
          Text(
            title,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold), // Font size and weight
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
