import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/orders_container.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  int currentPage = 1;
  final int totalPages = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            'История заказов',
            style: context.titleLarge.copyWith(
              fontSize: 20,
              color: AppColors.darkgrey,
            ),
          ),
          SizedBox(height: 10),
          OrdersContainer(text: 'ОБРАБОТКА', color: AppColors.orange1),
          SizedBox(height: 15),
          OrdersContainer(text: 'ВЫПОЛНЕН', color: AppColors.darkgreen),
          SizedBox(height: 15),
          OrdersContainer(text: 'ОТМЕНЕН', color: AppColors.red2),
          SizedBox(height: 15),
          OrdersContainer(text: 'ОБРАБОТКА', color: AppColors.orange1),
          SizedBox(height: 15),
          OrdersContainer(text: 'ОБРАБОТКА', color: AppColors.orange1),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: currentPage > 1
                    ? () => setState(() => currentPage--)
                    : null,
                child: Container(
                  width: 57,
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SvgPicture.asset(
                    Assets.icons.tallleft,                    
                  ),
                ),
              ),
              SizedBox(width: 5),      
              ...List.generate(totalPages, (index) {
                final page = index + 1;
                final isSelected = currentPage == page;
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: InkWell(
                    onTap: () => setState(() => currentPage = page),
                    child: Container(
                      width: 57,
                      height: 56,
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.black1 : AppColors.white,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          '$page',
                          style: context.bodyMedium.copyWith(
                            fontSize: 15,
                            color: isSelected ? AppColors.white : AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),      
              InkWell(
                onTap: currentPage < totalPages
                    ? () => setState(() => currentPage++)
                    : null,
                child: Container(
                  width: 57,
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SvgPicture.asset(
                    Assets.icons.tallright,
                    ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
