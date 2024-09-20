import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "behelper",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // appBar: AppBar(title: Text("BeHelper")),
          body: Container(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/be.gif",
                ),
                fit: BoxFit.cover,
                opacity: 0.35),
          ),
          child: loginpage(),
        ),
      )),
    ),
  );
}

//!loginpage

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to B E Helpers',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in\n',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController, //it takes user name
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 202, 195, 195)),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 202, 195, 195)),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => application()));
                  },
                )),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: Row(
                children: [
                  const Text('Forgot Password?',
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Do not have account?',
                  style: TextStyle(fontSize: 15, color: Colors.redAccent),
                ),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => Signuppage()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
    final String name = nameController.text;
  }
}

//!Signup

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar:AppBar(title:Align(
        //     alignment: Alignment.center,
        //     child:Text("B E Helper",
        //     textDirection: TextDirection.ltr,
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        //    ),
        // ),
        body: Container(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 21, 20, 20).withOpacity(0.9),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/be.gif",
              ),
              fit: BoxFit.cover,
              opacity: 0.35),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 202, 195, 195)),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 202, 195, 195)),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 202, 195, 195)),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Add sign-up logic here
                  Navigator.pop(context);
                },
                child: Text("Sign Up"),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 15, color: Colors.redAccent),
                  ),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.pop(context);
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

//! application widget
class application extends StatefulWidget {
  const application({super.key});

  @override
  State<application> createState() => _applicationState();
}

class _applicationState extends State<application>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  var mtext = "";

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    //TODO: implement initstate
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "B E Helper",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purpleAccent),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 55, 42, 42),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home), //!Home
              color: Colors.white,
              onPressed: () {
                setState(() {});
                mtext = "home";
              }),
          IconButton(
              icon: Icon(Icons.help_outline), //!Help
              color: Colors.white,
              onPressed: () {
                setState(() {});
                mtext = "contact: xxxxxxxxx9";
              }),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: mainmenu(),

      //! body of the app

      body: Material(
        color: Colors.black12,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to BeHelpers!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "BeHelpers is your ultimate companion on the journey of engineering education. We are dedicated to helping engineering students succeed in life by providing valuable resources, tools, and support.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "What BeHelpers offers:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "- Virtual Lab: Explore interactive virtual experiments and enhance your practical knowledge.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                Text(
                  "- e-Resource: Access a wide range of study materials, notes, and resources.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                Text(
                  "- SGPA and CGPA Calculator: Easily calculate your semester and cumulative grade points.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add any action you want when the button is pressed
                  },
                  child: Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//!drawer menu

class mainmenu extends StatefulWidget {
  const mainmenu({super.key});

  @override
  State<mainmenu> createState() => _mainmenuState();
}

class _mainmenuState extends State<mainmenu> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      backgroundColor: Color.fromARGB(255, 239, 229, 229),
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("user name"),
            accountEmail: new Text("user@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Color.fromARGB(255, 193, 159, 159),
              child: new Text("U"),
            ),
            decoration: new BoxDecoration(color: Colors.blueAccent),
            otherAccountsPictures: [
              new CircleAvatar(
                backgroundColor: Color.fromARGB(255, 70, 109, 103),
                child: Image.asset("assets/images/be.png"),
              )
            ],
          ),
          new ListTile(
            title: new Text("Virtual lab"),
            trailing: new Icon(Icons.laptop_rounded),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => VirtualLabPage()))
            },
          ),
          new ListTile(
            title: new Text("e-Resource"),
            trailing: new Icon(Icons.book),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Drawer2Page()))
            },
          ),
          new ListTile(
            title: new Text("SGPA AND CGPA Calculator"),
            trailing: new Icon(Icons.calculate),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => SGPACalculatorPage()))
            },
          ),
          new ListTile(
            title: new Text("Setting"),
            trailing: new Icon(Icons.settings),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Settingpage()))
            },
          ),
          new ListTile(
            title: new Text("logout"),
            trailing: new Icon(Icons.logout),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          )
        ],
      ),
    );
  }
}

//!SGPA calculator

class SGPACalculatorPage extends StatefulWidget {
  const SGPACalculatorPage({Key? key}) : super(key: key);

  @override
  State<SGPACalculatorPage> createState() => _SGPACalculatorPageState();
}

