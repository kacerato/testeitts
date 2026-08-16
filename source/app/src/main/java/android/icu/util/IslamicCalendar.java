package android.icu.util;

import java.util.Date;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/IslamicCalendar.class
 */
public class IslamicCalendar extends Calendar {
    public static final int DHU_AL_HIJJAH = 11;
    public static final int DHU_AL_QIDAH = 10;
    public static final int JUMADA_1 = 4;
    public static final int JUMADA_2 = 5;
    public static final int MUHARRAM = 0;
    public static final int RABI_1 = 2;
    public static final int RABI_2 = 3;
    public static final int RAJAB = 6;
    public static final int RAMADAN = 8;
    public static final int SAFAR = 1;
    public static final int SHABAN = 7;
    public static final int SHAWWAL = 9;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/IslamicCalendar$CalculationType.class
 */
    public enum CalculationType {
        ISLAMIC,
        ISLAMIC_CIVIL,
        ISLAMIC_TBLA,
        ISLAMIC_UMALQURA
    }

    public IslamicCalendar() {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(TimeZone zone) {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(Locale aLocale) {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(TimeZone zone, Locale aLocale) {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(TimeZone zone, ULocale locale) {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(Date date) {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(int year, int month, int date) {
        throw new RuntimeException("Stub!");
    }

    public IslamicCalendar(int year, int month, int date, int hour, int minute, int second) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int handleGetLimit(int field, int limitType) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int handleGetMonthLength(int extendedYear, int month) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int handleGetYearLength(int extendedYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int handleComputeMonthStart(int eyear, int month, boolean useMonth) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int handleGetExtendedYear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void handleComputeFields(int julianDay) {
        throw new RuntimeException("Stub!");
    }

    public void setCalculationType(CalculationType type) {
        throw new RuntimeException("Stub!");
    }

    public CalculationType getCalculationType() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getType() {
        throw new RuntimeException("Stub!");
    }
}
