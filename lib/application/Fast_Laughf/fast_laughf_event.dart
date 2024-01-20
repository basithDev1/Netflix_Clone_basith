part of 'fast_laughf_bloc.dart';

@freezed
class FastLaughfEvent with _$FastLaughfEvent {
  const factory FastLaughfEvent.firstevent() = _Firstevent;
  const factory FastLaughfEvent.likedVideoEvent({
    required int index,
  }) = _LikedVideoEvent;
  const factory FastLaughfEvent.dislikedVideoEvent({
    required int index,
  }) = _DislikedVideoEvent;
}
