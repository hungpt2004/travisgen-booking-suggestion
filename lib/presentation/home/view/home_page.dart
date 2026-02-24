import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/data/model/user.dart';
import 'package:auto_router_pkg/presentation/home/widgets/home_appbar.dart';
import 'package:auto_router_pkg/presentation/home/widgets/plan_card.dart';
import 'package:auto_router_pkg/presentation/home/widgets/section/feature_section.dart';
import 'package:auto_router_pkg/presentation/home/widgets/section/suggest_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final user = User(id: 1, name: 'Nam Nguyen', email: 'nam.nguyen@example.com', isOnline: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: HomeAppbar(user: user),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSize.h2,
            PlanCard(),
            AppSize.h4,
            FeatureSection(),
            AppSize.h4,
            SuggestPlanSection(),
            SizedBox(height: MediaQuery.paddingOf(context).bottom + 100.h),
          ],
        ),
      ),
    );
  }
}
