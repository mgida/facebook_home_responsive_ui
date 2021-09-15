import 'package:facebook_home_responsive_ui/logic/options_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'build_more_options_list_view.dart';

class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: BlocBuilder<OptionsCubit, OptionsState>(
        builder: (context, state) {
          final optionsCubit = BlocProvider.of<OptionsCubit>(context);
          return BuildMoreOptionsListView(
            moreOptions: optionsCubit.moreOptions,
          );
        },
      ),
    );
  }
}
