import 'package:facebook_home_responsive_ui/logic/options_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'build_more_options_list_view.dart';
import 'custom_text.dart';

class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: BlocBuilder<OptionsCubit, OptionsState>(
        builder: (context, state) {
          if (state is OptionsLoaded) {
            final options = state.options;
            return BuildMoreOptionsListView(
              moreOptions: options,
            );
          } else if (state is OptionsFailure) {
            return Container(
              child: CustomText(title: '${state.errorMsg}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
