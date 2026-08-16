package org.apache.commons.lang3.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.doclint.DocLint;

public class FastDatePrinter implements DatePrinter, Serializable {
    public static final int FULL = 0;
    public static final int LONG = 1;
    private static final int MAX_DIGITS = 10;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final ConcurrentMap<TimeZoneDisplayKey, String> cTimeZoneDisplayCache = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1;
    private final Locale mLocale;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule[] mRules;
    private final TimeZone mTimeZone;

    public static class CharacterLiteral implements Rule {
        private final char mValue;

        public CharacterLiteral(char c10) {
            this.mValue = c10;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.mValue);
        }

        @Override
        public int estimateLength() {
            return 1;
        }
    }

    public static class Iso8601_Rule implements Rule {
        final int length;
        static final Iso8601_Rule ISO8601_HOURS = new Iso8601_Rule(3);
        static final Iso8601_Rule ISO8601_HOURS_MINUTES = new Iso8601_Rule(5);
        static final Iso8601_Rule ISO8601_HOURS_COLON_MINUTES = new Iso8601_Rule(6);

        public Iso8601_Rule(int i10) {
            this.length = i10;
        }

        public static Iso8601_Rule getRule(int i10) {
            if (i10 == 1) {
                return ISO8601_HOURS;
            }
            if (i10 == 2) {
                return ISO8601_HOURS_MINUTES;
            }
            if (i10 == 3) {
                return ISO8601_HOURS_COLON_MINUTES;
            }
            throw new IllegalArgumentException("invalid number of X");
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i10 = calendar.get(15) + calendar.get(16);
            if (i10 == 0) {
                appendable.append(Signature.SIG_BOOLEAN);
                return;
            }
            if (i10 < 0) {
                appendable.append('-');
                i10 = -i10;
            } else {
                appendable.append('+');
            }
            int i11 = i10 / 3600000;
            FastDatePrinter.appendDigits(appendable, i11);
            int i12 = this.length;
            if (i12 < 5) {
                return;
            }
            if (i12 == 6) {
                appendable.append(':');
            }
            FastDatePrinter.appendDigits(appendable, (i10 / 60000) - (i11 * 60));
        }

        @Override
        public int estimateLength() {
            return this.length;
        }
    }

    public interface NumberRule extends Rule {
        void appendTo(Appendable appendable, int i10) throws IOException;
    }

    public static class PaddedNumberField implements NumberRule {
        private final int mField;
        private final int mSize;

        public PaddedNumberField(int i10, int i11) {
            if (i11 < 3) {
                throw new IllegalArgumentException();
            }
            this.mField = i10;
            this.mSize = i11;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(this.mField));
        }

        @Override
        public int estimateLength() {
            return this.mSize;
        }

        @Override
        public final void appendTo(Appendable appendable, int i10) throws IOException {
            FastDatePrinter.appendFullDigits(appendable, i10, this.mSize);
        }
    }

    public interface Rule {
        void appendTo(Appendable appendable, Calendar calendar) throws IOException;

        int estimateLength();
    }

    public static class StringLiteral implements Rule {
        private final String mValue;

        public StringLiteral(String str) {
            this.mValue = str;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.mValue);
        }

        @Override
        public int estimateLength() {
            return this.mValue.length();
        }
    }

    public static class TextField implements Rule {
        private final int mField;
        private final String[] mValues;

        public TextField(int i10, String[] strArr) {
            this.mField = i10;
            this.mValues = strArr;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.mValues[calendar.get(this.mField)]);
        }

        @Override
        public int estimateLength() {
            int length = this.mValues.length;
            int i10 = 0;
            while (true) {
                length--;
                if (length < 0) {
                    return i10;
                }
                int length2 = this.mValues[length].length();
                if (length2 > i10) {
                    i10 = length2;
                }
            }
        }
    }

    public static class TimeZoneDisplayKey {
        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        public TimeZoneDisplayKey(TimeZone timeZone, boolean z10, int i10, Locale locale) {
            this.mTimeZone = timeZone;
            if (z10) {
                this.mStyle = Integer.MIN_VALUE | i10;
            } else {
                this.mStyle = i10;
            }
            this.mLocale = locale;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TimeZoneDisplayKey)) {
                return false;
            }
            TimeZoneDisplayKey timeZoneDisplayKey = (TimeZoneDisplayKey) obj;
            return this.mTimeZone.equals(timeZoneDisplayKey.mTimeZone) && this.mStyle == timeZoneDisplayKey.mStyle && this.mLocale.equals(timeZoneDisplayKey.mLocale);
        }

        public int hashCode() {
            return (((this.mStyle * 31) + this.mLocale.hashCode()) * 31) + this.mTimeZone.hashCode();
        }
    }

    public static class TimeZoneNameRule implements Rule {
        private final String mDaylight;
        private final Locale mLocale;
        private final String mStandard;
        private final int mStyle;

        public TimeZoneNameRule(TimeZone timeZone, Locale locale, int i10) {
            this.mLocale = locale;
            this.mStyle = i10;
            this.mStandard = FastDatePrinter.getTimeZoneDisplay(timeZone, false, i10, locale);
            this.mDaylight = FastDatePrinter.getTimeZoneDisplay(timeZone, true, i10, locale);
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            TimeZone timeZone = calendar.getTimeZone();
            if (calendar.get(16) != 0) {
                appendable.append(FastDatePrinter.getTimeZoneDisplay(timeZone, true, this.mStyle, this.mLocale));
            } else {
                appendable.append(FastDatePrinter.getTimeZoneDisplay(timeZone, false, this.mStyle, this.mLocale));
            }
        }

        @Override
        public int estimateLength() {
            return Math.max(this.mStandard.length(), this.mDaylight.length());
        }
    }

    public static class TimeZoneNumberRule implements Rule {
        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
        final boolean mColon;

        public TimeZoneNumberRule(boolean z10) {
            this.mColon = z10;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i10 = calendar.get(15) + calendar.get(16);
            if (i10 < 0) {
                appendable.append('-');
                i10 = -i10;
            } else {
                appendable.append('+');
            }
            int i11 = i10 / 3600000;
            FastDatePrinter.appendDigits(appendable, i11);
            if (this.mColon) {
                appendable.append(':');
            }
            FastDatePrinter.appendDigits(appendable, (i10 / 60000) - (i11 * 60));
        }

        @Override
        public int estimateLength() {
            return 5;
        }
    }

    public static class TwoDigitMonthField implements NumberRule {
        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(2) + 1);
        }

        @Override
        public int estimateLength() {
            return 2;
        }

        @Override
        public final void appendTo(Appendable appendable, int i10) throws IOException {
            FastDatePrinter.appendDigits(appendable, i10);
        }
    }

    public static class TwoDigitNumberField implements NumberRule {
        private final int mField;

        public TwoDigitNumberField(int i10) {
            this.mField = i10;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(this.mField));
        }

        @Override
        public int estimateLength() {
            return 2;
        }

        @Override
        public final void appendTo(Appendable appendable, int i10) throws IOException {
            if (i10 < 100) {
                FastDatePrinter.appendDigits(appendable, i10);
            } else {
                FastDatePrinter.appendFullDigits(appendable, i10, 2);
            }
        }
    }

    public static class TwoDigitYearField implements NumberRule {
        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(1) % 100);
        }

        @Override
        public int estimateLength() {
            return 2;
        }

        @Override
        public final void appendTo(Appendable appendable, int i10) throws IOException {
            FastDatePrinter.appendDigits(appendable, i10);
        }
    }

    public static class UnpaddedMonthField implements NumberRule {
        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(2) + 1);
        }

        @Override
        public int estimateLength() {
            return 2;
        }

        @Override
        public final void appendTo(Appendable appendable, int i10) throws IOException {
            if (i10 < 10) {
                appendable.append((char) (i10 + 48));
            } else {
                FastDatePrinter.appendDigits(appendable, i10);
            }
        }
    }

    public static class UnpaddedNumberField implements NumberRule {
        private final int mField;

        public UnpaddedNumberField(int i10) {
            this.mField = i10;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(this.mField));
        }

        @Override
        public int estimateLength() {
            return 4;
        }

        @Override
        public final void appendTo(Appendable appendable, int i10) throws IOException {
            if (i10 < 10) {
                appendable.append((char) (i10 + 48));
            } else if (i10 < 100) {
                FastDatePrinter.appendDigits(appendable, i10);
            } else {
                FastDatePrinter.appendFullDigits(appendable, i10, 1);
            }
        }
    }

    public static class WeekYear implements NumberRule {
        private final NumberRule mRule;

        public WeekYear(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            this.mRule.appendTo(appendable, calendar.getWeekYear());
        }

        @Override
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override
        public void appendTo(Appendable appendable, int i10) throws IOException {
            this.mRule.appendTo(appendable, i10);
        }
    }

    public FastDatePrinter(String str, TimeZone timeZone, Locale locale) {
        this.mPattern = str;
        this.mTimeZone = timeZone;
        this.mLocale = locale;
        init();
    }

    public static void appendDigits(Appendable appendable, int i10) throws IOException {
        appendable.append((char) ((i10 / 10) + 48));
        appendable.append((char) ((i10 % 10) + 48));
    }

    public static void appendFullDigits(Appendable appendable, int i10, int i11) throws IOException {
        if (i10 < 10000) {
            int i12 = i10 < 1000 ? i10 < 100 ? i10 < 10 ? 1 : 2 : 3 : 4;
            for (int i13 = i11 - i12; i13 > 0; i13--) {
                appendable.append('0');
            }
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 != 4) {
                            return;
                        }
                        appendable.append((char) ((i10 / 1000) + 48));
                        i10 %= 1000;
                    }
                    if (i10 >= 100) {
                        appendable.append((char) ((i10 / 100) + 48));
                        i10 %= 100;
                    } else {
                        appendable.append('0');
                    }
                }
                if (i10 >= 10) {
                    appendable.append((char) ((i10 / 10) + 48));
                    i10 %= 10;
                } else {
                    appendable.append('0');
                }
            }
            appendable.append((char) (i10 + 48));
            return;
        }
        char[] cArr = new char[10];
        int i14 = 0;
        while (i10 != 0) {
            cArr[i14] = (char) ((i10 % 10) + 48);
            i10 /= 10;
            i14++;
        }
        while (i14 < i11) {
            appendable.append('0');
            i11--;
        }
        while (true) {
            i14--;
            if (i14 < 0) {
                return;
            } else {
                appendable.append(cArr[i14]);
            }
        }
    }

    private String applyRulesToString(Calendar calendar) {
        return ((StringBuilder) applyRules(calendar, (Calendar) new StringBuilder(this.mMaxLengthEstimate))).toString();
    }

    public static String getTimeZoneDisplay(TimeZone timeZone, boolean z10, int i10, Locale locale) {
        TimeZoneDisplayKey timeZoneDisplayKey = new TimeZoneDisplayKey(timeZone, z10, i10, locale);
        ConcurrentMap<TimeZoneDisplayKey, String> concurrentMap = cTimeZoneDisplayCache;
        String str = concurrentMap.get(timeZoneDisplayKey);
        if (str != null) {
            return str;
        }
        String displayName = timeZone.getDisplayName(z10, i10, locale);
        String putIfAbsent = concurrentMap.putIfAbsent(timeZoneDisplayKey, displayName);
        return putIfAbsent != null ? putIfAbsent : displayName;
    }

    private void init() {
        List<Rule> parsePattern = parsePattern();
        Rule[] ruleArr = (Rule[]) parsePattern.toArray(new Rule[parsePattern.size()]);
        this.mRules = ruleArr;
        int length = ruleArr.length;
        int i10 = 0;
        while (true) {
            length--;
            if (length < 0) {
                this.mMaxLengthEstimate = i10;
                return;
            }
            i10 += this.mRules[length].estimateLength();
        }
    }

    private Calendar newCalendar() {
        return Calendar.getInstance(this.mTimeZone, this.mLocale);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init();
    }

    @Deprecated
    public StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        return (StringBuffer) applyRules(calendar, (Calendar) stringBuffer);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDatePrinter)) {
            return false;
        }
        FastDatePrinter fastDatePrinter = (FastDatePrinter) obj;
        return this.mPattern.equals(fastDatePrinter.mPattern) && this.mTimeZone.equals(fastDatePrinter.mTimeZone) && this.mLocale.equals(fastDatePrinter.mLocale);
    }

    @Override
    @Deprecated
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unknown class: ");
        sb2.append(obj == null ? "<null>" : obj.getClass().getName());
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override
    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.mMaxLengthEstimate;
    }

    @Override
    public String getPattern() {
        return this.mPattern;
    }

    @Override
    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public int hashCode() {
        return this.mPattern.hashCode() + ((this.mTimeZone.hashCode() + (this.mLocale.hashCode() * 13)) * 13);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0053. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0056. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0059. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v39, types: [org.apache.commons.lang3.time.FastDatePrinter$TextField] */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v5, types: [org.apache.commons.lang3.time.FastDatePrinter$NumberRule] */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v54 */
    /* JADX WARN: Type inference failed for: r11v55 */
    /* JADX WARN: Type inference failed for: r11v56 */
    /* JADX WARN: Type inference failed for: r11v57 */
    /* JADX WARN: Type inference failed for: r11v58 */
    /* JADX WARN: Type inference failed for: r11v59 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v60 */
    /* JADX WARN: Type inference failed for: r11v61 */
    /* JADX WARN: Type inference failed for: r11v62 */
    /* JADX WARN: Type inference failed for: r11v63 */
    /* JADX WARN: Type inference failed for: r11v64 */
    /* JADX WARN: Type inference failed for: r11v65 */
    /* JADX WARN: Type inference failed for: r11v66 */
    /* JADX WARN: Type inference failed for: r11v67 */
    /* JADX WARN: Type inference failed for: r11v68 */
    /* JADX WARN: Type inference failed for: r11v69 */
    /* JADX WARN: Type inference failed for: r11v70 */
    /* JADX WARN: Type inference failed for: r11v71 */
    /* JADX WARN: Type inference failed for: r11v72 */
    /* JADX WARN: Type inference failed for: r11v73 */
    /* JADX WARN: Type inference failed for: r11v74 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v9, types: [org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule] */
    public List<Rule> parsePattern() {
        int i10;
        int i11;
        ?? r11;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int i12 = 0;
        int i13 = 0;
        while (i13 < length) {
            int[] iArr = {i13};
            String parseToken = parseToken(this.mPattern, iArr);
            int i14 = iArr[i12];
            int length2 = parseToken.length();
            if (length2 == 0) {
                return arrayList;
            }
            char charAt = parseToken.charAt(i12);
            if (charAt == 'y') {
                i10 = 0;
                i11 = 2;
            } else if (charAt != 'z') {
                switch (charAt) {
                    case '\'':
                        String substring = parseToken.substring(1);
                        r11 = substring.length() == 1 ? new CharacterLiteral(substring.charAt(0)) : new StringLiteral(substring);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'K':
                        r11 = selectNumberRule(10, length2);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'M':
                        r11 = length2 >= 4 ? new TextField(2, months) : length2 == 3 ? new TextField(2, shortMonths) : length2 == 2 ? TwoDigitMonthField.INSTANCE : UnpaddedMonthField.INSTANCE;
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'S':
                        r11 = selectNumberRule(14, length2);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'a':
                        r11 = new TextField(9, amPmStrings);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'd':
                        r11 = selectNumberRule(5, length2);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'h':
                        r11 = new TwelveHourField(selectNumberRule(10, length2));
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'k':
                        r11 = new TwentyFourHourField(selectNumberRule(11, length2));
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'm':
                        r11 = selectNumberRule(12, length2);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 's':
                        r11 = selectNumberRule(13, length2);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'u':
                        r11 = new DayInWeekField(selectNumberRule(7, length2));
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    case 'w':
                        r11 = selectNumberRule(3, length2);
                        i10 = 0;
                        arrayList.add(r11);
                        i13 = i14 + 1;
                        i12 = i10;
                    default:
                        switch (charAt) {
                            case 'D':
                                r11 = selectNumberRule(6, length2);
                                i10 = 0;
                                arrayList.add(r11);
                                i13 = i14 + 1;
                                i12 = i10;
                            case 'E':
                                r11 = new TextField(7, length2 < 4 ? shortWeekdays : weekdays);
                                i10 = 0;
                                arrayList.add(r11);
                                i13 = i14 + 1;
                                i12 = i10;
                            case 'F':
                                r11 = selectNumberRule(8, length2);
                                i10 = 0;
                                arrayList.add(r11);
                                i13 = i14 + 1;
                                i12 = i10;
                            case 'G':
                                r11 = new TextField(0, eras);
                                i10 = 0;
                                arrayList.add(r11);
                                i13 = i14 + 1;
                                i12 = i10;
                            case 'H':
                                r11 = selectNumberRule(11, length2);
                                i10 = 0;
                                arrayList.add(r11);
                                i13 = i14 + 1;
                                i12 = i10;
                            default:
                                switch (charAt) {
                                    case 'W':
                                        r11 = selectNumberRule(4, length2);
                                        i10 = 0;
                                        arrayList.add(r11);
                                        i13 = i14 + 1;
                                        i12 = i10;
                                    case 'X':
                                        r11 = Iso8601_Rule.getRule(length2);
                                        i10 = 0;
                                        arrayList.add(r11);
                                        i13 = i14 + 1;
                                        i12 = i10;
                                    case 'Y':
                                        i11 = 2;
                                        i10 = 0;
                                        break;
                                    case 'Z':
                                        r11 = length2 == 1 ? TimeZoneNumberRule.INSTANCE_NO_COLON : length2 == 2 ? Iso8601_Rule.ISO8601_HOURS_COLON_MINUTES : TimeZoneNumberRule.INSTANCE_COLON;
                                        i10 = 0;
                                        arrayList.add(r11);
                                        i13 = i14 + 1;
                                        i12 = i10;
                                    default:
                                        throw new IllegalArgumentException("Illegal pattern component: " + parseToken);
                                }
                        }
                }
            } else if (length2 >= 4) {
                r11 = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 1);
                i10 = 0;
                arrayList.add(r11);
                i13 = i14 + 1;
                i12 = i10;
            } else {
                i10 = 0;
                r11 = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 0);
                arrayList.add(r11);
                i13 = i14 + 1;
                i12 = i10;
            }
            if (length2 == i11) {
                r11 = TwoDigitYearField.INSTANCE;
            } else {
                if (length2 < 4) {
                    length2 = 4;
                }
                r11 = selectNumberRule(1, length2);
            }
            if (charAt == 'Y') {
                r11 = new WeekYear(r11);
            }
            arrayList.add(r11);
            i13 = i14 + 1;
            i12 = i10;
        }
        return arrayList;
    }

    public String parseToken(String str, int[] iArr) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = iArr[0];
        int length = str.length();
        char charAt = str.charAt(i10);
        if ((charAt >= 'A' && charAt <= 'Z') || (charAt >= 'a' && charAt <= 'z')) {
            sb2.append(charAt);
            while (true) {
                int i11 = i10 + 1;
                if (i11 >= length || str.charAt(i11) != charAt) {
                    break;
                }
                sb2.append(charAt);
                i10 = i11;
            }
        } else {
            sb2.append(JavaElement.JEM_MODULAR_CLASSFILE);
            boolean z10 = false;
            while (i10 < length) {
                char charAt2 = str.charAt(i10);
                if (charAt2 != '\'') {
                    if (!z10 && ((charAt2 >= 'A' && charAt2 <= 'Z') || (charAt2 >= 'a' && charAt2 <= 'z'))) {
                        i10--;
                        break;
                    }
                    sb2.append(charAt2);
                } else {
                    int i12 = i10 + 1;
                    if (i12 >= length || str.charAt(i12) != '\'') {
                        z10 = !z10;
                    } else {
                        sb2.append(charAt2);
                        i10 = i12;
                    }
                }
                i10++;
            }
        }
        iArr[0] = i10;
        return sb2.toString();
    }

    public NumberRule selectNumberRule(int i10, int i11) {
        return i11 != 1 ? i11 != 2 ? new PaddedNumberField(i10, i11) : new TwoDigitNumberField(i10) : new UnpaddedNumberField(i10);
    }

    public String toString() {
        return "FastDatePrinter[" + this.mPattern + DocLint.SEPARATOR + ((Object) this.mLocale) + DocLint.SEPARATOR + this.mTimeZone.getID() + "]";
    }

    public static class DayInWeekField implements NumberRule {
        private final NumberRule mRule;

        public DayInWeekField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i10 = calendar.get(7);
            this.mRule.appendTo(appendable, i10 != 1 ? i10 - 1 : 7);
        }

        @Override
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override
        public void appendTo(Appendable appendable, int i10) throws IOException {
            this.mRule.appendTo(appendable, i10);
        }
    }

    private <B extends Appendable> B applyRules(Calendar calendar, B b10) {
        try {
            for (Rule rule : this.mRules) {
                rule.appendTo(b10, calendar);
            }
        } catch (IOException e10) {
            ExceptionUtils.rethrow(e10);
        }
        return b10;
    }

    public static class TwelveHourField implements NumberRule {
        private final NumberRule mRule;

        public TwelveHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i10 = calendar.get(10);
            if (i10 == 0) {
                i10 = calendar.getLeastMaximum(10) + 1;
            }
            this.mRule.appendTo(appendable, i10);
        }

        @Override
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override
        public void appendTo(Appendable appendable, int i10) throws IOException {
            this.mRule.appendTo(appendable, i10);
        }
    }

    public static class TwentyFourHourField implements NumberRule {
        private final NumberRule mRule;

        public TwentyFourHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i10 = calendar.get(11);
            if (i10 == 0) {
                i10 = calendar.getMaximum(11) + 1;
            }
            this.mRule.appendTo(appendable, i10);
        }

        @Override
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override
        public void appendTo(Appendable appendable, int i10) throws IOException {
            this.mRule.appendTo(appendable, i10);
        }
    }

    public String format(Object obj) {
        if (obj instanceof Date) {
            return format((Date) obj);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unknown class: ");
        sb2.append(obj == null ? "<null>" : obj.getClass().getName());
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override
    public String format(long j10) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j10);
        return applyRulesToString(newCalendar);
    }

    @Override
    public String format(Date date) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return applyRulesToString(newCalendar);
    }

    @Override
    public String format(Calendar calendar) {
        return ((StringBuilder) format(calendar, (Calendar) new StringBuilder(this.mMaxLengthEstimate))).toString();
    }

    @Override
    public StringBuffer format(long j10, StringBuffer stringBuffer) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j10);
        return (StringBuffer) applyRules(newCalendar, (Calendar) stringBuffer);
    }

    @Override
    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return (StringBuffer) applyRules(newCalendar, (Calendar) stringBuffer);
    }

    @Override
    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return format(calendar.getTime(), stringBuffer);
    }

    @Override
    public <B extends Appendable> B format(long j10, B b10) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j10);
        return (B) applyRules(newCalendar, (Calendar) b10);
    }

    @Override
    public <B extends Appendable> B format(Date date, B b10) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return (B) applyRules(newCalendar, (Calendar) b10);
    }

    @Override
    public <B extends Appendable> B format(Calendar calendar, B b10) {
        if (!calendar.getTimeZone().equals(this.mTimeZone)) {
            calendar = (Calendar) calendar.clone();
            calendar.setTimeZone(this.mTimeZone);
        }
        return (B) applyRules(calendar, (Calendar) b10);
    }
}
