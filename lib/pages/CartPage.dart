import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          CartList().p32().expand(),
          Divider(),
          CartTotal(),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          "\$9999".text.xl5.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet".text.make()
                ));
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)),
              child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context,index)=>ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            icon:Icon(Icons.remove_circle_outline),
            onPressed: (){},
          ),
          title: "Item 1".text.make(),
        ),
    );
  }
}
