import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/services.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 1.2 * kToolbarHeight, 30, 40),
        child: SizedBox(
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bhiwandi",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Good Morning!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Image.asset('assets/1.png'),
                    const Center(
                      child: Text('23°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),),
                    ),
                    const Center(
                      child: Text('THUNDERSTORM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    ),
                    const SizedBox(height: 5,),
                    const Center(
                      child: Text('Friday 16 | 9:41 AM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/11.png',
                            scale: 8,),
                            const SizedBox(width: 5,),
                            	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Sunrise',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				'5:34 AM',
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/12.png',
                            scale: 8,),
                            const SizedBox(width: 5,),
                            	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Sunset',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				'5:34 PM',
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
                          ],
                        ),
                        
                      ],
 
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Divider(
                          color: Colors.grey,
                        ),),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/13.png',
                            scale: 8,),
                            const SizedBox(width: 5,),
                            	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Temp Max',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				'23°C',
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/14.png',
                            scale: 8,),
                            const SizedBox(width: 5,),
                            	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Temp Min',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				'13°C',
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
                          ],
                        ),
                        
                      ],
 
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
