import 'package:flutter/material.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({super.key, required this.id, this.extras});

  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:
                  Image.network(
                    extras!['image'],
                    height: 250,
                    fit: BoxFit.fill,
                  ),
              ),
              const SizedBox(height: 20),
              Row(
                children:[
                  const Icon(Icons.star, color: Colors.orange),
                  Text(' ${extras!['rating']['rate']}', 
                  style: const TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 15),
                  
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Text('${extras!['rating']['count']} reviews',
                    style: const TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  )
                ]
              ),
              
              const SizedBox(height: 20),
              Text(extras!['title'],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(extras!['description'],
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${extras!['price']}',
                style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
