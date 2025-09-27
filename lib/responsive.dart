class Responsive {
  final double ScreenWidth;
  final double ScreenHeight;
  Responsive(this.ScreenHeight, this.ScreenWidth);
  double percentWidth(double percent) {
    double Widthpercen = percent / 414;
    return ScreenWidth * Widthpercen;
  }

  double percentHight(double percent) {
    double perce = percent / 896;
    return ScreenHeight * perce;
  }
}
