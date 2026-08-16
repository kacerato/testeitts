package android.icu.text;

import android.icu.util.ULocale;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.AttributedCharacterIterator;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/CompactDecimalFormat.class
 */
public class CompactDecimalFormat extends DecimalFormat {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/CompactDecimalFormat$CompactStyle.class
 */
    public enum CompactStyle {
        LONG,
        SHORT
    }

    CompactDecimalFormat() {
        throw new RuntimeException("Stub!");
    }

    public static CompactDecimalFormat getInstance(ULocale locale, CompactStyle style) {
        throw new RuntimeException("Stub!");
    }

    public static CompactDecimalFormat getInstance(Locale locale, CompactStyle style) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(double number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AttributedCharacterIterator formatToCharacterIterator(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(long number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(BigInteger number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(BigDecimal number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(android.icu.math.BigDecimal number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Number parse(String text, ParsePosition parsePosition) {
        throw new RuntimeException("Stub!");
    }
}
