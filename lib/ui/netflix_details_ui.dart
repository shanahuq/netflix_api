import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_api/bloc/netflix_details/bloc/netflix_details_bloc.dart';

class NetflixDetailsUi extends StatefulWidget {
  const NetflixDetailsUi({super.key, required this .id});
final String id;
  @override
  State<NetflixDetailsUi> createState() => _NetflixDetailsUiState();
}

class _NetflixDetailsUiState extends State<NetflixDetailsUi> {
  @override
  void initState () {
    super.initState();
    context.read<NetflixDetailsBloc>().add(FetchNetflixDetailsEvent(id: widget.id));
  }
  Widget build(BuildContext context) {
    return  Scaffold(
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
            padding: EdgeInsets.only(right: 10.w),
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
    );
  }
}