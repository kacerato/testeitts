package android.icu.text;

import android.icu.util.Measure;
import android.icu.util.MeasureUnit;
import android.icu.util.ULocale;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MeasureFormat.class
 */
public class MeasureFormat extends UFormat {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MeasureFormat$FormatWidth.class
 */
    public enum FormatWidth {
        NARROW,
        NUMERIC,
        SHORT,
        WIDE
    }

    MeasureFormat() {
        throw new RuntimeException("Stub!");
    }

    public static MeasureFormat getInstance(ULocale locale, FormatWidth formatWidth) {
        throw new RuntimeException("Stub!");
    }

    public static MeasureFormat getInstance(Locale locale, FormatWidth formatWidth) {
        throw new RuntimeException("Stub!");
    }

    public static MeasureFormat getInstance(ULocale locale, FormatWidth formatWidth, NumberFormat format) {
        throw new RuntimeException("Stub!");
    }

    public static MeasureFormat getInstance(Locale locale, FormatWidth formatWidth, NumberFormat format) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(Object obj, StringBuffer toAppendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    public final String formatMeasures(Measure... measures) {
        throw new RuntimeException("Stub!");
    }

    public StringBuilder formatMeasurePerUnit(Measure measure, MeasureUnit perUnit, StringBuilder appendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    public StringBuilder formatMeasures(StringBuilder appendTo, FieldPosition fieldPosition, Measure... measures) {
        throw new RuntimeException("Stub!");
    }

    public final boolean equals(Object other) {
        throw new RuntimeException("Stub!");
    }

    public final int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public FormatWidth getWidth() {
        throw new RuntimeException("Stub!");
    }

    public final ULocale getLocale() {
        throw new RuntimeException("Stub!");
    }

    public NumberFormat getNumberFormat() {
        throw new RuntimeException("Stub!");
    }

    public static MeasureFormat getCurrencyFormat(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static MeasureFormat getCurrencyFormat(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static MeasureFormat getCurrencyFormat() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Measure parseObject(String source, ParsePosition pos) {
        throw new RuntimeException("Stub!");
    }
}
