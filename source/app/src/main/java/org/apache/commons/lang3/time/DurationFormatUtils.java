package org.apache.commons.lang3.time;

import android.icu.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

public class DurationFormatUtils {
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.SSS'S'";

    static final Object f100110y = "y";

    static final Object f100105M = "M";

    static final Object f100107d = "d";

    static final Object f100104H = DateFormat.HOUR24;

    static final Object f100108m = DateFormat.MINUTE;

    static final Object f100109s = "s";

    static final Object f100106S = "S";

    public static String format(Token[] tokenArr, long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10) {
        int i10;
        int i11;
        long j17;
        Token[] tokenArr2 = tokenArr;
        long j18 = j16;
        StringBuilder sb2 = new StringBuilder();
        int length = tokenArr2.length;
        int i12 = 0;
        boolean z11 = false;
        while (i12 < length) {
            Token token = tokenArr2[i12];
            Object value = token.getValue();
            int count = token.getCount();
            if (value instanceof StringBuilder) {
                sb2.append(value.toString());
                j17 = j18;
                i11 = length;
                i10 = i12;
            } else {
                if (value.equals(f100110y)) {
                    sb2.append(paddedValue(j10, z10, count));
                } else if (value.equals(f100105M)) {
                    sb2.append(paddedValue(j11, z10, count));
                } else if (value.equals(f100107d)) {
                    i10 = i12;
                    sb2.append(paddedValue(j12, z10, count));
                    j17 = j18;
                    i11 = length;
                    z11 = false;
                } else {
                    i10 = i12;
                    if (value.equals(f100104H)) {
                        i11 = length;
                        sb2.append(paddedValue(j13, z10, count));
                    } else {
                        i11 = length;
                        if (value.equals(f100108m)) {
                            sb2.append(paddedValue(j14, z10, count));
                        } else {
                            if (value.equals(f100109s)) {
                                sb2.append(paddedValue(j15, z10, count));
                                j17 = j16;
                                z11 = true;
                            } else if (value.equals(f100106S)) {
                                if (z11) {
                                    j17 = j16;
                                    sb2.append(paddedValue(j17, true, z10 ? Math.max(3, count) : 3));
                                } else {
                                    j17 = j16;
                                    sb2.append(paddedValue(j17, z10, count));
                                }
                                z11 = false;
                            } else {
                                j17 = j16;
                            }
                            i12 = i10 + 1;
                            j18 = j17;
                            length = i11;
                            tokenArr2 = tokenArr;
                        }
                    }
                    j17 = j18;
                    z11 = false;
                    i12 = i10 + 1;
                    j18 = j17;
                    length = i11;
                    tokenArr2 = tokenArr;
                }
                j17 = j18;
                i11 = length;
                i10 = i12;
                z11 = false;
            }
            i12 = i10 + 1;
            j18 = j17;
            length = i11;
            tokenArr2 = tokenArr;
        }
        return sb2.toString();
    }

    public static String formatDuration(long j10, String str) {
        return formatDuration(j10, str, true);
    }

    public static String formatDurationHMS(long j10) {
        return formatDuration(j10, "HH:mm:ss.SSS");
    }

    public static String formatDurationISO(long j10) {
        return formatDuration(j10, ISO_EXTENDED_FORMAT_PATTERN, false);
    }

