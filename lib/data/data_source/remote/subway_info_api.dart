abstract interface class SubwayInfoApi<E> {
  Future<E> querySubwayInfo(String station);
}
