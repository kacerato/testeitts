package com.android.tools.r8.internal;

import com.google.android.material.timepicker.ChipTextInputComboView;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.eclipse.jdt.internal.core.JavadocConstants;

public abstract class AbstractC9884vB {

    public static final TimeZone f53054a = TimeZone.getTimeZone("UTC");

    /* JADX WARN: Removed duplicated region for block: B:100:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date a(String str, ParsePosition parsePosition) {
        String message;
        int i10;
        int i11;
        int i12;
        int i13;
        int length;
        TimeZone timeZone;
        char charAt;
        int length2;
        try {
            int index = parsePosition.getIndex();
            int i14 = index + 4;
            int a10 = a(str, index, i14);
            if (a(str, '-', i14)) {
                i14 = index + 5;
            }
            int i15 = i14 + 2;
            int a11 = a(str, i14, i15);
            if (a(str, '-', i15)) {
                i15 = i14 + 3;
            }
            int i16 = i15 + 2;
            int a12 = a(str, i15, i16);
            boolean a13 = a(str, 'T', i16);
            if (!a13 && str.length() <= i16) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(a10, a11 - 1, a12);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i16);
                return gregorianCalendar.getTime();
            }
            if (a13) {
                int i17 = i15 + 5;
                int a14 = a(str, i15 + 3, i17);
                if (a(str, ':', i17)) {
                    i17 = i15 + 6;
                }
                int i18 = i17 + 2;
                int a15 = a(str, i17, i18);
                if (a(str, ':', i18)) {
                    i18 = i17 + 3;
                }
                if (str.length() <= i18 || (charAt = str.charAt(i18)) == 'Z' || charAt == '+' || charAt == '-') {
                    i11 = a15;
                    i12 = 0;
                    i13 = 0;
                    i16 = i18;
                    i10 = a14;
                } else {
                    int i19 = i18 + 2;
                    i13 = a(str, i18, i19);
                    if (i13 > 59 && i13 < 63) {
                        i13 = 59;
                    }
                    if (a(str, '.', i19)) {
                        int i20 = i18 + 3;
                        for (int i21 = i18 + 4; i21 < str.length(); i21++) {
                            char charAt2 = str.charAt(i21);
                            if (charAt2 >= '0' && charAt2 <= '9') {
                            }
                            length2 = i21;
                        }
                        length2 = str.length();
                        int min = Math.min(length2, i18 + 6);
                        i12 = a(str, i20, min);
                        int i22 = min - i20;
                        if (i22 == 1) {
                            i12 *= 100;
                        } else if (i22 == 2) {
                            i12 *= 10;
                        }
                        i10 = a14;
                        i16 = length2;
                        i11 = a15;
                    } else {
                        i10 = a14;
                        i16 = i19;
                        i11 = a15;
                        i12 = 0;
                    }
                }
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 0;
                i13 = 0;
            }
            if (str.length() > i16) {
                char charAt3 = str.charAt(i16);
                if (charAt3 == 'Z') {
                    timeZone = f53054a;
                    length = i16 + 1;
                } else {
                    if (charAt3 != '+' && charAt3 != '-') {
                        throw new IndexOutOfBoundsException("Invalid time zone indicator '" + charAt3 + "'");
                    }
                    String substring = str.substring(i16);
                    if (substring.length() < 5) {
                        substring = substring + ChipTextInputComboView.b.f65192c;
                    }
                    length = i16 + substring.length();
                    if (!"+0000".equals(substring) && !"+00:00".equals(substring)) {
                        String str2 = "GMT" + substring;
                        TimeZone timeZone2 = TimeZone.getTimeZone(str2);
                        String id2 = timeZone2.getID();
                        if (!id2.equals(str2) && !id2.replace(b3.s.f32937c, "").equals(str2)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str2 + " given, resolves to " + timeZone2.getID());
                        }
                        timeZone = timeZone2;
                    }
                    timeZone = f53054a;
                }
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                gregorianCalendar2.setLenient(false);
                gregorianCalendar2.set(1, a10);
                gregorianCalendar2.set(2, a11 - 1);
                gregorianCalendar2.set(5, a12);
                gregorianCalendar2.set(11, i10);
                gregorianCalendar2.set(12, i11);
                gregorianCalendar2.set(13, i13);
                gregorianCalendar2.set(14, i12);
                parsePosition.setIndex(length);
                return gregorianCalendar2.getTime();
            }
            throw new IllegalArgumentException("No time zone indicator");
        } catch (IndexOutOfBoundsException e10) {
            e = e10;
            String str3 = str == null ? null : JavadocConstants.ANCHOR_PREFIX_END + str + '\"';
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str3 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (NumberFormatException e11) {
            e = e11;
            if (str == null) {
            }
            message = e.getMessage();
            if (message != null) {
            }
            message = "(" + e.getClass().getName() + ")";
            ParseException parseException2 = new ParseException("Failed to parse date [" + str3 + "]: " + message, parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        } catch (IllegalArgumentException e12) {
            e = e12;
            if (str == null) {
            }
            message = e.getMessage();
            if (message != null) {
            }
            message = "(" + e.getClass().getName() + ")";
            ParseException parseException22 = new ParseException("Failed to parse date [" + str3 + "]: " + message, parsePosition.getIndex());
            parseException22.initCause(e);
            throw parseException22;
        }
    }

    public static boolean a(String str, char c10, int i10) {
        return i10 < str.length() && str.charAt(i10) == c10;
    }

    public static int a(String str, int i10, int i11) {
        int i12;
        int i13;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            i13 = i10 + 1;
            int digit = Character.digit(str.charAt(i10), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = -digit;
        } else {
            i12 = 0;
            i13 = i10;
        }
        while (i13 < i11) {
            int i14 = i13 + 1;
            int digit2 = Character.digit(str.charAt(i13), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = (i12 * 10) - digit2;
            i13 = i14;
        }
        return -i12;
    }
}
