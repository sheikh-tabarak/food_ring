// ignore_for_file: non_constant_identifier_names, file_names

class ResturantReviews {
  final String ResturantId;
  final int ReviewId;
  final String Name;
  final String Review;
  final double Stars;
  final String TimeStamp;

  const ResturantReviews(
      {required this.ReviewId,
      required this.ResturantId,
      required this.Name,
      required this.Review,
      required this.Stars,
      required this.TimeStamp});
}
