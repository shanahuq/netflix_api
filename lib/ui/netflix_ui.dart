import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_api/bloc/netflix_list/bloc/netflix_list_bloc.dart';
import 'package:netflix_api/repository/models/netflix_models.dart';
import 'package:netflix_api/ui/netflix_details_ui.dart';

class NetflixUi extends StatefulWidget {
  const NetflixUi({super.key});

  @override
  State<NetflixUi> createState() => _NetflixUiState();
}

class _NetflixUiState extends State<NetflixUi> {
  @override
  void initState() {
    super.initState();
    context.read<NetflixListBloc>().add(FetchNetflixListEvent());
  }

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
      body: SafeArea(
        child: BlocBuilder<NetflixListBloc, NetflixListState>(
          builder: (context, state) {
            if (state is NetflixListBlocLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is NetflixListBlocError) {
              return Center(
                child: Text('Error', style: TextStyle(color: Colors.white)),
              );
            }
            if (state is NetflixlistBlocLoaded) {
              final data = state.data;
              return GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 250,
                  childAspectRatio: 0.45,
                ),
                itemBuilder: (context, index) {
                  final season = data[index];

                  final episode =
                      (season.episodes != null && season.episodes!.isNotEmpty)
                          ? season.episodes!.first
                          : null;

                  final imageUrl =
                      episode
                          ?.interestingMoment
                          ?.image342X192
                          ?.webp
                          ?.value
                          ?.url;

                  final title = episode?.title ?? "No Title";
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (_) => NetflixDetailsUi(id: season.id.toString()
                              ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Colors.black,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              child:
                                  imageUrl != null
                                      ? Image.network(
                                        imageUrl,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )
                                      : Container(color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
