import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final Widget? pageContent;

  const PageContent(
    {
      Key? key, 
      this.pageContent = const Text('Hola')
    }) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(243, 245, 248, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: SingleChildScrollView(
            child: pageContent,
            controller: scrollController,
          ),
        );
      },
      initialChildSize: 0.65,
      minChildSize: 0.65,
      maxChildSize: 1,
    );
  }
}
