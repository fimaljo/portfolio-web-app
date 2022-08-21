import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/pages/projects/horizontaltechview.dart';
import 'package:my_portfolio/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({required this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BackButton(
                        onPressed: () => Navigator.pop(context),
                      ),
                      Text(
                        project.name,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15.0)),
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          project.year.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Hero(
                    tag: project.name,
                    child: Responsive(
                        //borderRadius: BorderRadius.circular(15.0),
                        mobile: Image.network(
                          project.imageUrl,
                          fit: BoxFit.cover,
                        ),
                        tablet: Image.network(
                          project.imageUrl,
                          fit: BoxFit.cover,
                        ),
                        desktop: SizedBox(
                          height: 350,
                          child: Image.network(
                            project.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Column(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  // children: [
                  const Text(
                    "Technologies",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HorizontalTechView(
                    techList: project.technologiesUsed ?? [],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    project.description,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
                // )
                //  ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
