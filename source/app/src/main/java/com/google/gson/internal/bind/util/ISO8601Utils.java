package com.google.gson.internal.bind.util;

import b3.s;
import com.google.android.material.timepicker.ChipTextInputComboView;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.eclipse.jdt.core.Signature;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone("UTC");

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean millis) {
        return format(date, millis, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean millis, TimeZone tz) {
        Calendar calendar = new GregorianCalendar(tz, Locale.US);
        calendar.setTime(date);
        int capacity = "yyyy-MM-ddThh:mm:ss".length();
        StringBuilder formatted = new StringBuilder(capacity + (millis ? ".sss".length() : 0) + (tz.getRawOffset() == 0 ? Signature.SIG_BOOLEAN.length() : "+hh:mm".length()));
        padInt(formatted, calendar.get(1), "yyyy".length());
        formatted.append('-');
        padInt(formatted, calendar.get(2) + 1, "MM".length());
        formatted.append('-');
        padInt(formatted, calendar.get(5), "dd".length());
        formatted.append('T');
        padInt(formatted, calendar.get(11), "hh".length());
        formatted.append(':');
        padInt(formatted, calendar.get(12), "mm".length());
        formatted.append(':');
        padInt(formatted, calendar.get(13), "ss".length());
        if (millis) {
            formatted.append('.');
            padInt(formatted, calendar.get(14), "sss".length());
        }
        int offset = tz.getOffset(calendar.getTimeInMillis());
        if (offset != 0) {
            int hours = Math.abs((offset / 60000) / 60);
            int minutes = Math.abs((offset / 60000) % 60);
            formatted.append(offset < 0 ? '-' : '+');
            padInt(formatted, hours, "hh".length());
            formatted.append(':');
            padInt(formatted, minutes, "mm".length());
        } else {
            formatted.append('Z');
        }
        return formatted.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date parse(String date, ParsePosition pos) throws ParseException {
        Exception fail;
        String msg;
        int offset;
        TimeZone timezone;
        char c10;
        try {
            int offset2 = pos.getIndex();
            int offset3 = offset2 + 4;
            int year = parseInt(date, offset2, offset3);
            if (checkOffset(date, offset3, '-')) {
                offset3++;
            }
            int i10 = offset3;
            int offset4 = offset3 + 2;
            int month = parseInt(date, i10, offset4);
            if (checkOffset(date, offset4, '-')) {
                offset4++;
            }
            int i11 = offset4;
            int offset5 = offset4 + 2;
            int day = parseInt(date, i11, offset5);
            int hour = 0;
            int minutes = 0;
            int seconds = 0;
            int milliseconds = 0;
            boolean hasT = checkOffset(date, offset5, 'T');
            if (!hasT && date.length() <= offset5) {
                Calendar calendar = new GregorianCalendar(year, month - 1, day);
                pos.setIndex(offset5);
                return calendar.getTime();
            }
            if (hasT) {
                int offset6 = offset5 + 1;
                int offset7 = offset6 + 2;
                hour = parseInt(date, offset6, offset7);
                if (checkOffset(date, offset7, ':')) {
                    offset7++;
                }
                int i12 = offset7;
                offset5 = offset7 + 2;
                minutes = parseInt(date, i12, offset5);
                if (checkOffset(date, offset5, ':')) {
                    offset5++;
                }
                if (date.length() > offset5 && (c10 = date.charAt(offset5)) != 'Z' && c10 != '+' && c10 != '-') {
                    int i13 = offset5;
                    offset5 += 2;
                    seconds = parseInt(date, i13, offset5);
                    if (seconds > 59 && seconds < 63) {
                        seconds = 59;
                    }
                    if (checkOffset(date, offset5, '.')) {
                        int offset8 = offset5 + 1;
                        int endOffset = indexOfNonDigit(date, offset8 + 1);
                        int parseEndOffset = Math.min(endOffset, offset8 + 3);
                        int fraction = parseInt(date, offset8, parseEndOffset);
                        switch (parseEndOffset - offset8) {
                            case 1:
                                milliseconds = fraction * 100;
                                break;
                            case 2:
                                milliseconds = fraction * 10;
                                break;
                            default:
                                milliseconds = fraction;
                                break;
                        }
                        offset5 = endOffset;
                    }
                }
            }
            if (date.length() <= offset5) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char timezoneIndicator = date.charAt(offset5);
            if (timezoneIndicator == 'Z') {
                timezone = TIMEZONE_UTC;
                offset = offset5 + 1;
            } else if (timezoneIndicator == '+' || timezoneIndicator == '-') {
                String timezoneOffset = date.substring(offset5);
                String timezoneOffset2 = timezoneOffset.length() >= 5 ? timezoneOffset : timezoneOffset + ChipTextInputComboView.b.f65192c;
                offset = offset5 + timezoneOffset2.length();
                if ("+0000".equals(timezoneOffset2) || "+00:00".equals(timezoneOffset2)) {
                    timezone = TIMEZONE_UTC;
                } else {
                    String timezoneId = "GMT" + timezoneOffset2;
                    timezone = TimeZone.getTimeZone(timezoneId);
                    String act = timezone.getID();
                    if (!act.equals(timezoneId)) {
                        String cleaned = act.replace(s.f32937c, "");
                        if (!cleaned.equals(timezoneId)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + timezoneId + " given, resolves to " + timezone.getID());
                        }
                    }
                }
            } else {
                throw new IndexOutOfBoundsException("Invalid time zone indicator '" + timezoneIndicator + "'");
            }
            Calendar calendar2 = new GregorianCalendar(timezone);
            calendar2.setLenient(false);
            calendar2.set(1, year);
            calendar2.set(2, month - 1);
            calendar2.set(5, day);
            calendar2.set(11, hour);
            calendar2.set(12, minutes);
            calendar2.set(13, seconds);
            calendar2.set(14, milliseconds);
            pos.setIndex(offset);
            return calendar2.getTime();
        } catch (IndexOutOfBoundsException e10) {
            fail = e10;
            String input = date == null ? null : '\"' + date + '\"';
            msg = fail.getMessage();
            if (msg != null || msg.isEmpty()) {
                msg = "(" + fail.getClass().getName() + ")";
            }
            ParseException ex = new ParseException("Failed to parse date [" + input + "]: " + msg, pos.getIndex());
            ex.initCause(fail);
            throw ex;
        } catch (NumberFormatException e11) {
            fail = e11;
            String input2 = date == null ? null : '\"' + date + '\"';
            msg = fail.getMessage();
            if (msg != null) {
            }
            msg = "(" + fail.getClass().getName() + ")";
            ParseException ex2 = new ParseException("Failed to parse date [" + input2 + "]: " + msg, pos.getIndex());
            ex2.initCause(fail);
            throw ex2;
        } catch (IllegalArgumentException e12) {
            fail = e12;
            String input22 = date == null ? null : '\"' + date + '\"';
            msg = fail.getMessage();
            if (msg != null) {
            }
            msg = "(" + fail.getClass().getName() + ")";
            ParseException ex22 = new ParseException("Failed to parse date [" + input22 + "]: " + msg, pos.getIndex());
            ex22.initCause(fail);
            throw ex22;
        }
    }

    private static boolean checkOffset(String value, int offset, char expected) {
        return offset < value.length() && value.charAt(offset) == expected;
    }

    private static int parseInt(String value, int beginIndex, int endIndex) throws NumberFormatException {
        if (beginIndex < 0 || endIndex > value.length() || beginIndex > endIndex) {
            throw new NumberFormatException(value);
        }
        int i10 = beginIndex;
        int result = 0;
        if (i10 < endIndex) {
            i10++;
            int digit = Character.digit(value.charAt(i10), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = -digit;
        }
        while (i10 < endIndex) {
            int i11 = i10;
            i10++;
            int digit2 = Character.digit(value.charAt(i11), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = (result * 10) - digit2;
        }
        return -result;
    }

    private static void padInt(StringBuilder buffer, int value, int length) {
        String strValue = Integer.toString(value);
        for (int i10 = length - strValue.length(); i10 > 0; i10--) {
            buffer.append('0');
        }
        buffer.append(strValue);
    }

    private static int indexOfNonDigit(String string, int offset) {
        for (int i10 = offset; i10 < string.length(); i10++) {
            char c10 = string.charAt(i10);
            if (c10 < '0' || c10 > '9') {
                return i10;
            }
        }
        return string.length();
    }
}
