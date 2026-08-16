package android.icu.text;

import android.icu.util.ULocale;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/RelativeDateTimeFormatter.class
 */
public final class RelativeDateTimeFormatter {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/RelativeDateTimeFormatter$AbsoluteUnit.class
 */
    public enum AbsoluteUnit {
        DAY,
        FRIDAY,
        MONDAY,
        MONTH,
        NOW,
        SATURDAY,
        SUNDAY,
        THURSDAY,
        TUESDAY,
        WEDNESDAY,
        WEEK,
        YEAR
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/RelativeDateTimeFormatter$Direction.class
 */
    public enum Direction {
        LAST,
        LAST_2,
        NEXT,
        NEXT_2,
        PLAIN,
        THIS
    }

    public enum RelativeDateTimeUnit {
        YEAR,
        QUARTER,
        MONTH,
        WEEK,
        DAY,
        HOUR,
        MINUTE,
        SECOND,
        SUNDAY,
        MONDAY,
        TUESDAY,
        WEDNESDAY,
        THURSDAY,
        FRIDAY,
        SATURDAY
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/RelativeDateTimeFormatter$RelativeUnit.class
 */
    public enum RelativeUnit {
        DAYS,
        HOURS,
        MINUTES,
        MONTHS,
        SECONDS,
        WEEKS,
        YEARS
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/RelativeDateTimeFormatter$Style.class
 */
    public enum Style {
        LONG,
        NARROW,
        SHORT
    }

    RelativeDateTimeFormatter() {
        throw new RuntimeException("Stub!");
    }

    public static RelativeDateTimeFormatter getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static RelativeDateTimeFormatter getInstance(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public static RelativeDateTimeFormatter getInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public static RelativeDateTimeFormatter getInstance(ULocale locale, NumberFormat nf2) {
        throw new RuntimeException("Stub!");
    }

    public static RelativeDateTimeFormatter getInstance(ULocale locale, NumberFormat nf2, Style style, DisplayContext capitalizationContext) {
        throw new RuntimeException("Stub!");
    }

    public static RelativeDateTimeFormatter getInstance(Locale locale, NumberFormat nf2) {
        throw new RuntimeException("Stub!");
    }

    public String format(double quantity, Direction direction, RelativeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public String format(Direction direction, AbsoluteUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public String combineDateAndTime(String relativeDateString, String timeString) {
        throw new RuntimeException("Stub!");
    }

    public NumberFormat getNumberFormat() {
        throw new RuntimeException("Stub!");
    }

    public DisplayContext getCapitalizationContext() {
        throw new RuntimeException("Stub!");
    }

    public Style getFormatStyle() {
        throw new RuntimeException("Stub!");
    }
}
