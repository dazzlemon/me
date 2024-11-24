extension IterableIntersperse<T> on Iterable<T> {
  Iterable<T> intersperse(T t) =>
      // ignore: no_magic_number
      isEmpty ? [] : expand((e) => [e, t]).take(length * 2 - 1);
}
