import 'package:flutter/material.dart';

class PaginationWidget extends StatefulWidget {
  final int totalPages;
  final Function(int) onPageChanged;

  const PaginationWidget({
    Key? key,
    required this.totalPages,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  _PaginationWidgetState createState() => _PaginationWidgetState();
}

class _PaginationWidgetState extends State<PaginationWidget> {
  int currentPage = 1;

  void _goToPage(int page) {
    if (page > 0 && page <= widget.totalPages) {
      setState(() {
        currentPage = page;
      });
      widget.onPageChanged(currentPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pageButtons = [];

    // Thêm nút trước
    if (currentPage > 1) {
      pageButtons.add(buttonPagi(
        '<',
        () {
          _goToPage(currentPage - 1);
        },
      ));
    }

    // Thêm các số trang
    for (int i = 1; i <= widget.totalPages; i++) {
      if (i == 1 ||
          i == widget.totalPages ||
          (i >= currentPage - 1 && i <= currentPage + 1)) {
        pageButtons.add(
          buttonPagi(i.toString(), () {
            _goToPage(i);
          }, currentSelected: i == currentPage),
        );
      } else if (i == currentPage - 2 || i == currentPage + 2) {
        pageButtons.add(TextButton(
          onPressed: null,
          child: Text('...'),
        ));
      }
    }

    // Thêm nút sau
    if (currentPage < widget.totalPages) {
      pageButtons.add(
        buttonPagi(">", () {
          _goToPage(currentPage + 1);
        }),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: pageButtons,
    );
  }

  Widget buttonPagi(String text, Function ontap,
      {bool currentSelected = false}) {
    return GestureDetector(
      onTap: () {
        ontap.call();
      },
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: currentSelected ? Colors.pink : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: Colors.grey), // Thêm border nếu cần
        ),
        child: TextButton(
          onPressed: () => ontap.call(),
          child: Text(
            text,
            style: TextStyle(
              color:
                  currentSelected ? Colors.white : Colors.black, // Tô màu chữ
            ),
          ),
        ),
      ),
    );
  }
}
