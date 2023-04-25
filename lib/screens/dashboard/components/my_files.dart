import 'package:admin_dashboard/models/MyFiles.dart';
import 'package:admin_dashboard/screens/dashboard/components/file.info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (ctx, index) => FileInfoCard(info: demoMyFiles[index]),
        )
      ],
    );
  }
}
