import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetflixUi extends StatefulWidget {
  const NetflixUi({super.key});

  @override
  State<NetflixUi> createState() => _NetflixUiState();
}

class _NetflixUiState extends State<NetflixUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          'NETFLIX',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 21.sp,
            color: Colors.red,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 10.w),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(child: Column(
        children: [
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 20,
    mainAxisExtent: 20,
    childAspectRatio: 0.45,
    ),
   itemBuilder: (context,index) {
    final selectedMovies = movie[index];
   }
   )
        ],
      )
      ),
    );
  }
}
