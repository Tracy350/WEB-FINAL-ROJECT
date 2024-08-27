import 'dart:core';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:hotel_vendor/theme/colors.dart';

class GuageIndicator extends StatelessWidget {
  final double value;
  const GuageIndicator({super.key, required this.value});

  /// Build method of your widget.
  @override
  Widget build(BuildContext context) {
    return AnimatedRadialGauge(
      /// The animation duration.
      duration: const Duration(seconds: 1),
      curve: Curves.elasticOut,

      /// Define the radius.
      radius: 100,

      /// Gauge value.
      value: value,

      /// Configure your gauge.
      axis: const GaugeAxis(
        /// Provide the [min] and [max] value for the [value] argument.
        min: 0,
        max: 100,

        /// Render the gauge as a 180-degree arc.
        degrees: 180,

        /// Set the background color and axis thickness.
        style: GaugeAxisStyle(
          thickness: 20,
          background: Color(0xFFDFE2EC),
          segmentSpacing: 4,
        ),

        /// Define the progress bar.
        progressBar: GaugeProgressBar.rounded(
          color: AppColors.green1,
        ),

        /// Define axis segments.
        segments: [
          GaugeSegment(
            from: 0,
            to: 33.3,
            color: Color(0xFFD9DEEB),
            cornerRadius: Radius.zero,
          ),
          GaugeSegment(
            from: 33.3,
            to: 66.6,
            color: Color(0xFFD9DEEB),
            cornerRadius: Radius.zero,
          ),
          GaugeSegment(
            from: 66.6,
            to: 100,
            color: Color(0xFFD9DEEB),
            cornerRadius: Radius.zero,
          ),
        ],
      ),

      /// Optionally, define a child widget to show the value as a label.
      builder: (context, child, value) => RadialGaugeLabel(
        value: value,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 46,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
