import 'package:flutter/material.dart';
	

	void main() => runApp(TapBarApp());
	

	class TapBarApp extends StatefulWidget {
	  @override
	  _MiguelAppState createState() => _MiguelAppState();
	}
	

	class _MiguelAppState extends State<TapBarApp> {
	  @override
	  Widget build(BuildContext context) {
	    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), debugShowCheckedModeBanner: false, home: Principal());
	  }
	}
	

	class Principal extends StatefulWidget {
	  @override
	  _PrincipalState createState() => _PrincipalState();
	}
	

	class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
	  TabController controller;
	  void initState() {
	    super.initState();
	    controller = TabController(
	      length: 5,
	      vsync: this,
	      initialIndex: 0,
	    );
	  } 
	

	  Widget card(String text) {
	    return Card(
	      color: Colors.blue[400],
	      child: Container(
	        height: 200.0,
	        width: 200.0,
	        child: Center(child: Text(text)),
	      ),
	    );
	  } 
	

	  Tab tab(String text, Icon icon) {
	    return Tab(
	      icon: icon,
	      text: text,
	    );
	  } 
	

	  @override
	  Widget build(BuildContext context) {
	    return Scaffold(
	      appBar: AppBar(
	        title: Text("Izzi"),
	        centerTitle: true,
	          backgroundColor: Theme.of(context).canvasColor,
	        elevation: 0.0,
	      ),
	      body: TabBarView(
	        controller: controller,
	        children: <Widget>[
	          card("Tarjeta Inicio"),
	          card("Tarjeta Busca tus productos"),
	          card("Tarjeta Tus productos en el Carrito"),
	          card("Tarjeta Ajustes"),
	          card("Tarjeta Cuenta"),
	        ],
	      ),
	      bottomNavigationBar: TabBar(
	        controller: controller,
	        isScrollable: true,
	        tabs: <Widget>[
	          tab("Inicio", Icon(Icons.account_balance_sharp)),
	          tab("Buscador", Icon(Icons.business_center_rounded)),
	          tab("Carrito", Icon(Icons.add_shopping_cart_rounded)),
	          tab("Ajustes", Icon(Icons.build_circle)),
	          tab("Cuenta", Icon(Icons.account_box)),
	        ],
	      ),
	    ); 
	  } 
	} 
