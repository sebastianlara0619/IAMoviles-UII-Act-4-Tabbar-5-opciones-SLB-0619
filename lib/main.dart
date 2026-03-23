import 'package:flutter/material.dart';

void main() => runApp(const CelularesLaraApp());

class CelularesLaraApp extends StatelessWidget {
  const CelularesLaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const NavegacionPrincipal(),
    );
  }
}

class NavegacionPrincipal extends StatefulWidget {
  const NavegacionPrincipal({super.key});

  @override
  State<NavegacionPrincipal> createState() => _NavegacionPrincipalState();
}

class _NavegacionPrincipalState extends State<NavegacionPrincipal> {
  int _selectedIndex = 0;

  final List<Widget> _paginas = [
    const CatalogoPage(),
    const SucursalesPage(),
    const PersonalPage(),
    const ReparacionesPage(),
    const SobreNosotrosPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A44C6),
        title: const Text('Celulares Lara', style: TextStyle(color: Colors.white)),
        centerTitle: false,
      ),
      body: _paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF4A44C6),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Sucursales'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Personal'),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Reparaciones'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Nosotros'),
        ],
      ),
    );
  }
}

// --- PÁGINAS ARREGLADAS (SOLO AGREGUÉ EL SCROLL PARA EVITAR EL ERROR) ---

class CatalogoPage extends StatelessWidget {
  const CatalogoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // <--- Esto evita las franjas amarillas
      child: Column(
        children: [
          Image.network('https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L1.png'),
          const SizedBox(height: 20),
          const Text('Cátalogo Principal', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF337AB7))),
        ],
      ),
    );
  }
}

class SucursalesPage extends StatelessWidget {
  const SucursalesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.network('https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L2.png'),
            const SizedBox(height: 20),
            const Text('Sucursales', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF337AB7))),
          ],
        ),
      ),
    );
  }
}

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Center(child: Image.network('https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L3.jfif', height: 250)),
            const SizedBox(height: 20),
            const Text('Nuestro Personal', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF337AB7))),
          ],
        ),
      ),
    );
  }
}

class ReparacionesPage extends StatelessWidget {
  const ReparacionesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L4.jfif')
              ),
            ),
            const Text('Reparaciones', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF337AB7))),
          ],
        ),
      ),
    );
  }
}

class SobreNosotrosPage extends StatelessWidget {
  const SobreNosotrosPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Center(child: Image.network('https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L5.JPG', height: 200)),
            const SizedBox(height: 20),
            const Text('Sobre Nosotros', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF337AB7))),
          ],
        ),
      ),
    );
  }
}