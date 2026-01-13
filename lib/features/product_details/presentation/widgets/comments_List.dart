import 'package:flutter/material.dart';
import 'package:market/features/product_details/presentation/widgets/user_comment.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index)=>USerComment(),
      separatorBuilder: (context,index)=>Divider(),
      itemCount: 10,
    );
  }
}