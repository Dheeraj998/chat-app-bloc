import 'package:flutter/material.dart';

class JobList extends StatefulWidget {
  JobList({super.key});

  @override
  State<JobList> createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  List<Job> jobList = [
    Job("02-01-2022", jobId: "LJ20G1"),
    Job("12-06-2022", jobId: "LJ21G2"),
    Job("18-12-2022", jobId: "LJ22G3"),
    Job("24-07-2022", jobId: "LJ23G4"),
    Job("05-03-2022", jobId: "LJ24G5"),
    Job("08-04-2022", jobId: "LJ25G6"),
    Job("16-08-2022", jobId: "LJ26G7"),
    Job("19-12-2022", jobId: "LJ27G8"),
    Job("22-9-2022", jobId: "LJ28G9"),
    Job("30-10-2022", jobId: "LJ29G7"),
    Job("01-11-2022", jobId: "LJ30G6"),
    Job("17-04-2022", jobId: "LJ31G5"),
    Job("12-13-2022", jobId: "LJ32G4"),
    Job("14-23-2022", jobId: "LJ33G3"),
  ];
  ScrollController scrollController = ScrollController();
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 18, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        // toolbarHeight: 5,
        title: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Container(
                width: 7,
                height: 7,
                // color: Colors.transparent,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1573804633927-bfcbcd909acd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                "DUBAI DUTY FREE",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        // actions: [
        //   Center(
        //     child: Padding(
        //       padding: EdgeInsets.only(right: 6),
        //       child: SizedBox(
        //         height: 3,
        //         width: 30,
        //         child: TextField(
        //           showCursor: false,
        //           onChanged: (value) {},
        //           decoration: InputDecoration(
        //               contentPadding: EdgeInsets.only(top: 2, left: 3),
        //               suffixIcon: Padding(
        //                 padding: EdgeInsets.only(right: 2),
        //                 child: Icon(
        //                   Icons.search,
        //                   size: 12,
        //                   color: Color.fromRGBO(80, 153, 184, 1),
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderSide: BorderSide(
        //                   color: Color.fromRGBO(80, 153, 184, 1),
        //                 ),
        //                 borderRadius: BorderRadius.circular(15),
        //               ),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: BorderSide(
        //                   color: Color.fromRGBO(80, 153, 184, 1),
        //                 ),
        //                 borderRadius: BorderRadius.circular(15),
        //               ),
        //               border: OutlineInputBorder(
        //                 borderSide: BorderSide(
        //                   color: Color.fromRGBO(80, 153, 184, 1),
        //                 ),
        //                 borderRadius: BorderRadius.circular(15),
        //               ),
        //               filled: true,
        //               hintStyle: TextStyle(
        //                   color: Color.fromRGBO(62, 142, 176, 1), fontSize: 7),
        //               hintText: "Search",
        //               fillColor: Colors.white70),
        //         ),
        //       ),
        //     ),
        //   ),
        //   Padding(
        //       padding: EdgeInsets.only(right: 6),
        //       child: CircleAvatar(
        //           radius: 10,
        //           backgroundColor: Color.fromRGBO(80, 153, 184, 1),
        //           child: Center(
        //               child: Image.network(
        //             "https://images.unsplash.com/photo-1573804633927-bfcbcd909acd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80",
        //             color: Colors.white,
        //           )))),
        //   Padding(
        //       padding: EdgeInsets.only(right: 6),
        //       child: CircleAvatar(
        //           radius: 10,
        //           backgroundColor: Color.fromRGBO(80, 153, 184, 1),
        //           child: Center(
        //               child: Image.asset(
        //             "assets/tab_view/icons/Car.png",
        //             color: Colors.white,
        //           )))),
        //   Padding(
        //       padding: EdgeInsets.only(right: 6),
        //       child: CircleAvatar(
        //           radius: 10,
        //           backgroundColor: Color.fromRGBO(80, 153, 184, 1),
        //           child: Center(
        //               child: Image.network(
        //             "https://images.unsplash.com/photo-1573804633927-bfcbcd909acd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80",
        //             color: Colors.white,
        //           )))),
        //   Padding(
        //       padding: EdgeInsets.only(right: 6),
        //       child: CircleAvatar(
        //         radius: 10,
        //         backgroundImage: NetworkImage(
        //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0VkXlkzBnGSNIhoVgdu2y7GLtgsnlyfomykLc6WEXfw&s"),
        //       )),
        // ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "JOBS",
                  style: TextStyle(
                      color: Color.fromRGBO(47, 47, 47, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 700,
                  width: double.infinity,
                  child: RawScrollbar(
                    thumbColor: const Color.fromRGBO(89, 178, 228, 1),
                    trackVisibility: true,
                    thumbVisibility: true,
                    thickness: 5,
                    radius: Radius.circular(5),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 0,
                      ),
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: isExpand ? 1.2 : 3.8 / 1,
                            crossAxisCount: 3,
                            mainAxisSpacing: 2,
                            // mainAxisExtent: 150,
                            crossAxisSpacing: 4,
                          ),
                          physics: const ScrollPhysics(
                              parent: BouncingScrollPhysics()),
                          itemCount: jobList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,

                                //     MaterialPageRoute(
                                //         builder: (context) => VisitorDetailsUpcoming(
                                //               visitorId: searchVisitorList[index]
                                //                   .visitorId
                                //                   .toString(),
                                //             )));
                              },
                              child: Container(
                                // height: 4,
                                // width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                // child:
                                //  Padding(
                                //   padding: EdgeInsets.only(
                                //       top: 1.5, right: 2, left: 1),
                                child: Flexible(
                                  child: ExpansionTile(
                                    tilePadding: EdgeInsets.zero,
                                    childrenPadding: EdgeInsets.zero,
                                    onExpansionChanged: (bool isExpanded) {
                                      setState(() {
                                        isExpand = !isExpand;
                                      });
                                    },
                                    // title: Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     Container(
                                    //       height: 7,
                                    //       width: 7,
                                    //       decoration: const BoxDecoration(
                                    //         image: DecorationImage(
                                    //           image: NetworkImage(
                                    //               "https://images.unsplash.com/photo-1573804633927-bfcbcd909acd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80"),
                                    //           fit: BoxFit.cover,
                                    //         ),
                                    //       ),
                                    //     ),
                                    //     Column(
                                    //       mainAxisAlignment:
                                    //           MainAxisAlignment.center,
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.start,
                                    //       children: [
                                    //         Row(
                                    //           children: [
                                    //             Text(
                                    //               "Date",
                                    //               style: TextStyle(
                                    //                   color: Color.fromRGBO(
                                    //                       80, 108, 117, 1),
                                    //                   fontSize: 7,
                                    //                   fontWeight:
                                    //                       FontWeight.w400),
                                    //             ),
                                    //             SizedBox(width: 5),
                                    //             Text(
                                    //               jobList[index].date!,
                                    //               style: TextStyle(
                                    //                   color: Color.fromRGBO(
                                    //                       12, 52, 112, 1),
                                    //                   fontSize: 7.5,
                                    //                   fontWeight:
                                    //                       FontWeight.w700),
                                    //             ),
                                    //           ],
                                    //         ),
                                    //         SizedBox(
                                    //           height: 1,
                                    //         ),
                                    //         Row(
                                    //           mainAxisAlignment:
                                    //               MainAxisAlignment.spaceBetween,
                                    //           children: [
                                    //             Text(
                                    //               "job id",
                                    //               style: TextStyle(
                                    //                   color: Color.fromRGBO(
                                    //                       80, 108, 117, 1),
                                    //                   fontSize: 7,
                                    //                   fontWeight:
                                    //                       FontWeight.w400),
                                    //             ),
                                    //             SizedBox(width: 4),
                                    //             Text(
                                    //               jobList[index].jobId!,
                                    //               style: TextStyle(
                                    //                   color: Color.fromRGBO(
                                    //                       12, 52, 112, 1),
                                    //                   fontSize: 7.5,
                                    //                   fontWeight:
                                    //                       FontWeight.w700),
                                    //             ),
                                    //           ],
                                    //         ),
                                    //       ],
                                    //     ),
                                    //     Padding(
                                    //       padding: EdgeInsets.only(
                                    //         top: 0.5,
                                    //       ),
                                    //       child: Container(
                                    //         height: 4,
                                    //         width: 4,
                                    //         decoration: BoxDecoration(
                                    //           borderRadius:
                                    //               BorderRadius.circular(2),
                                    //           color:
                                    //               Color.fromRGBO(27, 142, 195, 1),
                                    //         ),
                                    //         child: Icon(
                                    //           Icons.add,
                                    //           color: Colors.white,
                                    //           size: 10,
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    title: SizedBox(),
                                    trailing: SizedBox(),
                                    //   children: [
                                    //     Padding(
                                    //       padding: EdgeInsets.only(
                                    //           left: 5, right: 5, top: 1),
                                    //       child: SizedBox(
                                    //         height: 15,
                                    //         child: Column(
                                    //           mainAxisAlignment:
                                    //               MainAxisAlignment.spaceBetween,
                                    //           children: [
                                    //             const Divider(
                                    //               color: Color.fromRGBO(
                                    //                   27, 142, 195, 1),
                                    //               thickness: 1,
                                    //             ),
                                    //             Row(
                                    //               children: [
                                    //                 Text(
                                    //                   'Deira',
                                    //                   style: TextStyle(
                                    //                     fontSize: 9,
                                    //                     color: Color.fromRGBO(
                                    //                         0, 0, 0, 1),
                                    //                   ),
                                    //                 ),
                                    //                 Expanded(child: Container()),
                                    //                 SizedBox(
                                    //                   width: 17,
                                    //                   height: 2.7,
                                    //                   child: TextButton(
                                    //                       style: ButtonStyle(
                                    //                           backgroundColor:
                                    //                               MaterialStateProperty.all<
                                    //                                   Color>(const Color
                                    //                                       .fromRGBO(
                                    //                                   89,
                                    //                                   193,
                                    //                                   87,
                                    //                                   1)),
                                    //                           shape: MaterialStateProperty
                                    //                               .all<
                                    //                                   RoundedRectangleBorder>(
                                    //                             RoundedRectangleBorder(
                                    //                               borderRadius:
                                    //                                   BorderRadius
                                    //                                       .circular(
                                    //                                           3),
                                    //                             ),
                                    //                           )),
                                    //                       onPressed: () {},
                                    //                       child: Text(
                                    //                         'Completed',
                                    //                         style: TextStyle(
                                    //                             fontSize: 7,
                                    //                             color:
                                    //                                 Colors.white),
                                    //                       )),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //             Row(
                                    //               children: [
                                    //                 Text(
                                    //                   'International City',
                                    //                   style: TextStyle(
                                    //                     fontSize: 9,
                                    //                     color: Color.fromRGBO(
                                    //                         0, 0, 0, 1),
                                    //                   ),
                                    //                 ),
                                    //                 Expanded(child: Container()),
                                    //                 SizedBox(
                                    //                   width: 17,
                                    //                   height: 2.7,
                                    //                   child: TextButton(
                                    //                       style: ButtonStyle(
                                    //                           backgroundColor:
                                    //                               MaterialStateProperty.all<
                                    //                                   Color>(const Color
                                    //                                       .fromRGBO(
                                    //                                   27,
                                    //                                   195,
                                    //                                   165,
                                    //                                   1)),
                                    //                           shape: MaterialStateProperty
                                    //                               .all<
                                    //                                   RoundedRectangleBorder>(
                                    //                             RoundedRectangleBorder(
                                    //                               borderRadius:
                                    //                                   BorderRadius
                                    //                                       .circular(
                                    //                                           3),
                                    //                             ),
                                    //                           )),
                                    //                       onPressed: () {},
                                    //                       child: Text(
                                    //                         'Delivered',
                                    //                         style: TextStyle(
                                    //                             fontSize: 7,
                                    //                             color:
                                    //                                 Colors.white),
                                    //                       )),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //             Row(
                                    //               children: [
                                    //                 Text(
                                    //                   'Al Barsha',
                                    //                   style: TextStyle(
                                    //                     fontSize: 9,
                                    //                     color: Color.fromRGBO(
                                    //                         0, 0, 0, 1),
                                    //                   ),
                                    //                 ),
                                    //                 Expanded(child: Container()),
                                    //                 SizedBox(
                                    //                   width: 17,
                                    //                   height: 2.7,
                                    //                   child: TextButton(
                                    //                       style: ButtonStyle(
                                    //                           backgroundColor:
                                    //                               MaterialStateProperty.all<
                                    //                                   Color>(const Color
                                    //                                       .fromRGBO(
                                    //                                   222,
                                    //                                   184,
                                    //                                   51,
                                    //                                   1)),
                                    //                           shape: MaterialStateProperty
                                    //                               .all<
                                    //                                   RoundedRectangleBorder>(
                                    //                             RoundedRectangleBorder(
                                    //                               borderRadius:
                                    //                                   BorderRadius
                                    //                                       .circular(
                                    //                                           3),
                                    //                             ),
                                    //                           )),
                                    //                       onPressed: () {},
                                    //                       child: Text(
                                    //                         'ONGOING',
                                    //                         style: TextStyle(
                                    //                             fontSize: 7,
                                    //                             color:
                                    //                                 Colors.white),
                                    //                       )),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //             Row(
                                    //               children: [
                                    //                 Text(
                                    //                   'Dubai',
                                    //                   style: TextStyle(
                                    //                     fontSize: 9,
                                    //                     color: Color.fromRGBO(
                                    //                         0, 0, 0, 1),
                                    //                   ),
                                    //                 ),
                                    //                 Expanded(child: Container()),
                                    //                 SizedBox(
                                    //                   width: 17,
                                    //                   height: 2.7,
                                    //                   child: TextButton(
                                    //                       style: ButtonStyle(
                                    //                           backgroundColor:
                                    //                               MaterialStateProperty.all<
                                    //                                   Color>(const Color
                                    //                                       .fromRGBO(
                                    //                                   220,
                                    //                                   99,
                                    //                                   82,
                                    //                                   1)),
                                    //                           shape: MaterialStateProperty
                                    //                               .all<
                                    //                                   RoundedRectangleBorder>(
                                    //                             RoundedRectangleBorder(
                                    //                               borderRadius:
                                    //                                   BorderRadius
                                    //                                       .circular(
                                    //                                           3),
                                    //                             ),
                                    //                           )),
                                    //                       onPressed: () {},
                                    //                       child: Text(
                                    //                         'PENDING',
                                    //                         style: TextStyle(
                                    //                             fontSize: 7,
                                    //                             color:
                                    //                                 Colors.white),
                                    //                       )),
                                    //                 ),
                                    //               ],
                                    //             )
                                    //           ],
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ],
                                  ),
                                ),
                              ),
                              // ),
                            );
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Job {
  final String date;
  final String jobId;

  Job(
    this.date, {
    required this.jobId,
  });
}
