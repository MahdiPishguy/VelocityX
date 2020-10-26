// MIT License
//
// Copyright (c) 2020 Simon Lightfoot
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
import 'package:flutter/widgets.dart' show MediaQueryData, Orientation;

/// Reference:
///   https://developer.android.com/training/multiscreen/screensizes
///
/// Example:
///   MediaQuery.of(context).isTablet
///

extension MediaQueryExtension on MediaQueryData {
  double get swDp => size.shortestSide;

  bool get isPhone => (swDp < 600);

  /// 600dp: a 7” tablet (600x1024 mdpi).
  bool get isSmallTablet => (swDp >= 600);

  /// 720dp: a 10” tablet (720x1280 mdpi, 800x1280 mdpi, etc).
  bool get isLargeTablet => (swDp >= 720);

  bool get isTablet => isSmallTablet || isLargeTablet;

  bool get isLandscape => orientation == Orientation.landscape;

  bool get isPortrait => orientation == Orientation.portrait;
}