class _SGPACalculatorPageState extends State<SGPACalculatorPage> {
  TextEditingController matController = TextEditingController();
  TextEditingController cheController = TextEditingController();
  TextEditingController pspController = TextEditingController();
  TextEditingController elnController = TextEditingController();
  TextEditingController emeController = TextEditingController();
  TextEditingController chelController = TextEditingController();
  TextEditingController cplController = TextEditingController();
  TextEditingController eghController = TextEditingController();
  TextEditingController sfhController = TextEditingController();
  TextEditingController resController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SGPA Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTextField("21MAT11", matController),
              _buildTextField("21CHE12/21PHY12", cheController),
              _buildTextField("21PSP13/21ELE13", pspController),
              _buildTextField("21ELN14/21CIV14", elnController),
              _buildTextField("21EME15/21EVNL15", emeController),
              _buildTextField("21CHEL16/21PHYL16", chelController),
              _buildTextField("21CPL17/21ELEL17", cplController),
              _buildTextField("21EGH18", eghController),
              _buildTextField("21SFH19/21IDT19", sfhController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  calculateSGPA();
                },
                child: Text('Calculate SGPA'),
              ),
              SizedBox(height: 20),
              Text(
                'Your SGPA is',
                style: TextStyle(color: Colors.red, fontSize: 18.0),
              ),
              SizedBox(height: 10.0),
              _buildTextField("SGPA", resController, enabled: false),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {bool enabled = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          controller: controller,
          textAlign: TextAlign.center,
          enabled: enabled,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 10.0),
      ],
    );
  }

  void calculateSGPA() {
    var a = int.tryParse(matController.text) ?? 0;
    var b = int.tryParse(cheController.text) ?? 0;
    var c = int.tryParse(pspController.text) ?? 0;
    var d = int.tryParse(elnController.text) ?? 0;
    var e = int.tryParse(emeController.text) ?? 0;
    var f = int.tryParse(chelController.text) ?? 0;
    var g = int.tryParse(cplController.text) ?? 0;
    var h = int.tryParse(eghController.text) ?? 0;
    var i = int.tryParse(sfhController.text) ?? 0;

    var aa = 3 * marks(a);
    var ab = 3 * marks(b);
    var ac = 3 * marks(c);
    var ad = 3 * marks(d);
    var ae = 3 * marks(e);
    var af = 1 * marks(f);
    var ag = 1 * marks(g);
    var ah = 2 * marks(h);
    var ai = 1 * marks(i);

    var z = ((aa + ab + ac + ad + ae + af + ag + ah + ai) / 200) * 10;

    resController.text = z.toStringAsFixed(2);
  }

  int marks(int y) {
    if (y >= 90)
      return 10;
    else if (y <= 89 && y >= 80)
      return 9;
    else if (y <= 79 && y >= 70)
      return 8;
    else if (y <= 69 && y >= 60)
      return 7;
    else if (y <= 59 && y >= 50)
      return 6;
    else if (y <= 49 && y >= 45)
      return 5;
    else if (y <= 44 && y >= 40)
      return 4;
    else
      return 0;
  }
}

//!vertual lab

class VirtualLabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Virtual Lab"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        padding: EdgeInsets.all(16.0),
        children: [
          _buildClickableContainer("Container 1", Colors.blue),
          _buildClickableContainer("Container 2", Colors.green),
          _buildClickableContainer("Container 3", Colors.orange),
          _buildClickableContainer("Container 4", Colors.purple),
          _buildClickableContainer("Container 5", Colors.blue),
          _buildClickableContainer("Container 6", Colors.green),
          _buildClickableContainer("Container 7", Colors.orange),
          _buildClickableContainer("Container 8", Colors.purple),
        ],
      ),
    );
  }

  Widget _buildClickableContainer(String label, Color color) {
    return InkWell(
      onTap: () {
        print("Container clicked: $label");
      },
      child: Container(
        height: 200,
        width: 450,
        color: color,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

//! e-Resource

class Drawer2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E Resource'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildContainer('Notes', Colors.blue),
              SizedBox(height: 16.0),
              _buildContainer('PPT', Colors.green),
              SizedBox(height: 16.0),
              _buildContainer('Question Paper', Colors.red),
              SizedBox(height: 16.0),
              _buildContainer('Important Question', Colors.orange),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(String label, Color color) {
    return Container(
      width: 300,
      height: 200,
      color: color,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}

//! setting page

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 105, 98, 98),
        appBar: AppBar(title: Text("Settings")),
        body: Center(
          child: Text("Under development"),
        ));
  }
}
