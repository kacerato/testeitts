package com.google.android.material.datepicker;

import android.content.Context;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class g {
    public static Pair<String, String> a(@Nullable Long l10, @Nullable Long l11) {
        return b(l10, l11, null);
    }

    public static Pair<String, String> b(@Nullable Long l10, @Nullable Long l11, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l10 == null && l11 == null) {
            return Pair.create(null, null);
        }
        if (l10 == null) {
            return Pair.create(null, d(l11.longValue(), simpleDateFormat));
        }
        if (l11 == null) {
            return Pair.create(d(l10.longValue(), simpleDateFormat), null);
        }
        Calendar t10 = y.t();
        Calendar v10 = y.v();
        v10.setTimeInMillis(l10.longValue());
        Calendar v11 = y.v();
        v11.setTimeInMillis(l11.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l10.longValue())), simpleDateFormat.format(new Date(l11.longValue())));
        }
        return v10.get(1) == v11.get(1) ? v10.get(1) == t10.get(1) ? Pair.create(f(l10.longValue(), Locale.getDefault()), f(l11.longValue(), Locale.getDefault())) : Pair.create(f(l10.longValue(), Locale.getDefault()), k(l11.longValue(), Locale.getDefault())) : Pair.create(k(l10.longValue(), Locale.getDefault()), k(l11.longValue(), Locale.getDefault()));
    }

    public static String c(long j10) {
        return d(j10, null);
    }

    public static String d(long j10, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar t10 = y.t();
        Calendar v10 = y.v();
        v10.setTimeInMillis(j10);
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j10)) : t10.get(1) == v10.get(1) ? e(j10) : j(j10);
    }

    public static String e(long j10) {
        return f(j10, Locale.getDefault());
    }

    public static String f(long j10, Locale locale) {
        return y.c(locale).format(new Date(j10));
    }

    public static String g(long j10) {
        return h(j10, Locale.getDefault());
    }

    public static String h(long j10, Locale locale) {
        return y.d(locale).format(new Date(j10));
    }

    public static String i(Context context, long j10) {
        return DateUtils.formatDateTime(context, j10 - TimeZone.getDefault().getOffset(j10), 36);
    }

    public static String j(long j10) {
        return k(j10, Locale.getDefault());
    }

    public static String k(long j10, Locale locale) {
        return y.x(locale).format(new Date(j10));
    }

    public static String l(long j10) {
        return m(j10, Locale.getDefault());
    }

    public static String m(long j10, Locale locale) {
        return y.y(locale).format(new Date(j10));
    }
}
