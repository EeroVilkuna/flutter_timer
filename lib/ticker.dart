// Creates the ticks in the timer "clock"

class TickMech {
  const TickMech();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
