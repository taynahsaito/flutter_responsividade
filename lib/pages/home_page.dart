import 'package:flutter/material.dart';
import 'package:responsividade_flutter/breakpoints.dart';
import 'package:responsividade_flutter/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsividade_flutter/widgets/app_bar/web_app_bar.dart';
import 'package:responsividade_flutter/widgets/products_section/product_widget.dart';
import 'package:responsividade_flutter/widgets/star_section/star_widget.dart';
import 'package:responsividade_flutter/widgets/top_section/mobile_top_section.dart';
import 'package:responsividade_flutter/widgets/top_section/web_top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth > breakpointMobile
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              ),
        body: SingleChildScrollView(
          // ScrollView para tornar o conteúdo rolável
          child: Column(
            children: [
              constraints.maxWidth > breakpointMobile
                  ? const WebTopSection()
                  : const MobileTopSection(),
              const SizedBox(
                height: 16,
              ),
              const Wrap(
                runSpacing: 20,
                spacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  StarWidget(),
                  StarWidget(),
                  StarWidget(),
                  StarWidget(),
                  StarWidget(),
                ],
              ),
              Wrap(
                runSpacing: 20,
                spacing: 20,
                alignment: WrapAlignment.start,
                children: [
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
