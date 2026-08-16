package android.icu.text;

import android.icu.util.Freezable;
import android.icu.util.ULocale;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/DateTimePatternGenerator.class
 */
public class DateTimePatternGenerator implements Freezable<DateTimePatternGenerator>, Cloneable {
    public static final int DAY = 7;
    public static final int DAYPERIOD = 10;
    public static final int DAY_OF_WEEK_IN_MONTH = 9;
    public static final int DAY_OF_YEAR = 8;
    public static final int ERA = 0;
    public static final int FRACTIONAL_SECOND = 14;
    public static final int HOUR = 11;
    public static final int MATCH_ALL_FIELDS_LENGTH = 65535;
    public static final int MATCH_HOUR_FIELD_LENGTH = 2048;
    public static final int MATCH_NO_OPTIONS = 0;
    public static final int MINUTE = 12;
    public static final int MONTH = 3;
    public static final int QUARTER = 2;
    public static final int SECOND = 13;
    public static final int WEEKDAY = 6;
    public static final int WEEK_OF_MONTH = 5;
    public static final int WEEK_OF_YEAR = 4;
    public static final int YEAR = 1;
    public static final int ZONE = 15;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/DateTimePatternGenerator$PatternInfo.class
 */
    public static final class PatternInfo {
        public static final int BASE_CONFLICT = 1;
        public static final int CONFLICT = 2;
        public static final int OK = 0;
        public String conflictingPattern;
        public int status;

        public PatternInfo() {
            throw new RuntimeException("Stub!");
        }
    }

    protected DateTimePatternGenerator() {
        throw new RuntimeException("Stub!");
    }

    public static DateTimePatternGenerator getEmptyInstance() {
        throw new RuntimeException("Stub!");
    }

    public static DateTimePatternGenerator getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static DateTimePatternGenerator getInstance(ULocale uLocale) {
        throw new RuntimeException("Stub!");
    }

    public static DateTimePatternGenerator getInstance(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public String getBestPattern(String skeleton) {
        throw new RuntimeException("Stub!");
    }

    public String getBestPattern(String skeleton, int options) {
        throw new RuntimeException("Stub!");
    }

    public DateTimePatternGenerator addPattern(String pattern, boolean override, PatternInfo returnInfo) {
        throw new RuntimeException("Stub!");
    }

    public String getSkeleton(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public String getBaseSkeleton(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public Map<String, String> getSkeletons(Map<String, String> result) {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getBaseSkeletons(Set<String> result) {
        throw new RuntimeException("Stub!");
    }

    public String replaceFieldTypes(String pattern, String skeleton) {
        throw new RuntimeException("Stub!");
    }

    public String replaceFieldTypes(String pattern, String skeleton, int options) {
        throw new RuntimeException("Stub!");
    }

    public void setDateTimeFormat(String dateTimeFormat) {
        throw new RuntimeException("Stub!");
    }

    public String getDateTimeFormat() {
        throw new RuntimeException("Stub!");
    }

    public void setDecimal(String decimal) {
        throw new RuntimeException("Stub!");
    }

    public String getDecimal() {
        throw new RuntimeException("Stub!");
    }

    public void setAppendItemFormat(int field, String value) {
        throw new RuntimeException("Stub!");
    }

    public String getAppendItemFormat(int field) {
        throw new RuntimeException("Stub!");
    }

    public void setAppendItemName(int field, String value) {
        throw new RuntimeException("Stub!");
    }

    public String getAppendItemName(int field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isFrozen() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public DateTimePatternGenerator freeze() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public DateTimePatternGenerator cloneAsThawed() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }
}
