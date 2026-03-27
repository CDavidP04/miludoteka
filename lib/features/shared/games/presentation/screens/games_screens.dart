// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class GamesScreen extends StatefulWidget {
//   const GamesScreen({Key? key}) : super(key: key);

//   @override
//   State<GamesScreen> createState() => _GamesScreenState();
// }

// class _GamesScreenState extends State<GamesScreen> {
//   int _selectedNavIndex = 0;
//   bool _showFabMenu = false;

//   // Color scheme based on Material Design 3
//   final Color primary = const Color(0xFF17684E);
//   final Color secondary = const Color(0xFF994100);
//   final Color tertiary = const Color(0xFF994100);
//   final Color background = const Color(0xFFD7FFF3);
//   final Color surfaceContainer = const Color(0xFFB0F6E3);
//   final Color surfaceContainerHigh = const Color(0xFFA5F1DD);
//   final Color onSurface = const Color(0xFF00362C);
//   final Color onSurfaceVariant = const Color(0xFF2D6558);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: background,
//       floatingActionButton: _buildFloatingActionButton(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       body: SafeArea(
//         bottom: false,
//         child: Stack(
//           children: [
//             // Main content
//             SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Top Navigation Header
//                   _buildTopNavigationHeader(),
                  
//                   SizedBox(height: 24),

//                   // Mobile Search
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 24),
//                     child: _buildSearchBar(),
//                   ),

//                   SizedBox(height: 32),

//                   // Recently Added Section
//                   Padding(
//                     padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Descubre'.toUpperCase(),
//                                   style: TextStyle(
//                                     color: primary,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                     letterSpacing: 2,
//                                   ),
//                                 ),
//                                 SizedBox(height: 8),
//                                 Text(
//                                   'Recién Agregados',
//                                   style: GoogleFonts.plusJakartaSans(
//                                     fontSize: 28,
//                                     fontWeight: FontWeight.w800,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               'Ver todos',
//                               style: TextStyle(
//                                 color: primary,
//                                 fontWeight: FontWeight.bold,
//                                 decoration: TextDecoration.underline,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 24),
//                         _buildRecentlyAddedSection(),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 32),

//                   // Most Played Recently Section
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 24, right: 24, bottom: 16),
//                         child: Row(
//                           children: [
//                             Icon(Icons.history, color: secondary, size: 24),
//                             SizedBox(width: 12),
//                             Text(
//                               'Más jugados recientemente',
//                               style: GoogleFonts.plusJakartaSans(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.w800,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 280,
//                         child: _buildMostPlayedSection(),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: 32),

