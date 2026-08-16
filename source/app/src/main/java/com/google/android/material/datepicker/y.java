package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DateFormat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import org.openjdk.tools.doclint.DocLint;
import w1.C15879a;

public class y {

    public static final String f64409a = "UTC";

    public static AtomicReference<x> f64410b = new AtomicReference<>();

    public static void A(@Nullable x xVar) {
        f64410b.set(xVar);
    }

    public static long a(long j10) {
        Calendar v10 = v();
        v10.setTimeInMillis(j10);
        return f(v10).getTimeInMillis();
    }

    public static int b(@NonNull String str, @NonNull String str2, int i10, int i11) {
        while (i11 >= 0 && i11 < str.length() && str2.indexOf(str.charAt(i11)) == -1) {
            if (str.charAt(i11) != '\'') {
                i11 += i10;
            }
            do {
                i11 += i10;
                if (i11 >= 0 && i11 < str.length()) {
                }
                i11 += i10;
            } while (str.charAt(i11) != '\'');
            i11 += i10;
        }
        return i11;
    }

    @TargetApi(24)
    public static DateFormat c(Locale locale) {
        return e(DateFormat.ABBR_MONTH_DAY, locale);
    }

    @TargetApi(24)
    public static DateFormat d(Locale locale) {
        return e(DateFormat.ABBR_MONTH_WEEKDAY_DAY, locale);
    }

    @TargetApi(24)
    public static DateFormat e(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(u());
        return instanceForSkeleton;
    }

    public static Calendar f(Calendar calendar) {
        Calendar w10 = w(calendar);
        Calendar v10 = v();
        v10.set(w10.get(1), w10.get(2), w10.get(5));
        return v10;
    }

    public static java.text.DateFormat g(int i10, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i10, locale);
        dateInstance.setTimeZone(s());
        return dateInstance;
    }

    public static java.text.DateFormat h() {
        return i(Locale.getDefault());
    }

    public static java.text.DateFormat i(Locale locale) {
        return g(0, locale);
    }

    public static java.text.DateFormat j() {
        return k(Locale.getDefault());
    }

    public static java.text.DateFormat k(Locale locale) {
        return g(2, locale);
    }

    public static java.text.DateFormat l() {
        return m(Locale.getDefault());
    }

    public static java.text.DateFormat m(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) k(locale);
        simpleDateFormat.applyPattern(z(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    public static SimpleDateFormat n(String str) {
        return o(str, Locale.getDefault());
    }

    public static SimpleDateFormat o(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(s());
        return simpleDateFormat;
    }

    public static SimpleDateFormat p() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(s());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    public static String q(Resources resources, SimpleDateFormat simpleDateFormat) {
        String localizedPattern = simpleDateFormat.toLocalizedPattern();
        return localizedPattern.replaceAll("d", resources.getString(C15879a.m.f124056M0)).replaceAll("M", resources.getString(C15879a.m.f124058N0)).replaceAll("y", resources.getString(C15879a.m.f124060O0));
    }

    public static x r() {
        x xVar = f64410b.get();
        return xVar == null ? x.e() : xVar;
    }

    public static TimeZone s() {
        return TimeZone.getTimeZone("UTC");
    }

    public static Calendar t() {
        Calendar c10 = r().c();
        c10.set(11, 0);
        c10.set(12, 0);
        c10.set(13, 0);
        c10.set(14, 0);
        c10.setTimeZone(s());
        return c10;
    }

    @TargetApi(24)
    public static android.icu.util.TimeZone u() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }

    public static Calendar v() {
        return w(null);
    }

    public static Calendar w(@Nullable Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(s());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    public static DateFormat x(Locale locale) {
        return e(DateFormat.YEAR_ABBR_MONTH_DAY, locale);
    }

    @TargetApi(24)
    public static DateFormat y(Locale locale) {
        return e(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY, locale);
    }

    @NonNull
    public static String z(@NonNull String str) {
        int b10 = b(str, "yY", 1, 0);
        if (b10 >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int b11 = b(str, "EMd", 1, b10);
        if (b11 < str.length()) {
            str2 = "EMd" + DocLint.SEPARATOR;
        }
        return str.replace(str.substring(b(str, str2, -1, b10) + 1, b11), " ").trim();
    }
}