    public static String formatDurationWords(long j10, boolean z10, boolean z11) {
        String formatDuration = formatDuration(j10, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (z10) {
            formatDuration = " " + formatDuration;
            String replaceOnce = StringUtils.replaceOnce(formatDuration, " 0 days", "");
            if (replaceOnce.length() != formatDuration.length()) {
                String replaceOnce2 = StringUtils.replaceOnce(replaceOnce, " 0 hours", "");
                if (replaceOnce2.length() != replaceOnce.length()) {
                    formatDuration = StringUtils.replaceOnce(replaceOnce2, " 0 minutes", "");
                    if (formatDuration.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
                    }
                } else {
                    formatDuration = replaceOnce;
                }
            }
            if (formatDuration.length() != 0) {
                formatDuration = formatDuration.substring(1);
            }
        }
        if (z11) {
            String replaceOnce3 = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
            if (replaceOnce3.length() != formatDuration.length()) {
                formatDuration = StringUtils.replaceOnce(replaceOnce3, " 0 minutes", "");
                if (formatDuration.length() != replaceOnce3.length()) {
                    String replaceOnce4 = StringUtils.replaceOnce(formatDuration, " 0 hours", "");
                    if (replaceOnce4.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(replaceOnce4, " 0 days", "");
                    }
                } else {
                    formatDuration = replaceOnce3;
                }
            }
        }
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(" " + formatDuration, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    public static String formatPeriod(long j10, long j11, String str) {
        return formatPeriod(j10, j11, str, true, TimeZone.getDefault());
    }

    public static String formatPeriodISO(long j10, long j11) {
        return formatPeriod(j10, j11, ISO_EXTENDED_FORMAT_PATTERN, false, TimeZone.getDefault());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Token[] lexx(String str) {
        Object obj;
        ArrayList arrayList = new ArrayList(str.length());
        boolean z10 = false;
        StringBuilder sb2 = null;
        Token token = null;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (z10 && charAt != '\'') {
                sb2.append(charAt);
            } else if (charAt != '\'') {
                if (charAt == 'H') {
                    obj = f100104H;
                } else if (charAt == 'M') {
                    obj = f100105M;
                } else if (charAt == 'S') {
                    obj = f100106S;
                } else if (charAt == 'd') {
                    obj = f100107d;
                } else if (charAt == 'm') {
                    obj = f100108m;
                } else if (charAt == 's') {
                    obj = f100109s;
                } else if (charAt != 'y') {
                    if (sb2 == null) {
                        sb2 = new StringBuilder();
                        arrayList.add(new Token(sb2));
                    }
                    sb2.append(charAt);
                    obj = null;
                } else {
                    obj = f100110y;
                }
                if (obj != null) {
                    if (token == null || !token.getValue().equals(obj)) {
                        token = new Token(obj);
                        arrayList.add(token);
                    } else {
                        token.increment();
                    }
                    sb2 = null;
                }
            } else if (z10) {
                z10 = false;
                sb2 = null;
                obj = null;
                if (obj != null) {
                }
            } else {
                sb2 = new StringBuilder();
                arrayList.add(new Token(sb2));
                z10 = true;
                obj = null;
                if (obj != null) {
                }
            }
        }
        if (!z10) {
            return (Token[]) arrayList.toArray(new Token[arrayList.size()]);
        }
        throw new IllegalArgumentException("Unmatched quote in format: " + str);
    }

    private static String paddedValue(long j10, boolean z10, int i10) {
        String l10 = Long.toString(j10);
        return z10 ? StringUtils.leftPad(l10, i10, '0') : l10;
    }

    public static String formatDuration(long j10, String str, boolean z10) {
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long j16;
        Validate.inclusiveBetween(0L, Long.MAX_VALUE, j10, "durationMillis must not be negative");
        Token[] lexx = lexx(str);
        if (Token.containsTokenWithValue(lexx, f100107d)) {
            long j17 = j10 / 86400000;
            j11 = j10 - (86400000 * j17);
            j12 = j17;
        } else {
            j11 = j10;
            j12 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f100104H)) {
            long j18 = j11 / 3600000;
            j11 -= 3600000 * j18;
            j13 = j18;
        } else {
            j13 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f100108m)) {
            long j19 = j11 / 60000;
            j11 -= 60000 * j19;
            j14 = j19;
        } else {
            j14 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f100109s)) {
            long j20 = j11 / 1000;
            j16 = j11 - (1000 * j20);
            j15 = j20;
        } else {
            j15 = 0;
            j16 = j11;
        }
        return format(lexx, 0L, 0L, j12, j13, j14, j15, j16, z10);
    }