//                   // Complete Library Section
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 24),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Tu Biblioteca Completa',
//                               style: GoogleFonts.plusJakartaSans(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.w800,
//                               ),
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: Color(0xFF8DE5CF),
//                                 borderRadius: BorderRadius.circular(24),
//                               ),
//                               padding: EdgeInsets.all(4),
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.all(8),
//                                     decoration: BoxDecoration(
//                                       color: primary,
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     child: Icon(
//                                       Icons.grid_view,
//                                       color: Colors.white,
//                                       size: 20,
//                                     ),
//                                   ),
//                                   SizedBox(width: 8),
//                                   Container(
//                                     padding: EdgeInsets.all(8),
//                                     child: Icon(
//                                       Icons.format_list_bulleted,
//                                       color: primary,
//                                       size: 20,
//                                     ),
//                                   ),
//                                   SizedBox(width: 4),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 24),
//                         _buildCompleteLibraryGrid(),
//                       ],
//                     ),
//                   ),

//                   // Bottom padding for navigation bar
//                   SizedBox(height: 120),
//                 ],
//               ),
//             ),

//             // Bottom navigation
//             Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: _buildBottomNavigation(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTopNavigationHeader() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.emerald.shade50.withOpacity(0.7),
//         boxShadow: [
//           BoxShadow(
//             color: onSurface.withOpacity(0.08),
//             blurRadius: 50,
//             offset: Offset(0, 20),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Icon(Icons.menu, color: Colors.emerald.shade900),
//                 ),
//                 SizedBox(width: 12),
//                 Text(
//                   'The Tactile Tabletop',
//                   style: GoogleFonts.plusJakartaSans(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w800,
//                     color: Colors.emerald.shade900,
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: 40,
//               height: 40,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(color: secondary, width: 2),
//                 image: DecorationImage(
//                   image: NetworkImage(
//                     'https://lh3.googleusercontent.com/aida-public/AB6AXuD7FY25xWEa-x_zgPh-0md_aCw4_zgLBwKoiKaX2IDOUxbStabdTlkZy7FbFFAkSG5QPMUNxCDOPjSiJE2D88xO2Aa4y_P8f5Q8Bl9gBYdKVi9mYMh_EsMBumDR1kTwY-Onmi4PmKz7GTTbpKuyoIcES5RT3Y8GK7DM2iBKmfXvrv8C0TnKu-acWhtlpI_U_lkNLntu9U6u0urMqCVVYbGjIqTVPCAhudjy33YJIYZn3AjqLEQW38FEBgBsDXnkAXTRd-E5dLGN3RpE',
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchBar() {
//     return Container(
//       decoration: BoxDecoration(
//         color: surfaceContainerHigh,
//         borderRadius: BorderRadius.circular(24),
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//       child: Row(
//         children: [
//           Icon(Icons.search, color: onSurfaceVariant),
//           SizedBox(width: 12),
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Busca en tu colección...',
//                 border: InputBorder.none,
//                 hintStyle: TextStyle(color: onSurfaceVariant),
//               ),
//             ),
//           ),
//           Icon(Icons.tune, color: primary),
//         ],
//       ),
//     );
//   }

//   Widget _buildRecentlyAddedSection() {
//     return Column(
//       children: [
//         // Large Featured Card
//         Container(
//           height: 300,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             boxShadow: [BoxShadow(blurRadius: 24, color: Colors.black12)],
//             image: DecorationImage(
//               image: NetworkImage(
//                 'https://lh3.googleusercontent.com/aida-public/AB6AXuAYfe9-FjonYXsBgZFqPqOy6KDOZ9h_snHfQZdE-bhPt0qQptpHQPo5pgW9kLW4QmqFXf0xA6GVDh33vmGO2559geFRc6zUKLYv3It7Jus9S1zHOPC-iFV3t70bbcL4AyucVrDZXEY_y8kkfMRTitX0ZuI4JXXJ11aaLKToAfas1zhw4L9ndklePGQA7tyfmAJy935CeyhT_BE7SRW4zZkmIuaXux00PSCTyA05An0CvGBCGK0txS1m5yqDUQBJrxljeDxE2u_6o0oD',
//               ),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Stack(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [Colors.transparent, Colors.black87],
//                   ),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//               ),
//               Positioned(
//                 left: 24,
//                 right: 24,
//                 bottom: 24,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                           decoration: BoxDecoration(
//                             color: secondary,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Text(
//                             'Estrategia',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 10,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 1,
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 8),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                           decoration: BoxDecoration(
//                             color: Colors.white24,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Text(
//                             'Expertos',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 10,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 1,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 12),
//                     Text(
//                       'Crónicas de Etheria',
//                       style: GoogleFonts.plusJakartaSans(
//                         fontSize: 32,
//                         fontWeight: FontWeight.w800,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 12),
//                     Text(
//                       'La expansión más esperada del año ha llegado a tu mesa. Prepárate para conquistar el reino.',
//                       style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 14,
//                       ),
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(height: 16),
//                     ElevatedButton.icon(
//                       onPressed: () {},
//                       icon: Icon(Icons.visibility),
//                       label: Text('Detalles del Juego'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: primary,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: 16),
//         // Secondary cards
//         _buildGameCard(
//           image:
//               'https://lh3.googleusercontent.com/aida-public/AB6AXuAzqfYwDeGAchaOlCMb72rufHdLhcnwAtiMsAoKKW_EGGddZ8w-UDd75b7IIssNbuo-AFGOzKKaWDDJACm2GBtTs47twr_SReRHa6o3exSOGfSgZJzGvAnEBzI4zRcmQD_EECKifj5Wu93p3-saubCAWLiJZ0_OLciLL8rhlpnU8Opm180X_vTZ-tA0o-pBbJ1VwA3Ye2rOQz_QtdXW5t23V1GA3EGKYEJvK2ekD-lNSZc4q62OeJDjCh7uSDnrP49DOBEPBXRVCGT4',
//           category: 'Cartas',
//           title: 'Mazo de Hechiceros',
//           subtitle: '2-4 Jugadores • 30 min',
//         ),
//         SizedBox(height: 12),
//         _buildGameCard(
//           image:
//               'https://lh3.googleusercontent.com/aida-public/AB6AXuDKbprN0E6RXtwKfr-D4sGkJniJtdDgxSumwcjEo5Brc6OSoOZdCCLszHaPOAkaM4z8UnVf-9OFmAMv4C4HGKaaYObL5faygyh2RdMH2TGPvdOXBP-3Dpdb64qx1ZC8aBJeWyqgllqmwV7pRiXoPQ8TQcYMlF4rbCVGYtguX9czsRMoYk8dLEuGvSAl08GQsRibuYd9MzCd5nuKIcbHKheV3U-lmjeSGZWlIZnkYGhfAhqTXVxOVZ4TtyKivT0IcRLY4Ylfrix7X42z',
//           category: 'Abstracto',
//           title: 'Lógica Pura',
//           subtitle: '1-2 Jugadores • 15 min',
//         ),
//       ],
//     );
//   }

//   Widget _buildGameCard({
//     required String image,
//     required String category,
//     required String title,
//     required String subtitle,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: surfaceContainer,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black08)],
//       ),
//       padding: EdgeInsets.all(16),
//       child: Row(
//         children: [
//           Container(
//             width: 80,
//             height: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               image: DecorationImage(
//                 image: NetworkImage(image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   category.toUpperCase(),
//                   style: TextStyle(
//                     color: secondary,
//                     fontSize: 10,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 1,
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   title,
//                   style: GoogleFonts.plusJakartaSans(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   subtitle,
//                   style: TextStyle(
//                     color: onSurfaceVariant,
//                     fontSize: 12,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: [
//                     Text(
//                       'Gestionar',
//                       style: TextStyle(
//                         color: primary,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                       ),
//                     ),
//                     Icon(Icons.arrow_forward,
//                         color: primary, size: 16),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMostPlayedSection() {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       padding: EdgeInsets.symmetric(horizontal: 24),
//       child: Row(
//         children: [
//           _buildPlayedCard(
//             'Imperio de Arena',
//             'Eurogame',
//             3,
//             8,
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuBUOy8pMjPmw8chF5DPBSxD62l0MZ8rebHPgwae0VpNOyG8henaHgslZFsMeI-3afW-YeWPaVQT1EKb9PR2Uec9GnXQ3fHCbj6eTN9UawL4Z5DD2NPsCj0oPXqPm9wPehzlSa4Wct5JvxFcE79gaAM_lICdhueS9PikeCJK2YKVKuxpzYJlySo59_GsraVRdxsiSRx2SRRv7kKNHC2XylLXlelCUr-nI26CA3hrmIUerUdb6iyQ6QmPjdKDWW6SeePQRp23gBTiQCg6',
//           ),
//           SizedBox(width: 24),
//           _buildPlayedCard(
//             'Villa Alegre',
//             'Familiar',
//             2,
//             5,
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuBT5OiKgg-HhJakW9lS6pF26C1UI0yLuJBrjj8yPR1WPVVK9CrfKFO-r-Dq7FlA-cP2Ebi9CZVFXeI_gfEPEcCwi6DXSKuwGJwBBhn4l-DML-uZvK9IDDGHE9tkOcEN5VzuRc8oJ8hvTC34QRScj7kpBO0q0c8k-wcf_VKBE0idFEZmoIae6erknTKy_SUtk4jl4Hdl8Gc7WylNTSQiKKpx0bkoUhd4M136tPegO6hVtXpum9xbOQiEzNc26amcboIVSQAzvkJdB9fU',
//           ),
//           SizedBox(width: 24),
//           _buildPlayedCard(
//             'Dados Galácticos',
//             'Party',
//             1,
//             3,
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuAA38Kdpo2uAhODLmJsD11xoIQJJTWpKAQGLHLzBH3RY8OgRP0Fr9IJxoAt0ODGpea5X8vsD23VRPTKiKrvYQkaNfqI16WnYBIJgOzJewNBCbjyYbQsKWfdUPG8PMPSRVzKbFKSiP-cPgfg-4r7n6L4u4-zPe3EMqdqbxzS6mm2ewxpbXwEshtFWeQ6ylNCpzssGa12dPIdBE497gMD45ARIcm8UifH1ydBHPPvfBKeUiBqIqB_tPM8GxSjwCydJdDNHFrFXhMidc4M',
//           ),
//           SizedBox(width: 24),
//           _buildPlayedCard(
//             'Relojería Ancestral',
//             'Cooperativo',
//             2,
//             2,
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuBqlHfKIZ3lLpMerc5BnrNxT2d7LpxmD7n9p58DXdxDc9u5WqxiAAyE8WOfkXE7HKaco30pfpDGBhZ8_N4x94xwN7c4_9ADOexYvULj4ppug0ISZCKzeuAESZInoRLvnoIryaEQtD4RYRgRkez2vSVAiFZstacqDpBCmPx_I7SCwo2TjU9eb84ci6hxkzaUmBDtAySFxfmbmYBfEblIP8Sp2EHPvdBjCxTHj1je4Svd-s-x3DcuAKv47d7RH_AfmtUdv_iH3yxueavC',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPlayedCard(
//     String title,
//     String category,
//     int stars,
//     int plays,
//     String image,
//   ) {
//     return Container(
//       width: 240,
//       decoration: BoxDecoration(
//         color: Color(0xFFBDFEEC),
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black08)],
//       ),
//       padding: EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 120,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               image: DecorationImage(
//                 image: NetworkImage(image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: secondary.withOpacity(0.9),
//                       borderRadius: BorderRadius.circular(12),
//                       backdropFilter: null,
//                     ),
//                     child: Text(
//                       '$plays Partidas',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 9,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 12),
//           Text(
//             title,
//             style: GoogleFonts.plusJakartaSans(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 category,
//                 style: TextStyle(
//                   color: onSurfaceVariant,
//                   fontSize: 12,
//                 ),
//               ),
//               Row(
//                 children: List.generate(
//                   stars,
//                   (index) => Icon(Icons.star, color: secondary, size: 14),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCompleteLibraryGrid() {
//     final games = [
//       ('Odisea Estelar', 'Temático',
//           'https://lh3.googleusercontent.com/aida-public/AB6AXuCgeG-BKu4b0H8E7XvcyMpIqY8mCj657grsYh-Fth7foxynLY3sbKc2YXkBsrzhkx75O5kDqeyVtM7q9REOJlbdpJFDgSP2NLcaRjwphMiw0U0JthB6AlsSZdQrtILAqZc1ZBIz0wSGikq1oRhG3ejs8v_wuBakOHf3P-nBTllYmv3_fJIlNQkmXs5LsvJcChn0xy6gP1ylVVOxmwNA5DMc_0pZMYCb-DwR9Jc9lxLVXMdZKeFqlOb0leLeGaDsfVKuDSh2MnetShER',
//           true),
//       ('Jardines Zen', 'Abstracto',
//           'https://lh3.googleusercontent.com/aida-public/AB6AXuDoPBa05ZxLCO4oP6xl_KOd9Eti5Mf3Cfb_Tx_cICOGzHccRXBWEXQtaz5-DMD6w9qiWNaBDttZwPq3EqI1hG3CDEmaEd2FbCf3sIL_005QuUwGaV8ioOcaKqVUvEEihN268BK40GJS0IO8PBGXfa64RpWBeTRl1oTEFD55NeMEqPhD9ZG11lDZ6q-fjO1SiTrUvAhaWXx1qiPCwkdyfiIJL520A5gI_G5Ctows02M1iQD2cXc2GNFKauJRh1IIiZLM8qphSSbrYnN8',
//           false),
//       ('Callejón 221B', 'Misterio',
//           'https://lh3.googleusercontent.com/aida-public/AB6AXuBfWarlsZ27MYTMMO9V-SP6DtCYesL0gRt9Itwj52zE3SdQo79Q68kkba43pNh3qtlxrPrYXhdgqmSMySlRnkQ5VvaVl6QL5H7OQD8tbr4w9FGGHT42Kx93lefC_0GrOE7UVMwr4Tfbav-6Q64FWnzbQ3pbGL3a2jZ6gMX9GCfZ1UW1flrc-Q8KrfNE0y6CkdmvfTvoxdsQD2Qqplf-C-MRzjKpSf5XsHXFRm_4a39vS7xByBtUIuM0gI9B1fKSESWq5GY22dee2FFj',
//           false),
//       ('Bosque Encantado', 'Aventura',
//           'https://lh3.googleusercontent.com/aida-public/AB6AXuD5s3mkxv8GrI7Tm4WvG--rOPW_7r8ojhUTRxjLQd1aHadvzC_CsVhXafzKVx3fwcrsZQOwDVWZbsNkWNzORnqPaTAb3-qrFoYb-EVVyPf18GsFnGHrRoFp9IgC2Sn24CIYeZDXoitCp4uUtP_31ZPd1tL4xDTAENi_SNxNr_PPrBR0ROL8_8D8pb-c1pEW09L-2z3j5yloO1cVBx04r38cYAO2yVNlO9HE2cHcn6E1Kaa4FcE-MdoN9FFc5IGdXlVxVA24fLzJ_ygz',
//           true),
//       ('Engranajes', 'Estrategia',
//           'https://lh3.googleusercontent.com/aida-public/AB6AXuA9QwkdExDeaGZyZcgALM1zq79Sf3Dbwo1TDMqgOzCOb52pFlB6p5B8Ov13YQ6U-9QWAwXKtbJnhmPc4H1F3OPg1yQtpLhhurTbkoVFRmUfSQ_ociWNiU0aFwy4yFCsV2t9FEVMTTOpX0R6_DmcCzQkdTdwF268Y0ZvTZkRVLU0Sibr7RSMykOYppO7GPR2QGFVPKgWMxow92cVdRiMx4AY2D620RKuo8fO5teDnOiSjvFwvT2CBpjtHD6Il7m1vBk_u6DxZq07vXn1',
//           false),
//     ];

