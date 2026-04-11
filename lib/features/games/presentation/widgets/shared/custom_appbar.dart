import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(            
            children: [
              const Icon(Symbols.bookmark_stacks, size: 28),
              const SizedBox(width: 10,),
              Text(
                'Mi Ludoteca',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),                
              ),  
              const Spacer(),                        
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search), 
              ),                
            ],
          ),
        ),
      ),
    );
  }
}