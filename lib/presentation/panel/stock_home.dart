import 'package:flutter/material.dart';
import 'package:shop_stock_management/domain/stock_model.dart';

class ScreenStockHome extends StatefulWidget {
  const ScreenStockHome({super.key});

  @override
  State<ScreenStockHome> createState() => _ScreenStockHomeState();
}

class _ScreenStockHomeState extends State<ScreenStockHome> {
  final itemNameController = TextEditingController();
  final itemQuantityController = TextEditingController();
  final itemPriceController = TextEditingController();
  List<StockModel> stockModelList = [
    StockModel(
        itemId: '1', itemName: '5 Star', itemQuantity: '100', unitPrice: '10'),
    StockModel(
        itemId: '2', itemName: 'Perk', itemQuantity: '200', unitPrice: '5'),
    StockModel(
        itemId: '3', itemName: 'Munch', itemQuantity: '100', unitPrice: '10'),
  ];
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stock Management App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: itemNameController,
                            decoration: const InputDecoration(
                                hintText: 'Item Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // Write the code to add the .....
                            },
                            child: const Text('Add'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: itemQuantityController,
                            decoration: const InputDecoration(
                                hintText: 'Quantity',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: itemPriceController,
                            decoration: const InputDecoration(
                                hintText: 'Unit Price',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .19,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          //Write code to change status
                        },
                        leading: Text((index + 1).toString()),
                        title: Text(
                          stockModelList[index].itemName,
                          style: const TextStyle(
                              fontSize: 23, color: Colors.purple),
                        ),
                        subtitle: Row(
                          children: [
                            Text('Price-${stockModelList[index].unitPrice}',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            Text(
                                'Quantity-${stockModelList[index].itemQuantity}',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  //Write the code to delete .....
                                },
                                icon: const Icon(Icons.delete))
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: stockModelList.length,
                ))
          ],
        ),
      ),
    );
  }
}
