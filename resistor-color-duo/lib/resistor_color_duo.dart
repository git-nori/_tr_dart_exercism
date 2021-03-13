class ResistorColorDuo {
  final colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];
  int value(List<String> colorsList) => int.parse(colorsList
      .sublist(0, 2)
      .map((e) => colors.indexOf(e).toString())
      .fold<String>('', (previousValue, element) => previousValue + element));
}
