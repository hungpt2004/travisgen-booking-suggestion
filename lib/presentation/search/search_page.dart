import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/presentation/search/widget/section/destination_section.dart';
import 'package:auto_router_pkg/presentation/search/widget/section/predict_price_section.dart';
import 'package:auto_router_pkg/presentation/search/widget/section/title_section.dart';
import 'package:auto_router_pkg/presentation/search/widget/section/type_travel_section.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchView();
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppSize.h24,
            TitleSection(),
            AppSize.h6,
            DestinationSection(),
            AppSize.h8,
            TypeTravelSection(),
            AppSize.h10,
            PredictPriceSection(),
            SizedBox(height: MediaQuery.paddingOf(context).bottom + 100),
          ],
        ),
      ),
    );
  }
}
