import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlPageDiscover extends StatefulWidget {
  const BlPageDiscover({Key? key}) : super(key: key);

  @override
  State<BlPageDiscover> createState() => _BlPageDiscoverState();
}

class _BlPageDiscoverState extends State<BlPageDiscover> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BlSorterRow extends StatefulWidget {
  final List<String> tagList;
  final int selected;
  final ValueChanged<int> onSelected;
  const BlSorterRow({
    Key? key,
    required this.tagList,
    this.selected = 1,
    required this.onSelected
  }) : super(key: key);

  @override
  State<BlSorterRow> createState() => _BlSorterRowState();
}

class _BlSorterRowState extends State<BlSorterRow> {
  int _selected = 1;
  final List<bool> _selectStatus = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selected = widget.selected;
    for (int index = 1; index <= widget.tagList.length; index++) {
      _selectStatus.add(widget.selected == index ? true : false);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<BlSorterItem> sortList = [];
    int count = 0;
    for (String tag in widget.tagList) {
      count += 1;
      sortList.add(BlSorterItem(
        tag: tag,
        selected: count == _selected,
        index: count,
        onSelect: (index) {
          _selected = index;
          _selectStatus.fillRange(0, _selectStatus.length, false);
          setState(() {
            _selectStatus[index - 1] = false;
          });
          widget.onSelected(_selected);
        }
      ));
    }
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.r),
      child: Row(children: sortList),
    );
  }
}


class BlSorterItem extends StatelessWidget {
  final String tag;
  final bool selected;
  final int index;
  final ValueChanged<int> onSelect;

  const BlSorterItem({
    Key? key,
    required this.tag,
    required this.selected,
    required this.index,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(index);
      },
      child: Container(
        margin: EdgeInsets.all(6.r),
        child: Column(
          children: [
            Text(tag,
              style: selected ? TextStyle(
                fontSize: 17.sp,
                color: const Color(0xFF111111)
              ) : TextStyle(
                fontSize: 15.sp,
                color: const Color(0xFF9B9AA2)
              ),
            ),
            selected ? Container(
              width: 16.w,
              height: 1.6.h,
              color: const Color(0xFF1ABFD2),
            ) : Container()
          ],
        ),
      ),
    );
  }
}