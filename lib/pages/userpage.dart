import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Container(
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[600],
                ),
                child: Column(
                  children: [
                  SizedBox(height: 20),
                  Container(
                    
                    child: GestureDetector(
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Container(
                            width: 50,
                            height: 50,
                            
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('lib/assets/default_profile_picture.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text('Sign In'),
                        ],
                      ),
                    ),
                  ),
                  
                ]),
              ),
            ],
          ),
        ));
  }
}
