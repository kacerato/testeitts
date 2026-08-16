package org.apache.commons.lang3.time;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Validate;

public class DateUtils {
    public static final long MILLIS_PER_DAY = 86400000;
    public static final long MILLIS_PER_HOUR = 3600000;
    public static final long MILLIS_PER_MINUTE = 60000;
    public static final long MILLIS_PER_SECOND = 1000;
    public static final int RANGE_MONTH_MONDAY = 6;
    public static final int RANGE_MONTH_SUNDAY = 5;
    public static final int RANGE_WEEK_CENTER = 4;
    public static final int RANGE_WEEK_MONDAY = 2;
    public static final int RANGE_WEEK_RELATIVE = 3;
    public static final int RANGE_WEEK_SUNDAY = 1;
    public static final int SEMI_MONTH = 1001;
    private static final int[][] fields = {new int[]{14}, new int[]{13}, new int[]{12}, new int[]{11, 10}, new int[]{5, 5, 9}, new int[]{2, 1001}, new int[]{1}, new int[]{0}};

    public static class DateIterator implements Iterator<Calendar> {
        private final Calendar endFinal;
        private final Calendar spot;

        public DateIterator(Calendar calendar, Calendar calendar2) {
            this.endFinal = calendar2;
            this.spot = calendar;
            calendar.add(5, -1);
        }

        @Override
        public boolean hasNext() {
            return this.spot.before(this.endFinal);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Calendar next() {
            if (!this.spot.equals(this.endFinal)) {
                this.spot.add(5, 1);
                return (Calendar) this.spot.clone();
            }
            throw new NoSuchElementException();
        }
    }

    public enum ModifyType {
        TRUNCATE,
        ROUND,
        CEILING
    }

    private static Date add(Date date, int i10, int i11) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(i10, i11);
        return calendar.getTime();
    }

    public static Date addDays(Date date, int i10) {
        return add(date, 5, i10);
    }

    public static Date addHours(Date date, int i10) {
        return add(date, 11, i10);
    }

    public static Date addMilliseconds(Date date, int i10) {
        return add(date, 14, i10);
    }

    public static Date addMinutes(Date date, int i10) {
        return add(date, 12, i10);
    }

    public static Date addMonths(Date date, int i10) {
        return add(date, 2, i10);
    }

    public static Date addSeconds(Date date, int i10) {
        return add(date, 13, i10);
    }

    public static Date addWeeks(Date date, int i10) {
        return add(date, 3, i10);
    }

    public static Date addYears(Date date, int i10) {
        return add(date, 1, i10);
    }