    public static String formatPeriod(long j10, long j11, String str, boolean z10, TimeZone timeZone) {
        int i10 = 0;
        Validate.isTrue(j10 <= j11, "startMillis must not be greater than endMillis", new Object[0]);
        Token[] lexx = lexx(str);
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(new Date(j10));
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTime(new Date(j11));
        int i11 = calendar2.get(14) - calendar.get(14);
        int i12 = calendar2.get(13) - calendar.get(13);
        int i13 = calendar2.get(12) - calendar.get(12);
        int i14 = calendar2.get(11) - calendar.get(11);
        int i15 = calendar2.get(5) - calendar.get(5);
        int i16 = calendar2.get(2) - calendar.get(2);
        int i17 = calendar2.get(1) - calendar.get(1);
        while (i11 < 0) {
            i11 += 1000;
            i12--;
        }
        while (i12 < 0) {
            i12 += 60;
            i13--;
        }
        while (i13 < 0) {
            i13 += 60;
            i14--;
        }
        while (i14 < 0) {
            i14 += 24;
            i15--;
        }
        if (Token.containsTokenWithValue(lexx, f100105M)) {
            while (i15 < 0) {
                i15 += calendar.getActualMaximum(5);
                i16--;
                calendar.add(2, 1);
            }
            while (i16 < 0) {
                i16 += 12;
                i17--;
            }
            if (!Token.containsTokenWithValue(lexx, f100110y) && i17 != 0) {
                while (i17 != 0) {
                    i16 += i17 * 12;
                    i17 = 0;
                }
            }
        } else {
            if (!Token.containsTokenWithValue(lexx, f100110y)) {
                int i18 = calendar2.get(1);
                if (i16 < 0) {
                    i18--;
                }
                while (calendar.get(1) != i18) {
                    int actualMaximum = i15 + (calendar.getActualMaximum(6) - calendar.get(6));
                    if ((calendar instanceof GregorianCalendar) && calendar.get(2) == 1 && calendar.get(5) == 29) {
                        actualMaximum++;
                    }
                    calendar.add(1, 1);
                    i15 = actualMaximum + calendar.get(6);
                }
                i17 = 0;
            }
            while (calendar.get(2) != calendar2.get(2)) {
                i15 += calendar.getActualMaximum(5);
                calendar.add(2, 1);
            }
            i16 = 0;
            while (i15 < 0) {
                i15 += calendar.getActualMaximum(5);
                i16--;
                calendar.add(2, 1);
            }
        }
        if (!Token.containsTokenWithValue(lexx, f100107d)) {
            i14 += i15 * 24;
            i15 = 0;
        }
        if (!Token.containsTokenWithValue(lexx, f100104H)) {
            i13 += i14 * 60;
            i14 = 0;
        }
        if (!Token.containsTokenWithValue(lexx, f100108m)) {
            i12 += i13 * 60;
            i13 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f100109s)) {
            i10 = i12;
        } else {
            i11 += i12 * 1000;
        }
        return format(lexx, i17, i16, i15, i14, i13, i10, i11, z10);
    }

    public static class Token {
        private int count;
        private final Object value;

        public Token(Object obj) {
            this.value = obj;
            this.count = 1;
        }

        public static boolean containsTokenWithValue(Token[] tokenArr, Object obj) {
            for (Token token : tokenArr) {
                if (token.getValue() == obj) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            if (this.value.getClass() != token.value.getClass() || this.count != token.count) {
                return false;
            }
            Object obj2 = this.value;
            return obj2 instanceof StringBuilder ? obj2.toString().equals(token.value.toString()) : obj2 instanceof Number ? obj2.equals(token.value) : obj2 == token.value;
        }

        public int getCount() {
            return this.count;
        }

        public Object getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public void increment() {
            this.count++;
        }

        public String toString() {
            return StringUtils.repeat(this.value.toString(), this.count);
        }

        public Token(Object obj, int i10) {
            this.value = obj;
            this.count = i10;
        }
    }
}
