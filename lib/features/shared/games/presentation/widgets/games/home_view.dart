import 'package:flutter/material.dart';
import '../widgets.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.all(0),
            title: CustomAppbar(),
          ),
        ),
        SliverFillRemaining(
          child: Center(
            child: Text(
              'Contenido de la Ludoteca',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: SingleChildScrollView(
  //       child: Padding(
  //         padding: const EdgeInsets.all(24),
  //         child: LayoutBuilder(
  //           builder: (context, constraints) {
  //             bool isMobile = constraints.maxWidth < 768;

  //             return Column(
  //               children: [
  //                 if (isMobile)
  //                   _buildEmptyStateContent(context)
  //                 else
  //                   Row(
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     children: [
  //                       Expanded(
  //                         flex: 1,
  //                         child: _buildCuratorDesk(context),
  //                       ),
  //                       const SizedBox(width: 48),
  //                       Expanded(
  //                         flex: 1,
  //                         child: _buildEmptyStateContent(context),
  //                       ),
  //                     ],
  //                   ),
  //                 if (isMobile) const SizedBox(height: 32),
  //               ],
  //             );
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildCuratorDesk(BuildContext context) {
  //   return AspectRatio(
  //     aspectRatio: 1,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: const Color(0xFF111c2d),
  //         borderRadius: BorderRadius.circular(16),
  //         border: Border.all(
  //           color: const Color(0xFF918fa0).withOpacity(0.1),
  //         ),
  //       ),
  //       child: Stack(
  //         children: [
  //           // Background blurred shapes
  //           Positioned(
  //             top: -48,
  //             left: -48,
  //             child: Container(
  //               width: 192,
  //               height: 192,
  //               decoration: BoxDecoration(
  //                 color: const Color(0xFFC3C0FF).withOpacity(0.1),
  //                 shape: BoxShape.circle,
  //               ),
  //               child: BackdropFilter(
  //                 filter: ImageFilter.blur(sigmaX: 48, sigmaY: 48),
  //                 child: Container(),
  //               ),
  //             ),
  //           ),
  //           Positioned(
  //             bottom: -48,
  //             right: -48,
  //             child: Container(
  //               width: 256,
  //               height: 256,
  //               decoration: BoxDecoration(
  //                 color: const Color(0xFFe9c349).withOpacity(0.05),
  //                 shape: BoxShape.circle,
  //               ),
  //               child: BackdropFilter(
  //                 filter: ImageFilter.blur(sigmaX: 48, sigmaY: 48),
  //                 child: Container(),
  //               ),
  //             ),
  //           ),
  //           // Main content (removed empty_desk image)
  //           const SizedBox.shrink(),
  //           // Tag overlay
  //           Positioned(
  //             bottom: 24,
  //             left: 24,
  //             child: Container(
  //               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //               decoration: BoxDecoration(
  //                 color: const Color(0xFF111c2d).withOpacity(0.7),
  //                 borderRadius: BorderRadius.circular(8),
  //                 border: Border.all(
  //                   color: const Color(0xFF918fa0).withOpacity(0.1),
  //                 ),                  
  //               ),
  //               child: Text(
  //                 'Estado: Ludoteca Vacía',
  //                 style: Theme.of(context).textTheme.labelSmall?.copyWith(
  //                   color: const Color(0xFFC7C4D7),
  //                   fontSize: 10,
  //                   letterSpacing: 0.2,
  //                   fontWeight: FontWeight.w500,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildEmptyStateContent(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         'Mi Colección',
  //         style: Theme.of(context).textTheme.labelSmall?.copyWith(
  //           color: const Color(0xFFe9c349),
  //           fontSize: 12,
  //           fontWeight: FontWeight.bold,
  //           letterSpacing: 0.3,
  //         ),
  //       ),
  //       const SizedBox(height: 16),
  //       RichText(
  //         text: TextSpan(
  //           children: [
  //             TextSpan(
  //               text: 'Tu primer ',
  //               style: Theme.of(context).textTheme.displaySmall?.copyWith(
  //                 color: const Color(0xFFd8e3fb),
  //                 fontWeight: FontWeight.w900,
  //                 height: 1.1,
  //               ),
  //             ),
  //             TextSpan(
  //               text: 'Juego',
  //               style: Theme.of(context).textTheme.displaySmall?.copyWith(
  //                 color: const Color(0xFFC3C0FF),
  //                 fontWeight: FontWeight.w900,
  //                 height: 1.1,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       const SizedBox(height: 16),
  //       Text(
  //         'Tu ludoteca digital está lista. Registra tu primer juego de mesa para comenzar a preservar el legado de tu mesa.',
  //         style: Theme.of(context).textTheme.bodyLarge?.copyWith(
  //           color: const Color(0xFFC7C4D7),
  //           height: 1.5,
  //         ),
  //       ),
  //       const SizedBox(height: 32),
  //       // Action Group
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           ElevatedButton.icon(
  //             icon: const Icon(Icons.add_box),
  //             label: Text(
  //               'Añadir Juego',
  //               style: Theme.of(context).textTheme.labelLarge?.copyWith(
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             style: ElevatedButton.styleFrom(
  //               backgroundColor: const Color(0xFFC3C0FF),
  //               foregroundColor: const Color(0xFF1f00a4),
  //               padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(12),
  //               ),
  //               elevation: 8,
  //               shadowColor: const Color(0xFF4338ca).withOpacity(0.3),
  //             ),
  //             onPressed: () {},
  //           ),
  //         ],
  //       ),
  //       const SizedBox(height: 32),
  //       // Archival Footnote
  //       Divider(
  //         color: const Color(0xFF918fa0).withOpacity(0.1),
  //       ),
  //       const SizedBox(height: 16),
  //       Row(
  //         children: [
  //           const Icon(
  //             Icons.auto_awesome,
  //             color: Color(0xFFe9c349),
  //             size: 20,
  //           ),
  //           const SizedBox(width: 12),
  //           Expanded(
  //             child: Text(
  //               '"Un juego de mesa bien conservado cuenta mil historias."',
  //               style: Theme.of(context).textTheme.bodySmall?.copyWith(
  //                 color: const Color(0xFFb5c5df),
  //                 fontStyle: FontStyle.italic,
  //                 fontSize: 12,
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
}
