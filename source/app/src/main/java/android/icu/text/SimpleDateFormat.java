package android.icu.text;

import android.icu.text.DateFormat;
import android.icu.util.Calendar;
import android.icu.util.ULocale;
import java.text.AttributedCharacterIterator;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/SimpleDateFormat.class
 */
public class SimpleDateFormat extends DateFormat {
    public SimpleDateFormat() {
        throw new RuntimeException("Stub!");
    }

    public SimpleDateFormat(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public SimpleDateFormat(String pattern, Locale loc) {
        throw new RuntimeException("Stub!");
    }

    public SimpleDateFormat(String pattern, ULocale loc) {
        throw new RuntimeException("Stub!");
    }

    public SimpleDateFormat(String pattern, String override, ULocale loc) {
        throw new RuntimeException("Stub!");
    }

    public SimpleDateFormat(String pattern, DateFormatSymbols formatData) {
        throw new RuntimeException("Stub!");
    }

    public void set2DigitYearStart(Date startDate) {
        throw new RuntimeException("Stub!");
    }

    public Date get2DigitYearStart() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setContext(DisplayContext context) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(Calendar cal, StringBuffer toAppendTo, FieldPosition pos) {
        throw new RuntimeException("Stub!");
    }

    protected DateFormat.Field patternCharToDateFormatField(char ch2) {
        throw new RuntimeException("Stub!");
    }

    protected String subFormat(char ch2, int count, int beginOffset, FieldPosition pos, DateFormatSymbols fmtData, Calendar cal) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setNumberFormat(NumberFormat newNumberFormat) {
        throw new RuntimeException("Stub!");
    }

    protected String zeroPaddingNumber(long value, int minDigits, int maxDigits) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void parse(String text, Calendar cal, ParsePosition parsePos) {
        throw new RuntimeException("Stub!");
    }

    protected int matchString(String text, int start, int field, String[] data, Calendar cal) {
        throw new RuntimeException("Stub!");
    }

    protected int matchQuarterString(String text, int start, int field, String[] data, Calendar cal) {
        throw new RuntimeException("Stub!");
    }

    protected int subParse(String text, int start, char ch2, int count, boolean obeyCount, boolean allowNegative, boolean[] ambiguousYear, Calendar cal) {
        throw new RuntimeException("Stub!");
    }

    public String toPattern() {
        throw new RuntimeException("Stub!");
    }

    public String toLocalizedPattern() {
        throw new RuntimeException("Stub!");
    }

    public void applyPattern(String pat) {
        throw new RuntimeException("Stub!");
    }

    public void applyLocalizedPattern(String pat) {
        throw new RuntimeException("Stub!");
    }

    public DateFormatSymbols getDateFormatSymbols() {
        throw new RuntimeException("Stub!");
    }

    public void setDateFormatSymbols(DateFormatSymbols newFormatSymbols) {
        throw new RuntimeException("Stub!");
    }

    protected DateFormatSymbols getSymbols() {
        throw new RuntimeException("Stub!");
    }

    public TimeZoneFormat getTimeZoneFormat() {
        throw new RuntimeException("Stub!");
    }

    public void setTimeZoneFormat(TimeZoneFormat tzfmt) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AttributedCharacterIterator formatToCharacterIterator(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public void setNumberFormat(String fields, NumberFormat overrideNF) {
        throw new RuntimeException("Stub!");
    }

    public NumberFormat getNumberFormat(char field) {
        throw new RuntimeException("Stub!");
    }
}
