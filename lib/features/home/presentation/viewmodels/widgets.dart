import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/presentation/viewmodels/views/best_seller_listview_item.dart';
import 'package:booky_app/features/splash/presentation/view_models/widegets/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                CustomAppBar(),
                 SizedBox(
                  height: 10,
                ),
                 FeaturedBooksListView(),
                 SizedBox(
                  height: 50,
                ),
                 Text(
                  "Best Seller",
                  style: Styles.texrstyle18,
                ),

              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}

class ListViewItem extends StatefulWidget {
  const ListViewItem({
    super.key,
  });

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(
                20,
              ),
              image: DecorationImage(image: AssetImage(testimg))),
        ));
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          logoimg,
          height: 18,
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_sharp,
              size: 24,
            ))
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: ListViewItem(),
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kdetailspage);
                  },
                ));
          }),
    );
  }
}

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kdetailspage);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      image: DecorationImage(image: AssetImage(testimg))),
                )),
            const SizedBox(
              width: 30,
            ),
            BestSeLLerItemListView(),
          ],
        ),
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerViewItem();
        });
  }
}
class BookDetailsViewbody extends StatelessWidget {
  const BookDetailsViewbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