//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.65,
//         mainAxisSpacing: 16,
//         crossAxisSpacing: 16,
//       ),
//       itemCount: games.length,
//       itemBuilder: (context, index) {
//         final (title, category, image, isFavorite) = games[index];
//         return _buildLibraryCard(title, category, image, isFavorite);
//       },
//     );
//   }

//   Widget _buildLibraryCard(
//     String title,
//     String category,
//     String image,
//     bool isFavorite,
//   ) {
//     return Container(
//       decoration: BoxDecoration(
//         color: surfaceContainer,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black08)],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 160,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(16),
//                 topRight: Radius.circular(16),
//               ),
//               image: DecorationImage(
//                 image: NetworkImage(image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.all(4),
//                     decoration: BoxDecoration(
//                       color: isFavorite ? Colors.white : Colors.white24,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.favorite,
//                       color: isFavorite ? secondary : Colors.white,
//                       size: 16,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   category.toUpperCase(),
//                   style: TextStyle(
//                     color: Color(0xFF005B43),
//                     fontSize: 9,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 1,
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   title,
//                   style: GoogleFonts.plusJakartaSans(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFloatingActionButton() {
//     return Padding(
//       padding: EdgeInsets.only(right: 16, bottom: 100),
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             _showFabMenu = !_showFabMenu;
//           });
//         },
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             if (_showFabMenu)
//               Column(
//                 children: [
//                   _buildFabMenuButton('4 juegos'),
//                   SizedBox(height: 8),
//                   _buildFabMenuButton('3 juegos'),
//                   SizedBox(height: 8),
//                   _buildFabMenuButton('2 juegos'),
//                   SizedBox(height: 16),
//                 ],
//               ),
//             Container(
//               width: 64,
//               height: 64,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [primary, Color(0xFF005B43)],
//                 ),
//                 shape: BoxShape.circle,
//                 boxShadow: [
//                   BoxShadow(
//                     color: primary.withOpacity(0.4),
//                     blurRadius: 30,
//                     offset: Offset(0, 10),
//                   ),
//                 ],
//               ),
//               child: Icon(Icons.casino, color: Colors.white, size: 32),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFabMenuButton(String text) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: Color(0xFF9AECD7),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black12)],
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             text,
//             style: TextStyle(
//               color: primary,
//               fontWeight: FontWeight.bold,
//               fontSize: 12,
//             ),
//           ),
//           SizedBox(width: 8),
//           Icon(Icons.casino, color: primary, size: 16),
//         ],
//       ),
//     );
//   }

