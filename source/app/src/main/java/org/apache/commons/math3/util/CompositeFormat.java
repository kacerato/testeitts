package org.apache.commons.math3.util;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;

public class CompositeFormat {
    private CompositeFormat() {
    }

    public static StringBuffer formatDouble(double d10, NumberFormat numberFormat, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            stringBuffer.append('(');
            stringBuffer.append(d10);
            stringBuffer.append(')');
        } else {
            numberFormat.format(d10, stringBuffer, fieldPosition);
        }
        return stringBuffer;
    }

    public static NumberFormat getDefaultNumberFormat() {
        return getDefaultNumberFormat(Locale.getDefault());
    }

    public static void parseAndIgnoreWhitespace(String str, ParsePosition parsePosition) {
        parseNextCharacter(str, parsePosition);
        parsePosition.setIndex(parsePosition.getIndex() - 1);
    }

    public static boolean parseFixedstring(String str, String str2, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = str2.length() + index;
        if (index < str.length() && length <= str.length() && str.substring(index, length).compareTo(str2) == 0) {
            parsePosition.setIndex(length);
            return true;
        }
        parsePosition.setIndex(index);
        parsePosition.setErrorIndex(index);
        return false;
    }

    public static char parseNextCharacter(String str, ParsePosition parsePosition) {
        int i10;
        char charAt;
        int index = parsePosition.getIndex();
        int length = str.length();
        if (index < length) {
            while (true) {
                i10 = index + 1;
                charAt = str.charAt(index);
                if (!Character.isWhitespace(charAt) || i10 >= length) {
                    break;
                }
                index = i10;
            }
            parsePosition.setIndex(i10);
            if (i10 < length) {
                return charAt;
            }
        }
        return (char) 0;
    }

    private static Number parseNumber(String str, double d10, ParsePosition parsePosition) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('(');
        sb2.append(d10);
        sb2.append(')');
        int length = sb2.length();
        int index = parsePosition.getIndex();
        int i10 = length + index;
        if (i10 >= str.length() || str.substring(index, i10).compareTo(sb2.toString()) != 0) {
            return null;
        }
        Double valueOf = Double.valueOf(d10);
        parsePosition.setIndex(i10);
        return valueOf;
    }

    public static NumberFormat getDefaultNumberFormat(Locale locale) {
        NumberFormat numberFormat = NumberFormat.getInstance(locale);
        numberFormat.setMaximumFractionDigits(10);
        return numberFormat;
    }

    public static Number parseNumber(String str, NumberFormat numberFormat, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        Number parse = numberFormat.parse(str, parsePosition);
        if (index == parsePosition.getIndex()) {
            double[] dArr = {Double.NaN, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY};
            for (int i10 = 0; i10 < 3; i10++) {
                parse = parseNumber(str, dArr[i10], parsePosition);
                if (parse != null) {
                    break;
                }
            }
        }
        return parse;
    }
}
