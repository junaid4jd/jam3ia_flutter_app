import 'package:flutter/material.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/res/components/app_text.dart';
import 'package:jam3ia_flutter_app/res/components/round_button.dart';
import 'package:jam3ia_flutter_app/view/home/home_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  String name = '', image = '';
  int state = 1;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      image = '';
      // _nameController.text =  'Miekie Jones';
      // _emailAddressController.text =  'miekiejones24@gmail.com';
      // _addressController.text =  '123 Street Hilton streets, USA';
    });
    super.initState();
  }

  bool isLoading = false;
  bool isLoadingImage = false;

  //final FirebaseAuth auth = FirebaseAuth.instance;
  String? profileImage = '',
      docId,
      userType,
      driverEmail = '',
      driverName = '',
      driverUid = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = MediaQuery.of(context).size.height * 0.2;

    return Scaffold(

      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black
        ),

        backgroundColor: AppColors.darkBlueColor1,
        centerTitle: true,
        leading:   GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_back, color: Colors.black,),
            ),
          ),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: TextStylesData.titleFontSize),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

          Container(
            height: size.height*0.28,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                ClipPath(
                  clipper: BezierClipper(state),
                  child: Container(
                    color :AppColors.darkBlueColor1,
                    height: height,
                  ),
                ),

                Positioned(
                  top: size.height*0.08,
                  child: Center(
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.darkBlueColor1, width: 3)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipOval(
                              child: profileImage == ''
                                  ? Image.network(
                                'https://i.pinimg.com/736x/f8/66/8e/f8668e5328cfb4938903406948383cf6.jpg',
                                width: 120,
                                // color: Colors.grey,
                                height: 120,
                                fit: BoxFit.cover,
                              )
                                  : Image.network(
                                profileImage.toString(),
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: size.width * 0.25,
                          top: size.height * 0.13,
                          child: InkWell(
                            // onTap: () =>    _showPicker(context),
                            child: Container(
                              decoration: BoxDecoration(
                                // color: Colors.black.withOpacity(0.3), shape: BoxShape.circle,
                                // border: Border.all(width: 1, color: Theme.of(context).primaryColor),
                              ),
                              child: Container(
                                // height: 30,
                                // width: 30,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  //border: Border.all(width: 2, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 2),
                                        blurRadius: 1.0)
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(Icons.camera_alt, size: 17,color: AppColors.darkBlueColor,)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),





                  // Container(
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     border: Border.all(color: AppColors.darkBlueColor1, width: 3)
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: ClipOval(
                  //         child:  Image.network(
                  //           'https://i.pinimg.com/736x/f8/66/8e/f8668e5328cfb4938903406948383cf6.jpg',
                  //           width: 100,
                  //           // color: Colors.grey,
                  //           height: 100,
                  //           fit: BoxFit.cover,
                  //         )
                  //
                  //     ),
                  //   ),
                  // ),
                ),

              ],
            ),
          ),
            // SizedBox(
            //   height: size.height * 0.02,
            // ),
            Container(
                width: size.width,
                child: Center(
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            // SizedBox(
            //   height: size.height * 0.02,
            // ),
            Container(
                width: size.width,
                child: Center(
                  child: Text(
                    'johndoe@gmail.com',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                )),
            SizedBox(
              height: size.height * 0.02,
            ),


            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColors.lightGreyColor,
                  border: Border.all(color:AppColors.lightGreyColor, )
              ),
              margin:

              const EdgeInsets.only(left: 20, right: 20, top: 0),
              child: TextFormField(
                controller: _fullNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                onChanged: (value) {
                  // if(EmailValidator.validate(value)) {
                  //   setState(() {
                  //     isValid = true;
                  //   });
                  // } else {
                  //   setState(() {
                  //     isValid = false;
                  //   });
                  // }
                },
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  fillColor: Colors.grey,
                  hintText: 'First Name',
                //  prefixIcon: Icon(Icons.person_outline_sharp,color: AppColors.darkBlueColor,),

                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                  //add prefix icon

                  // errorText: "Error",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:  AppColors.lightGreyColor,
                      width: 1,
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:  AppColors.lightGreyColor,
                      width: 1,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelStyle: const TextStyle(
                    color: AppColors.greyColor,
                    fontSize: TextStylesData.smallFontSize,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),


            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColors.lightGreyColor,
                  border: Border.all(color:AppColors.lightGreyColor, )
              ),
              margin:

              const EdgeInsets.only(left: 20, right: 20, top: 0),
              child: TextFormField(
                controller: _lastNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                onChanged: (value) {
                  // if(EmailValidator.validate(value)) {
                  //   setState(() {
                  //     isValid = true;
                  //   });
                  // } else {
                  //   setState(() {
                  //     isValid = false;
                  //   });
                  // }
                },
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  fillColor: Colors.grey,
                  hintText: 'Last Name',
                 // prefixIcon: Icon(Icons.person_outline_sharp,color: AppColors.darkBlueColor,),

                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                  //add prefix icon

                  // errorText: "Error",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:  AppColors.lightGreyColor,
                      width: 1,
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:  AppColors.lightGreyColor,
                      width: 1,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelStyle: const TextStyle(
                    color: AppColors.greyColor,
                    fontSize: TextStylesData.smallFontSize,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            //
            // Container(
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(5.0),
            //       color: AppColors.lightGreyColor,
            //       border: Border.all(color:AppColors.lightGreyColor, )
            //   ),
            //   margin:
            //
            //   const EdgeInsets.only(left: 20, right: 20, top: 0),
            //   child: TextFormField(
            //     controller: _emailAddressController,
            //     textInputAction: TextInputAction.next,
            //     keyboardType: TextInputType.emailAddress,
            //     style: const TextStyle(
            //       fontSize: 14,
            //       color: Colors.black,
            //     ),
            //     onChanged: (value) {
            //       // if(EmailValidator.validate(value)) {
            //       //   setState(() {
            //       //     isValid = true;
            //       //   });
            //       // } else {
            //       //   setState(() {
            //       //     isValid = false;
            //       //   });
            //       // }
            //     },
            //     decoration: InputDecoration(
            //       focusColor: Colors.white,
            //       fillColor: Colors.grey,
            //       hintText: 'Email',
            //      // prefixIcon: Icon(Icons.email_outlined,color: AppColors.darkBlueColor,),
            //
            //       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            //
            //       //add prefix icon
            //
            //       // errorText: "Error",
            //
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10.0),
            //         borderSide: BorderSide(
            //           color:  AppColors.lightGreyColor,
            //           width: 1,
            //         ),
            //       ),
            //
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10.0),
            //         borderSide: BorderSide(
            //           color:  AppColors.lightGreyColor,
            //           width: 1,
            //         ),
            //       ),
            //
            //       focusedBorder: OutlineInputBorder(
            //         borderSide:
            //         BorderSide(color: AppColors.lightGreyColor, width: 1.0),
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       labelStyle: const TextStyle(
            //         color: AppColors.greyColor,
            //         fontSize: TextStylesData.smallFontSize,
            //         fontFamily: "verdana_regular",
            //         fontWeight: FontWeight.w400,
            //       ),
            //     ),
            //   ),
            // ),
            //
            //
            // SizedBox(
            //   height: size.height * 0.02,
            // ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.lightGreyColor,
              ),

              margin:

              const EdgeInsets.only(left: 20, right: 20, top: 0),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                controller: _passwordController,
                obscureText:  false,
                textInputAction: TextInputAction.done,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                 // prefixIcon: Icon(Icons.lock_outline,color: AppColors.darkBlueColor,),
                  suffixIcon: GestureDetector(
                      onTap: () {
                       // obsecurePassword.value = !obsecurePassword.value;
                      },
                      child: Icon(
                         Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColors.greyColor.withOpacity(0.5),
                      )),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:  AppColors.lightGreyColor,
                      width: 1,
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:  AppColors.lightGreyColor,
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey,
                  //labelText: 'Password',
                  hintText: 'Password',
                  labelStyle: const TextStyle(
                    color: AppColors.greyColor,
                    fontSize: TextStylesData.smallFontSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: RoundButton(
                width: size.width,
                //isLoading: authViewModel.loading,
                round: 30.0,
                color: AppColors.darkBlueColor1,
                title: 'Save',
                onPress: () {
                  // Navigator.pushNamed(context, RoutesName.dashView);
                },
              ),
            ),

          SizedBox(
            height: size.height * 0.02,
          ),




        ],),
      ),
    );

      Scaffold(
      backgroundColor: AppColors.lightGreyColor3,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.35,
              color: AppColors.darkBlueColor,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: TextStylesData.titleFontSize),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              top: size.height * 0.15,
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.72,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Center(
                            child: Stack(children: [
                          ClipOval(
                            child: profileImage == ''
                                ? Image.network(
                                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png',
                                    width: 120,
                                    // color: Colors.grey,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  )
                                : Image.network(
                                    profileImage.toString(),
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                          Positioned(
                            left: size.width * 0.2,
                            top: size.height * 0.1,
                            child: InkWell(
                              // onTap: () =>    _showPicker(context),
                              child: Container(
                                decoration: BoxDecoration(
                                    // color: Colors.black.withOpacity(0.3), shape: BoxShape.circle,
                                    // border: Border.all(width: 1, color: Theme.of(context).primaryColor),
                                    ),
                                child: Container(
                                  // height: 30,
                                  // width: 30,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    //border: Border.all(width: 2, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(0, 2),
                                          blurRadius: 1.0)
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(Icons.camera_alt, size: 17,color: AppColors.darkBlueColor,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ])),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Container(
                            width: size.width,
                            child: Center(
                              child: Text(
                                '$name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        SizedBox(
                          height: size.height * 0.02,
                        ),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.whiteColor,
                              border: Border.all(color:AppColors.lightGreyColor, )
                          ),
                          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                          child: Column(
                            children: [

                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0),


                                    ),
                                    color: AppColors.darkBlueColor,
                                  ),
                                  height: size.height*0.06,

                                  //margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Icon(Icons.person_outline_sharp, color: AppColors.whiteColor,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Personal Information',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: AppColors.whiteColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],)
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: AppColors.lightGreyColor,
                                    border: Border.all(color:AppColors.lightGreyColor, )
                                ),
                                margin:

                                const EdgeInsets.only(left: 10, right: 10, top: 0),
                                child: TextFormField(
                                  controller: _nameController,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  onChanged: (value) {
                                    // if(EmailValidator.validate(value)) {
                                    //   setState(() {
                                    //     isValid = true;
                                    //   });
                                    // } else {
                                    //   setState(() {
                                    //     isValid = false;
                                    //   });
                                    // }
                                  },
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    fillColor: Colors.grey,
                                    hintText: 'First Name',
                                    prefixIcon: Icon(Icons.person_outline_sharp,color: AppColors.darkBlueColor,),

                                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                                    //add prefix icon

                                    // errorText: "Error",

                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color:  AppColors.lightGreyColor,
                                        width: 1,
                                      ),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color:  AppColors.lightGreyColor,
                                        width: 1,
                                      ),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    labelStyle: const TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: TextStylesData.smallFontSize,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),


                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: AppColors.lightGreyColor,
                                    border: Border.all(color:AppColors.lightGreyColor, )
                                ),
                                margin:

                                const EdgeInsets.only(left: 10, right: 10, top: 0),
                                child: TextFormField(
                                  controller: _emailAddressController,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  onChanged: (value) {
                                    // if(EmailValidator.validate(value)) {
                                    //   setState(() {
                                    //     isValid = true;
                                    //   });
                                    // } else {
                                    //   setState(() {
                                    //     isValid = false;
                                    //   });
                                    // }
                                  },
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    fillColor: Colors.grey,
                                    hintText: 'Last Name',
                                    prefixIcon: Icon(Icons.person_outline_sharp,color: AppColors.darkBlueColor,),

                                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                                    //add prefix icon

                                    // errorText: "Error",

                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color:  AppColors.lightGreyColor,
                                        width: 1,
                                      ),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color:  AppColors.lightGreyColor,
                                        width: 1,
                                      ),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: AppColors.lightGreyColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    labelStyle: const TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: TextStylesData.smallFontSize,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),


                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 20, right: 20),
                          child: RoundButton(
                            width: size.width,
                            //isLoading: authViewModel.loading,
                            round: 30.0,
                            color: AppColors.greenColor2,
                            title: 'Update',
                            onPress: () {
                              // Navigator.pushNamed(context, RoutesName.dashView);
                            },
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),

            //   backgroundColor: AppColors.lightGreyColor3,
            //   appBar: AppBar(
            //     elevation: 0,
            //     iconTheme: IconThemeData(color: Colors.black),
            //     backgroundColor: AppColors.whiteColor,
            //     centerTitle: true,
            //     automaticallyImplyLeading: true,
            //     title: const Text(
            //       'Edit Profile',
            //       style: TextStyle(
            //           color: AppColors.darkGreenColor,
            //           fontWeight: FontWeight.bold,
            //           fontSize: TextStylesData.titleFontSize),
            //     ),
            //   ),
            //   body: SingleChildScrollView(
            //     child: Column(
            //       children: [
            //         Center(
            //             child: Stack(children: [
            //           ClipOval(
            //             child: profileImage == ''
            //                 ? Image.network(
            //                     'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png',
            //                     width: 120,
            //                     // color: Colors.grey,
            //                     height: 120,
            //                     fit: BoxFit.cover,
            //                   )
            //                 : Image.network(
            //                     profileImage.toString(),
            //                     width: 120,
            //                     height: 120,
            //                     fit: BoxFit.cover,
            //                   ),
            //           ),
            //           Positioned(
            //             left: size.width * 0.2,
            //             top: size.height * 0.1,
            //             child: InkWell(
            //               // onTap: () =>    _showPicker(context),
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                     // color: Colors.black.withOpacity(0.3), shape: BoxShape.circle,
            //                     // border: Border.all(width: 1, color: Theme.of(context).primaryColor),
            //                     ),
            //                 child: Container(
            //                   // height: 30,
            //                   // width: 30,
            //                   margin: EdgeInsets.all(10),
            //                   decoration: BoxDecoration(
            //                     //border: Border.all(width: 2, color: Colors.white),
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                           color: Colors.black26,
            //                           offset: Offset(0, 4),
            //                           blurRadius: 2.0)
            //                     ],
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: Center(
            //                     child: Padding(
            //                       padding: const EdgeInsets.all(5.0),
            //                       child: Image.asset(
            //                         'assets/images/editProfile.png',
            //                         width: 15,
            //                         height: 15,
            //                         fit: BoxFit.cover,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ])),
            //         SizedBox(
            //           height: size.height * 0.01,
            //         ),
            //         Container(
            //             width: size.width,
            //             child: Center(
            //               child: Text(
            //                 '$name',
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.bold),
            //               ),
            //             )),
            //         SizedBox(
            //           height: size.height * 0.02,
            //         ),
            //         Container(
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.only(
            //                   topRight: Radius.circular(30),
            //                   topLeft: Radius.circular(30))),
            //           child: Column(
            //             children: [
            //               SizedBox(
            //                 height: size.height * 0.03,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: AppColors.lightGreyColor2,
            //                     borderRadius: BorderRadius.circular(10)),
            //                 margin: EdgeInsets.only(left: 16, right: 16, bottom: 0),
            //                 child: TextFormField(
            //                   controller: _nameController,
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     color: Colors.black,
            //                   ),
            //                   onChanged: (value) {
            //                     // setState(() {
            //                     //   userInput.text = value.toString();
            //                     // });
            //                   },
            //                   decoration: InputDecoration(
            //                     //contentPadding: EdgeInsets.only(top: 15,bottom: 15),
            //                     contentPadding:
            //                         EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            //                     focusColor: Colors.white,
            //                     border: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //                     enabledBorder: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //
            //                     focusedBorder: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //                     fillColor: Colors.white,
            //                     hintText: "Full Name",
            //
            //                     //make hint text
            //                     hintStyle: TextStyle(
            //                       color: Colors.grey,
            //                       fontSize: 16,
            //                       fontFamily: "verdana_regular",
            //                       fontWeight: FontWeight.w400,
            //                     ),
            //                     //create lable
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: size.height * 0.02,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: AppColors.lightGreyColor2,
            //                     borderRadius: BorderRadius.circular(10)),
            //                 margin: EdgeInsets.only(left: 16, right: 16, bottom: 0),
            //                 child: TextFormField(
            //                   controller: _emailAddressController,
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     color: Colors.black,
            //                   ),
            //                   onChanged: (value) {
            //                     // setState(() {
            //                     //   userInput.text = value.toString();
            //                     // });
            //                   },
            //                   decoration: InputDecoration(
            //                     //contentPadding: EdgeInsets.only(top: 15,bottom: 15),
            //                     contentPadding:
            //                         EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            //                     focusColor: Colors.white,
            //                     // border: InputBorder.none,
            //                     //add prefix icon
            //
            //                     // errorText: "Error",
            //
            //                     border: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //                     enabledBorder: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //
            //                     focusedBorder: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //                     fillColor: Colors.white,
            //                     hintText: "Email Address",
            //
            //                     //make hint text
            //                     hintStyle: TextStyle(
            //                       color: Colors.grey,
            //                       fontSize: 16,
            //                       fontFamily: "verdana_regular",
            //                       fontWeight: FontWeight.w400,
            //                     ),
            //
            //                     //create lable
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: size.height * 0.02,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: AppColors.lightGreyColor2,
            //                     borderRadius: BorderRadius.circular(10)),
            //                 margin: EdgeInsets.only(left: 16, right: 16, bottom: 0),
            //                 child: TextFormField(
            //                   controller: _addressController,
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     color: Colors.black,
            //                   ),
            //                   onChanged: (value) {
            //                     // setState(() {
            //                     //   userInput.text = value.toString();
            //                     // });
            //                   },
            //                   decoration: InputDecoration(
            //                     //contentPadding: EdgeInsets.only(top: 15,bottom: 15),
            //                     contentPadding:
            //                         EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            //                     focusColor: Colors.white,
            //                     border: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //                     enabledBorder: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //
            //                     focusedBorder: OutlineInputBorder(
            //                       borderSide: BorderSide(
            //                           color: AppColors.purpleColor, width: 1.0),
            //                       borderRadius: BorderRadius.circular(10.0),
            //                     ),
            //                     fillColor: Colors.white,
            //                     hintText: "Address",
            //
            //                     //make hint text
            //                     hintStyle: TextStyle(
            //                       color: Colors.grey,
            //                       fontSize: 16,
            //                       fontFamily: "verdana_regular",
            //                       fontWeight: FontWeight.w400,
            //                     ),
            //
            //                     //create lable
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: size.height * 0.05,
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 20, right: 20),
            //                 child: RoundButton(
            //                   width: size.width,
            //                   //isLoading: authViewModel.loading,
            //                   round: 30.0,
            //                   color: AppColors.orangeColor,
            //                   title: 'Update',
            //                   onPress: () {
            //                     // Navigator.pushNamed(context, RoutesName.dashView);
            //                   },
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: size.height * 0.1,
            //               ),
            //             ],
            //           ),
            //         ),
          ],
        ),
      ),
    );
  }
}