//   Widget _buildBottomNavigation() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.emerald.shade50.withOpacity(0.8),
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(48),
//           topRight: Radius.circular(48),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: onSurface.withOpacity(0.06),
//             blurRadius: 40,
//             offset: Offset(0, -10),
//           ),
//         ],
//       ),
//       child: SafeArea(
//         top: false,
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               _buildNavItem(Icons.grid_view, 'Library', 0),
//               _buildNavItem(Icons.history_edu, 'Plays', 1),
//               _buildNavItem(Icons.favorite, 'Wishlist', 2),
//               _buildNavItem(Icons.person, 'Profile', 3),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNavItem(IconData icon, String label, int index) {
//     final isSelected = _selectedNavIndex == index;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedNavIndex = index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         decoration: isSelected
//             ? BoxDecoration(
//                 color: Color(0xFFFF8C42),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0xFFFF8C42).withOpacity(0.3),
//                     blurRadius: 12,
//                   ),
//                 ],
//               )
//             : null,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               icon,
//               color: isSelected ? Colors.white : Colors.emerald.shade800,
//               size: 24,
//             ),
//             SizedBox(height: 4),
//             Text(
//               label.toUpperCase(),
//               style: TextStyle(
//                 color: isSelected ? Colors.white : Colors.emerald.shade800,
//                 fontSize: 10,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 0.5,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
