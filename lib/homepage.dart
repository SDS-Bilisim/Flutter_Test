import 'package:flutter/material.dart';
import 'package:untitled2/models/product.dart';
import 'package:untitled2/second_page.dart';
import 'package:untitled2/widgets/product_card.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedTab = 0;

  List<String> _tabList = ['Hand bag','Jewellery','Footweat','Dresses','Dresses','Dresses','Dresses'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {  },
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
        ),
        actions: [
          IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.search,color: Colors.black,),
          ),
          IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.shopping_cart_outlined,color: Colors.black,),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildTitle(),
          const SizedBox(height: 20,),
          _buildTabs(),
          const SizedBox(height: 20,),
          _buildProducts(),

        ],
      ),
    );
  }

  _buildTitle() {
    return const Text("Women");
  }

  _buildTabs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(_tabList.length, (index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () => _changeTab(index),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_tabList[index],style: TextStyle(color: index == _selectedTab ? Colors.black : Colors.grey),),
                Visibility(
                  visible: index == _selectedTab,
                  child: Container(
                    height: 1,
                    width: 20,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  _buildProducts() {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          runAlignment: WrapAlignment.start,
          spacing: 16,
          runSpacing: 16,
          children: List.generate(Product.fakeData().length, (index) {
            var product = Product.fakeData()[index];
            return ProductCard(product: product);
          }),
        ),
      ),
    );
  }


  _changeTab(int index) {
    _selectedTab = index;
    setState(() {});
  }




}
