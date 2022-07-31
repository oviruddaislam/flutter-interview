import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rexo_it_interview/models/employee.dart';

import 'responsive.dart';

class EmployeeCard extends StatelessWidget {
  final Employee employee;
  const EmployeeCard({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                employee.imageUrl!,
                fit: BoxFit.cover,
              ),
            )),
            const SizedBox(height: 25,),
            Text(
              employee.name!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: ResponsiveWidget.isSmallScreen(context)
                    ? 24
                    : 40,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              employee.designation!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: ResponsiveWidget.isSmallScreen(context)
                    ? 14
                    : 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                socialButton(
                  const Icon(FontAwesomeIcons.facebook, color: Colors.black54,),
                  null
                ),
                socialButton(
                    const Icon(FontAwesomeIcons.github, color: Colors.black54,),
                    null
                ),
                socialButton(
                    const Icon(FontAwesomeIcons.linkedinIn, color: Colors.black54,),
                    null
                )
              ],
            )
          ],
        )
    );
  }

  Widget socialButton(Icon icon, VoidCallback? onPressed) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }


}
