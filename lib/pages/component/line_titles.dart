import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (context, value) => TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '10am';
              case 5:
                return '11am';
              case 8:
                return '12am';
              case 11:
                return '01am';
                case 14:
                return '02am';
                case 17:
                return '03am';
                case 20:
                return '04am';
                case 23:
                return '05am';
                case 26:
                return '06am';
                case 29:
                return '07am';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '0';
              case 3:
                return '20';
              case 5:
                return '40';
                case 7:
                return '60';
                case 9:
                return '80';
                case 11:
                return '100';
                

            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
      );
}