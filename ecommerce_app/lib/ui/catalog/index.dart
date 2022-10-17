import 'package:ecommerce_app/ui/product_detail/index.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        id: "1",
        name: "Nike Ultra Yellow",
        description: "This is a shoe",
        price: 129000,
        image: "assets/shoe1.png"
      ),
      Product(
        id: "2",
        name: "Converse Billabong",
        description: "This is another shoe",
        price: 150000,
        image: "assets/shoe2.png"
      ),
        Product(
        id: "3",
        name: "Nike Milenial",
        description: "This is another shoe",
        price: 110000,
        image: "assets/shoe3.png"
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {}, 
          ),
          title: const Text('Catalog'),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Shopping Cart',
              onPressed: () {},
            ),
          ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index){
          return CatalogProductCard(product: products[index]);
        },
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  const CatalogProductCard({
    Key? key,
    required this.product
    }) : super(key: key);

    final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ProductDetailPage(product: product);
                    }
                  )
                );
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              product.image,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Rp ${product.price}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.favorite_outline),
                        onPressed: () {},
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(minWidth: 200),
                          child: TextButton.icon(
                            icon: const Icon(Icons.shopping_cart_outlined),
                            label: const Text('Add to Cart'),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.tealAccent.shade700,
                            ),                          
                            onPressed: () {},
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}