class WaveClipper12 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = new Path();
    path.lineTo(1, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}



class BezierClipper extends CustomClipper<Path>{

  final int state;
  BezierClipper(this.state);

  Path _getInitialClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 363.15;
    path.lineTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling);
    path.cubicTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,23.461000000000002 * _xScaling,363.15099999999995 * _yScaling,71.553 * _xScaling,363.15099999999995 * _yScaling,);
    path.cubicTo(119.645 * _xScaling,363.15099999999995 * _yScaling,142.21699999999998 * _xScaling,300.186 * _yScaling,203.29500000000002 * _xScaling,307.21 * _yScaling,);
    path.cubicTo(264.373 * _xScaling,314.234 * _yScaling,282.666 * _xScaling,333.47299999999996 * _yScaling,338.408 * _xScaling,333.47299999999996 * _yScaling,);
    path.cubicTo(394.15000000000003 * _xScaling,333.47299999999996 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,);
    path.cubicTo(-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,);
    return path;
  }

  Path _getFinalClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 363.15;
    path.lineTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling);
    path.cubicTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,23.461000000000002 * _xScaling,363.15099999999995 * _yScaling,71.553 * _xScaling,363.15099999999995 * _yScaling,);
    path.cubicTo(119.645 * _xScaling,363.15099999999995 * _yScaling,142.21699999999998 * _xScaling,300.186 * _yScaling,203.29500000000002 * _xScaling,307.21 * _yScaling,);
    path.cubicTo(264.373 * _xScaling,314.234 * _yScaling,282.666 * _xScaling,333.47299999999996 * _yScaling,338.408 * _xScaling,333.47299999999996 * _yScaling,);
    path.cubicTo(394.15000000000003 * _xScaling,333.47299999999996 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,);
    path.cubicTo(-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,);
    return path;
    // Path path = Path();
    // final double _xScaling = size.width / 414;
    // final double _yScaling = size.height / 301.69;
    // path.lineTo(-0.003999999999997783 * _xScaling,217.841 * _yScaling);
    // path.cubicTo(-0.003999999999997783 * _xScaling,217.841 * _yScaling,19.14 * _xScaling,265.91999999999996 * _yScaling,67.233 * _xScaling,265.91999999999996 * _yScaling,);
    // path.cubicTo(115.326 * _xScaling,265.91999999999996 * _yScaling,112.752 * _xScaling,234.611 * _yScaling,173.83299999999997 * _xScaling,241.635 * _yScaling,);
    // path.cubicTo(234.914 * _xScaling,248.659 * _yScaling,272.866 * _xScaling,301.691 * _yScaling,328.608 * _xScaling,301.691 * _yScaling,);
    // path.cubicTo(384.34999999999997 * _xScaling,301.691 * _yScaling,413.99600000000004 * _xScaling,201.977 * _yScaling,413.99600000000004 * _xScaling,201.977 * _yScaling,);
    // path.cubicTo(413.99600000000004 * _xScaling,201.977 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,);
    // path.cubicTo(413.99600000000004 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,);
    // path.cubicTo(-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999997783 * _xScaling,217.841 * _yScaling,-0.003999999999997783 * _xScaling,217.841 * _yScaling,);
    // return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

  @override
  Path getClip(Size size) =>  _getInitialClip(size);
}