import 'package:flutter/material.dart';
import 'package:flutter/animation.dart'; // Import ScreenUtil
import '../../core/app_export.dart'; // Sesuaikan dengan path yang benar untuk import appTheme
import 'widgets/next_page_item_widget.dart';

class NextPageScreen extends StatelessWidget {
  const NextPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        // Menggunakan SingleChildScrollView sebagai root widget
        physics: NeverScrollableScrollPhysics(), // Tidak dapat di-scroll
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context)
                  .size
                  .height, // Sesuaikan tinggi dengan tinggi layar
              width: double.maxFinite,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: theme.scaffoldBackgroundColor,
                  leading: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgOouiNextLtr,
                        height: 35.v,
                        width: 33.h,
                        margin: EdgeInsets.only(
                            bottom:
                                4.0), // Tambahkan padding di bagian bawah gambar
                      ),
                    ],
                  ),
                ),
                body: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: 950.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.h,
                                    vertical: 130.v,
                                  ),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius: BorderRadius.circular(
                                        100.0), // Ubah radius sesuai keinginan
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 16.h,
                                    ),
                                    decoration:
                                        AppDecoration.outlineIndigo.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: SingleChildScrollView(
                                      // Wrap with SingleChildScrollView
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              width: 337.h,
                                              decoration: AppDecoration
                                                  .outlineBlack9003f, // Jika diperlukan
                                              child: Text(
                                                "\tDikutip dari Kamus Besar Bahasa Indonesia (KBBI) Kemdikbud, secara etimologi, manasik berasal dari bahasa Arab yang berarti tempat yang biasa dikunjungi; tempat ibadah; waktu ibadah; ibadah.\r\n\r\n\tSedangkan manasik haji dalam KBBI artinya adalah hal-hal yang berhubungan dengan ibadah haji, seperti ihram, tawaf, sai, dan wukuf. Arti lainnya adalah peragaan pelaksanaan ibadah haji sesuai dengan rukun-rukunnya (biasanya menggunakan Ka'bah tiruan dan sebagainya).\r\n\r\n\tDilansir dari situs Kemenag Jambi, jemaah calon haji yang mengikuti manasik haji akan dilatih tentang tata cara pelaksanaan ibadah haji, seperti rukun haji, persyaratan, hal wajib, hal yang disunahkan, maupun hal-hal yang dilarang selama pelaksanaan ibadah haji. Latihan ini tak hanya teori, namun dipraktikkan semirip mungkin dengan situasi di Arab Saudi.\r\n\r\n",
                                                maxLines: null,
                                                overflow: TextOverflow
                                                    .visible, // Change overflow to visible
                                                style: theme
                                                    .textTheme.labelLarge!
                                                    .copyWith(
                                                  height: 1.20,
                                                ),
                                                textAlign: TextAlign
                                                    .start, // Set text alignment to start (top)
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 300
                                    .v, // Sesuaikan posisi atas sesuai kebutuhan
                                child: Center(
                                  child: Container(
                                    width: 332.h,
                                    margin: EdgeInsets.only(
                                      left: 50.h,
                                      right: 50.h,
                                    ),
                                    child: Stack(
                                      children: [
                                        // Teks dengan border
                                        Center(
                                          child: Text(
                                            "Definisi",
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize:
                                                  60, // Gunakan ScreenUtil untuk ukuran font
                                              fontWeight: FontWeight
                                                  .w400, // Berikan ketebalan pada teks border
                                              fontFamily:
                                                  'Mochiy Pop One', // Menggunakan font Mochiy Pop One
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..color = Color(0xFF235092)
                                                ..strokeWidth =
                                                    25, // Gunakan ScreenUtil untuk strokeWidth
                                              // Gunakan warna yang Anda tentukan
                                            ),
                                          ),
                                        ),
                                        // Teks utama (berwarna putih)
                                        Center(
                                          child: Text(
                                            "Definisi",
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize:
                                                  60, // Gunakan ScreenUtil untuk ukuran font
                                              fontWeight: FontWeight
                                                  .w600, // Berikan ketebalan pada teks utama
                                              fontFamily:
                                                  'Mochiy Pop One', // Menggunakan font Mochiy Pop One
                                              color: Colors
                                                  .white, // Warna teks utama (putih)
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              _buildColumnOouinextl(context)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnOouinextl(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70.v,
            width: 547.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      SizedBox(
                        height: 70.v,
                        width: 398.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 70.v,
                                width: 281.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.black9003f,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        4,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 191.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgDc0d6c6dc8cd839,
                                          height: 51.v,
                                          width: 86.h,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgE2ef43e4017d2d2,
                                          height: 51.v,
                                          width: 100.h,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 51.v,
                                      child: ListView.separated(
                                        padding: EdgeInsets.only(left: 6.h),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            width: 5.h,
                                          );
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return NextPageItemWidget();
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgE2ef43e4017d2d2,
                        height: 51.v,
                        width: 100.h,
                        margin: EdgeInsets.only(
                          left: 11.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img2032a79b08bfa91,
                        height: 51.v,
                        width: 96.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img1cd82c32b1d0fb3,
                        height: 51.v,
                        width: 86.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 70.v,
                    width: 123.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineBlack9003f1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgDc0d6c6dc8cd839,
                      height: 51.v,
                      width: 86.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            height: 71.v,
            width: 441.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 71.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.black9003f,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            4,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDc0d6c6dc8cd839,
                          height: 51.v,
                          width: 86.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgE2ef43e4017d2d2,
                          height: 51.v,
                          width: 100.h,
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img2032a79b08bfa91,
                          height: 51.v,
                          width: 96.h,
                          margin: EdgeInsets.only(left: 6.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img1cd82c32b1d0fb3,
                          height: 51.v,
                          width: 86.h,
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgDc0d6c6dc8cd839,
                          height: 51.v,
                          width: 86.h,
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgE2ef43e4017d2d2,
                          height: 51.v,
                          width: 100.h,
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img2032a79b08bfa91,
                          height: 51.v,
                          width: 96.h,
                          margin: EdgeInsets.only(left: 6.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img1cd82c32b1d0fb3,
                          height: 51.v,
                          width: 86.h,
                          margin: EdgeInsets.only(left: 5.h),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            height: 70.v,
            width: 696.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 294.h,
                        margin: EdgeInsets.symmetric(vertical: 9.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgDc0d6c6dc8cd839,
                              height: 51.v,
                              width: 86.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgE2ef43e4017d2d2,
                              height: 51.v,
                              width: 100.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img2032a79b08bfa91,
                              height: 51.v,
                              width: 96.h,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70.v,
                        width: 398.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 70.v,
                                width: 274.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.black9003f,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        4,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDc0d6c6dc8cd839,
                                    height: 51.v,
                                    width: 86.h,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgE2ef43e4017d2d2,
                                    height: 51.v,
                                    width: 100.h,
                                    margin: EdgeInsets.only(left: 5.h),
                                  ),
                                  Container(
                                    width: 188.h,
                                    margin: EdgeInsets.only(left: 6.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img2032a79b08bfa91,
                                          height: 51.v,
                                          width: 96.h,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img1cd82c32b1d0fb3,
                                          height: 51.v,
                                          width: 86.h,
                                          margin: EdgeInsets.only(left: 5.h),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 70.v,
                    width: 130.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineBlack9003f1,
                    child: CustomImageView(
                      imagePath: ImageConstant.img1cd82c32b1d0fb3,
                      height: 51.v,
                      width: 86.h,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
