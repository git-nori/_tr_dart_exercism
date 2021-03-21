class BeerSong {
  List<String> recite(int a, int b) {
    var list =
        List.generate(a, (index) => index + 1).reversed.toList().getRange(0, b);
    var msgList = list.fold<List<String>>(
      [],
      (previousValue, element) {
        var nextMsg = element - 1 == 0
            ? 'Take it down and pass it around, no more bottles of beer on the wall.'
            : 'Take one down and pass it around, ${element - 1} bottles of beer on the wall.';
        return [
          ...previousValue,
          '$element bottles of beer on the wall, $element bottles of beer.',
          nextMsg,
        ];
      },
    );
    if (a >= b) return msgList;
    return [
      ...msgList,
      'No more bottles of beer on the wall, no more bottles of beer.',
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    ];
  }
}
