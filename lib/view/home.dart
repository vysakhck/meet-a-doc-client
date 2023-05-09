import 'package:client_app/class.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<DoctorsModel> doctorsList = [
    DoctorsModel(
        imgPath: 'Assets/1.png',
        name: 'Dr.Malvin Auguire',
        specialization: 'Cardiologist',
        hospital: 'Sao Paulo SPs'),
    DoctorsModel(
        imgPath: 'Assets/2.png',
        name: 'Dr.Haleema Cuevas',
        specialization: 'Cardiologist',
        hospital: 'Sao Paulo SPs'),
    DoctorsModel(
        imgPath: 'Assets/3.png',
        name: 'Dr. Martin Jone',
        specialization: 'Cardiologist',
        hospital: 'Sao Paulo SPs'),
    DoctorsModel(
        imgPath: 'Assets/4.png',
        name: 'Dr.Myles Petty',
        specialization: 'Cardiologist',
        hospital: 'Sao Paulo SPs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      ' Hello, \n David.',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.menu_rounded))
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Doctors',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 52,
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Doctors",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildTile(doctorsList[index]),
                itemCount: doctorsList.length,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildTile(DoctorsModel doctor) {
    return ListTile(
      onTap: () {},
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFFFECB1)),
            child: Image.asset(
              doctor.imgPath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                doctor.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Text(
                doctor.specialization,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                doctor.hospital,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.videocam,
          color: Colors.green,
          size: 32,
        ),
      ),
    );
  }
}
