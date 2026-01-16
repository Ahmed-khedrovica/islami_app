import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_text_styles.dart';
import '../../logic/sebha_cubit.dart';

class SebhaBody extends StatelessWidget {
  const SebhaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SebhaCubit(),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Stack(
          children: [
            Image.asset('assets/images/sebha_body_bg.png'),
            Positioned.fill(
              child: BlocBuilder<SebhaCubit, SebhaState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: (){
                      context.read<SebhaCubit>().incrementCounter();
                    },
                    child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Text(
                              'سبحان الله',
                              style: AppTextStyles.font36WhiteBold
                          ),
                          Text(
                              state.counter.toString(),
                              style: AppTextStyles.font36WhiteBold
                          ),
                        ]
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
