import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:happy_app/presentation/resources/resources.dart';

import '../../components/common_text_button.dart';
import './bloc/friend_module.dart';
import './bloc/friend_presenter.dart';
import './bloc/friend_state.dart';
import '../../core/base_page/base_page.dart';

/// Create at:   31/05/2023
/// Page:        [FriendPage]
/// Module:      [FriendModule]
/// Presenter:   [FriendPresenter]
/// State:       [FriendState]
/// Description:
/// TODO: This is [FriendPage]
@RoutePage()
class FriendPage extends BasePage {
  const FriendPage({Key? key}) : super(key: key);

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends BasePageState<FriendPage, FriendPresenter> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ..._buildHeader(),
              Divider(),
              ..._buildFriendRequest(),
              Divider(),
              ..._buildYouMayKnow(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildHeader() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppTexts.value.friends,
            style: AppTextStyles.s30bold,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: Center(
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              label: SizedBox(
                height: 35,
                child: Center(
                  child: Text(
                    AppTexts.value.suggest,
                    style: AppTextStyles.s14w300.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              label: SizedBox(
                height: 35,
                child: Center(
                  child: Text(
                    AppTexts.value.friends,
                    style: AppTextStyles.s14w300.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];
  }

  List<Widget> _buildYouMayKnow() {
    return [
      Text(
        AppTexts.value.youMayKnow,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      ...List.generate(
        10,
        (index) => SizedBox(
          height: 130,
          width: double.infinity,
          child: Row(
            children: [
              CircleAvatar(
                radius: 45,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cao Nhật Quang',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            AppTexts.value.mutualFriends(8),
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Expanded(
                              child: CommonTextButton(
                                backgroundColor: Colors.blue,
                                onPressed: () {},
                                text: AppTexts.value.addFriend,
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: CommonTextButton(
                                onPressed: () {
                                  //TODO: Handle in future
                                },
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                text: AppTexts.value.remove,
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildFriendRequest() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                AppTexts.value.friendRequest,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              if (presenter.state.friendRequests.length != 0)
                Text(
                  presenter.state.friendRequests.length.toString(),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
            ],
          ),
          Text(
            AppTexts.value.seeAll,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      ...List.generate(
        2,
        (index) => SizedBox(
          height: 130,
          width: double.infinity,
          child: Row(
            children: [
              CircleAvatar(
                radius: 45,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cao Nhật Quang',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '4 ${AppTexts.value.week}',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            AppTexts.value.mutualFriends(5),
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Expanded(
                              child: CommonTextButton(
                                text: AppTexts.value.accept,
                                backgroundColor: Colors.blue,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: CommonTextButton(
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                onPressed: () {},
                                text: AppTexts.value.delete,
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  @override
  void handlerFutureError(Object? error) {
    //TODO: (remove) Example of an overridden method
  }

  @override
  bool get resizeToAvoidBottomInset => true;
}

///==========================================================================///
///=> Behavior of the [FriendPage]
///==========================================================================///
extension _FriendPageBehavior on _FriendPageState {}
