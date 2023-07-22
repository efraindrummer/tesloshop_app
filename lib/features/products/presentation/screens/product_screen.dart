import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_shop/features/products/presentation/providers/providers.dart';

class ProductSreen extends ConsumerWidget {

  final String productId;
  
  const ProductSreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final productState = ref.watch(productProvider(productId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Producto'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.camera_alt_outlined)
          ),
        ],
      ),
      body: Center(
        child: Text(productState.product?.title ?? 'cargando'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.save_as_outlined),
      ),
    );
  }
}