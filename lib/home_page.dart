import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  bool isFemale = false;
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmi = 0.0;
  double boy = 0;
  double kilo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Stack(
          children: [
            SafeArea(
              top: true,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BMI',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            'Calculator',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png'))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 500,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(isMale
                                    ? 'assets/malee.jpg'
                                    : isFemale
                                        ? 'assets/female.jpg'
                                        : 'assets/malee.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                      Column(
                        children: [
                          Text(
                            "Gender",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFemale = !isFemale;
                                    if (isFemale = true) {
                                      setState(() {
                                        isMale = false;
                                      });
                                    }
                                  });
                                },
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: isFemale ? Colors.red : Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.female_outlined,
                                      color: Colors.white,
                                      size: 41,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = !isMale;
                                    if (isMale = true) {
                                      setState(() {
                                        isFemale = false;
                                      });
                                    }
                                  });
                                },
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: isMale ? Colors.blueAccent : Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.male_outlined,
                                      color: Colors.white,
                                      size: 41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Age',
                            style: GoogleFonts.poppins(
                              textStyle: const  TextStyle(color: Colors.blueAccent,
                              fontSize: 17,fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 90,
                            width: 150,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: ageController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Text(
                            'size(m)',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color: Colors.blueAccent,
                              fontSize: 17,fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 90,
                            width: 150,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: heightController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Text(
                            'Weight(kg)',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color: Colors.blueAccent,
                              fontSize: 17,fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 90,
                            width: 150,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: weightController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        boy=double.parse(heightController.text);
                        kilo=double.parse(weightController.text);
                        bmi=kilo/(boy*boy);
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors:[Colors.blueAccent, Colors.pinkAccent]
                        )
                      ),
                      child: Center(
                        child: Text(
                          'BMI Calculate',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('Your Body Mass Index ${bmi.toStringAsFixed(2)}',style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600)
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