    public static Date ceiling(Date date, int i10) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        modify(calendar, i10, ModifyType.CEILING);
        return calendar.getTime();
    }

    private static long getFragment(Date date, int i10, TimeUnit timeUnit) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return getFragment(calendar, i10, timeUnit);
    }

    public static long getFragmentInDays(Date date, int i10) {
        return getFragment(date, i10, TimeUnit.DAYS);
    }

    public static long getFragmentInHours(Date date, int i10) {
        return getFragment(date, i10, TimeUnit.HOURS);
    }

    public static long getFragmentInMilliseconds(Date date, int i10) {
        return getFragment(date, i10, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMinutes(Date date, int i10) {
        return getFragment(date, i10, TimeUnit.MINUTES);
    }

    public static long getFragmentInSeconds(Date date, int i10) {
        return getFragment(date, i10, TimeUnit.SECONDS);
    }

    public static boolean isSameDay(Date date, Date date2) {
        if (date != null && date2 != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(date2);
            return isSameDay(calendar, calendar2);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static boolean isSameInstant(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return date.getTime() == date2.getTime();
    }

    public static boolean isSameLocalTime(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(14) == calendar2.get(14) && calendar.get(13) == calendar2.get(13) && calendar.get(12) == calendar2.get(12) && calendar.get(11) == calendar2.get(11) && calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1) && calendar.get(0) == calendar2.get(0) && calendar.getClass() == calendar2.getClass();
    }

    public static Iterator<Calendar> iterator(Date date, int i10) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return iterator(calendar, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void modify(Calendar calendar, int i10, ModifyType modifyType) {
        char c10;
        int i11;
        boolean z10;
        char c11;
        if (calendar.get(1) > 280000000) {
            throw new ArithmeticException("Calendar value too large for accurate calculations");
        }
        if (i10 == 14) {
            return;
        }
        Date time = calendar.getTime();
        long time2 = time.getTime();
        int i12 = calendar.get(14);
        ModifyType modifyType2 = ModifyType.TRUNCATE;
        if (modifyType2 == modifyType || i12 < 500) {
            time2 -= i12;
        }
        boolean z11 = i10 == 13;
        int i13 = calendar.get(13);
        if (!z11 && (modifyType2 == modifyType || i13 < 30)) {
            time2 -= i13 * 1000;
        }
        if (i10 == 12) {
            z11 = true;
        }
        int i14 = calendar.get(12);
        if (!z11 && (modifyType2 == modifyType || i14 < 30)) {
            time2 -= i14 * 60000;
        }
        if (time.getTime() != time2) {
            time.setTime(time2);
            calendar.setTime(time);
        }
        boolean z12 = false;
        for (int[] iArr : fields) {
            for (int i15 : iArr) {
                if (i15 == i10) {
                    if (modifyType == ModifyType.CEILING || (modifyType == ModifyType.ROUND && z12)) {
                        if (i10 == 1001) {
                            if (calendar.get(5) == 1) {
                                calendar.add(5, 15);
                                return;
                            } else {
                                calendar.add(5, -15);
                                calendar.add(2, 1);
                                return;
                            }
                        }
                        if (i10 != 9) {
                            calendar.add(iArr[0], 1);
                            return;
                        } else if (calendar.get(11) == 0) {
                            calendar.add(11, 12);
                            return;
                        } else {
                            calendar.add(11, -12);
                            calendar.add(5, 1);
                            return;
                        }
                    }
                    return;
                }
            }
            if (i10 != 9) {
                if (i10 == 1001 && iArr[0] == 5) {
                    int i16 = calendar.get(5);
                    int i17 = i16 - 1;
                    i11 = i17 >= 15 ? i16 - 16 : i17;
                    z12 = i11 > 7;
                    z10 = true;
                    c10 = '\f';
                    if (z10) {
                        c11 = 0;
                        int actualMinimum = calendar.getActualMinimum(iArr[0]);
                        int actualMaximum = calendar.getActualMaximum(iArr[0]);
                        int i18 = calendar.get(iArr[0]) - actualMinimum;
                        z12 = i18 > (actualMaximum - actualMinimum) / 2;
                        i11 = i18;
                    } else {
                        c11 = 0;
                    }
                    if (i11 == 0) {
                        int i19 = iArr[c11];
                        calendar.set(i19, calendar.get(i19) - i11);
                    }
                }
                c10 = '\f';
                i11 = 0;
                z10 = false;
                if (z10) {
                }
                if (i11 == 0) {
                }
            } else {
                if (iArr[0] == 11) {
                    int i20 = calendar.get(11);
                    c10 = '\f';
                    if (i20 >= 12) {
                        i20 -= 12;
                    }
                    int i21 = i20;
                    z12 = i21 >= 6;
                    i11 = i21;
                    z10 = true;
                    if (z10) {
                    }
                    if (i11 == 0) {
                    }
                }
                c10 = '\f';
                i11 = 0;
                z10 = false;
                if (z10) {
                }
                if (i11 == 0) {
                }
            }
        }
        throw new IllegalArgumentException("The field " + i10 + " is not supported");
    }

    public static Date parseDate(String str, String... strArr) throws ParseException {
        return parseDate(str, null, strArr);
    }

    public static Date parseDateStrictly(String str, String... strArr) throws ParseException {
        return parseDateStrictly(str, null, strArr);
    }

    private static Date parseDateWithLeniency(String str, Locale locale, String[] strArr, boolean z10) throws ParseException {
        if (str == null || strArr == null) {
            throw new IllegalArgumentException("Date and Patterns must not be null");
        }
        TimeZone timeZone = TimeZone.getDefault();
        if (locale == null) {
            locale = Locale.getDefault();
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        calendar.setLenient(z10);
        for (String str2 : strArr) {
            FastDateParser fastDateParser = new FastDateParser(str2, timeZone, locale);
            calendar.clear();
            try {
                if (fastDateParser.parse(str, parsePosition, calendar) && parsePosition.getIndex() == str.length()) {
                    return calendar.getTime();
                }
            } catch (IllegalArgumentException unused) {
            }
            parsePosition.setIndex(0);
        }
        throw new ParseException("Unable to parse the date: " + str, -1);
    }

    public static Date round(Date date, int i10) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        modify(calendar, i10, ModifyType.ROUND);
        return calendar.getTime();
    }

    private static Date set(Date date, int i10, int i11) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setLenient(false);
        calendar.setTime(date);
        calendar.set(i10, i11);
        return calendar.getTime();
    }

    public static Date setDays(Date date, int i10) {
        return set(date, 5, i10);
    }

    public static Date setHours(Date date, int i10) {
        return set(date, 11, i10);
    }

    public static Date setMilliseconds(Date date, int i10) {
        return set(date, 14, i10);
    }

    public static Date setMinutes(Date date, int i10) {
        return set(date, 12, i10);
    }

    public static Date setMonths(Date date, int i10) {
        return set(date, 2, i10);
    }

    public static Date setSeconds(Date date, int i10) {
        return set(date, 13, i10);
    }

    public static Date setYears(Date date, int i10) {
        return set(date, 1, i10);
    }

    public static Calendar toCalendar(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static Date truncate(Date date, int i10) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        modify(calendar, i10, ModifyType.TRUNCATE);
        return calendar.getTime();
    }

    public static int truncatedCompareTo(Calendar calendar, Calendar calendar2, int i10) {
        return truncate(calendar, i10).compareTo(truncate(calendar2, i10));
    }

    public static boolean truncatedEquals(Calendar calendar, Calendar calendar2, int i10) {
        return truncatedCompareTo(calendar, calendar2, i10) == 0;
    }

    private static void validateDateNotNull(Date date) {
        Validate.isTrue(date != null, "The date must not be null", new Object[0]);
    }

    public static long getFragmentInDays(Calendar calendar, int i10) {
        return getFragment(calendar, i10, TimeUnit.DAYS);
    }

    public static long getFragmentInHours(Calendar calendar, int i10) {
        return getFragment(calendar, i10, TimeUnit.HOURS);
    }

    public static long getFragmentInMilliseconds(Calendar calendar, int i10) {
        return getFragment(calendar, i10, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMinutes(Calendar calendar, int i10) {
        return getFragment(calendar, i10, TimeUnit.MINUTES);
    }

    public static long getFragmentInSeconds(Calendar calendar, int i10) {
        return getFragment(calendar, i10, TimeUnit.SECONDS);
    }

    public static Date parseDate(String str, Locale locale, String... strArr) throws ParseException {
        return parseDateWithLeniency(str, locale, strArr, true);
    }

    public static Date parseDateStrictly(String str, Locale locale, String... strArr) throws ParseException {
        return parseDateWithLeniency(str, locale, strArr, false);
    }

    public static boolean truncatedEquals(Date date, Date date2, int i10) {
        return truncatedCompareTo(date, date2, i10) == 0;
    }

    public static boolean isSameInstant(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.getTime().getTime() == calendar2.getTime().getTime();
    }

    public static Calendar toCalendar(Date date, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(date);
        return calendar;
    }

    public static int truncatedCompareTo(Date date, Date date2, int i10) {
        return truncate(date, i10).compareTo(truncate(date2, i10));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0031. Please report as an issue. */
    private static long getFragment(Calendar calendar, int i10, TimeUnit timeUnit) {
        long convert;
        if (calendar != null) {
            TimeUnit timeUnit2 = TimeUnit.DAYS;
            int i11 = timeUnit == timeUnit2 ? 0 : 1;
            if (i10 != 1) {
                convert = i10 != 2 ? 0L : timeUnit.convert(calendar.get(5) - i11, timeUnit2);
            } else {
                convert = timeUnit.convert(calendar.get(6) - i11, timeUnit2);
            }
            if (i10 == 1 || i10 == 2 || i10 == 5 || i10 == 6) {
                convert += timeUnit.convert(calendar.get(11), TimeUnit.HOURS);
            } else {
                switch (i10) {
                    case 11:
                        break;
                    case 12:
                        convert += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
                    case 13:
                        return convert + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
                    case 14:
                        return convert;
                    default:
                        throw new IllegalArgumentException("The fragment " + i10 + " is not supported");
                }
            }
            convert += timeUnit.convert(calendar.get(12), TimeUnit.MINUTES);
            convert += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
            return convert + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0007. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007c A[LOOP:0: B:20:0x0076->B:22:0x007c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086 A[LOOP:1: B:24:0x0080->B:26:0x0086, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Iterator<Calendar> iterator(Calendar calendar, int i10) {
        Calendar truncate;
        Calendar truncate2;
        int i11;
        if (calendar != null) {
            int i12 = 2;
            switch (i10) {
                case 1:
                case 2:
                case 3:
                case 4:
                    truncate = truncate(calendar, 5);
                    truncate2 = truncate(calendar, 5);
                    if (i10 != 2) {
                        if (i10 == 3) {
                            i12 = calendar.get(7);
                            i11 = i12 - 1;
                        } else if (i10 != 4) {
                            i12 = 1;
                            i11 = 7;
                        } else {
                            int i13 = calendar.get(7) - 3;
                            i11 = calendar.get(7) + 3;
                            i12 = i13;
                        }
                        if (i12 < 1) {
                            i12 += 7;
                        }
                        if (i12 > 7) {
                            i12 -= 7;
                        }
                        if (i11 < 1) {
                            i11 += 7;
                        }
                        if (i11 > 7) {
                            i11 -= 7;
                        }
                        while (truncate.get(7) != i12) {
                            truncate.add(5, -1);
                        }
                        while (truncate2.get(7) != i11) {
                            truncate2.add(5, 1);
                        }
                        return new DateIterator(truncate, truncate2);
                    }
                    i11 = 1;
                    if (i12 < 1) {
                    }
                    if (i12 > 7) {
                    }
                    if (i11 < 1) {
                    }
                    if (i11 > 7) {
                    }
                    while (truncate.get(7) != i12) {
                    }
                    while (truncate2.get(7) != i11) {
                    }
                    return new DateIterator(truncate, truncate2);
                case 5:
                case 6:
                    Calendar truncate3 = truncate(calendar, 2);
                    Calendar calendar2 = (Calendar) truncate3.clone();
                    calendar2.add(2, 1);
                    calendar2.add(5, -1);
                    if (i10 == 6) {
                        truncate2 = calendar2;
                        truncate = truncate3;
                        i11 = 1;
                        if (i12 < 1) {
                        }
                        if (i12 > 7) {
                        }
                        if (i11 < 1) {
                        }
                        if (i11 > 7) {
                        }
                        while (truncate.get(7) != i12) {
                        }
                        while (truncate2.get(7) != i11) {
                        }
                        return new DateIterator(truncate, truncate2);
                    }
                    i12 = 1;
                    truncate2 = calendar2;
                    truncate = truncate3;
                    i11 = 7;
                    if (i12 < 1) {
                    }
                    if (i12 > 7) {
                    }
                    if (i11 < 1) {
                    }
                    if (i11 > 7) {
                    }
                    while (truncate.get(7) != i12) {
                    }
                    while (truncate2.get(7) != i11) {
                    }
                    return new DateIterator(truncate, truncate2);
                default:
                    throw new IllegalArgumentException("The range style " + i10 + " is not valid.");
            }
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Calendar ceiling(Calendar calendar, int i10) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            modify(calendar2, i10, ModifyType.CEILING);
            return calendar2;
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Calendar round(Calendar calendar, int i10) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            modify(calendar2, i10, ModifyType.ROUND);
            return calendar2;
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Calendar truncate(Calendar calendar, int i10) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            modify(calendar2, i10, ModifyType.TRUNCATE);
            return calendar2;
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static boolean isSameDay(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public static Date ceiling(Object obj, int i10) {
        if (obj != null) {
            if (obj instanceof Date) {
                return ceiling((Date) obj, i10);
            }
            if (obj instanceof Calendar) {
                return ceiling((Calendar) obj, i10).getTime();
            }
            throw new ClassCastException("Could not find ceiling of for type: " + ((Object) obj.getClass()));
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Date round(Object obj, int i10) {
        if (obj != null) {
            if (obj instanceof Date) {
                return round((Date) obj, i10);
            }
            if (obj instanceof Calendar) {
                return round((Calendar) obj, i10).getTime();
            }
            throw new ClassCastException("Could not round " + obj);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Date truncate(Object obj, int i10) {
        if (obj != null) {
            if (obj instanceof Date) {
                return truncate((Date) obj, i10);
            }
            if (obj instanceof Calendar) {
                return truncate((Calendar) obj, i10).getTime();
            }
            throw new ClassCastException("Could not truncate " + obj);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Iterator<?> iterator(Object obj, int i10) {
        if (obj != null) {
            if (obj instanceof Date) {
                return iterator((Date) obj, i10);
            }
            if (obj instanceof Calendar) {
                return iterator((Calendar) obj, i10);
            }
            throw new ClassCastException("Could not iterate based on " + obj);
        }
        throw new IllegalArgumentException("The date must not be null");
    }
}
