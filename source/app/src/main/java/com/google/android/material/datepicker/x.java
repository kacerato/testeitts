package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;

public class x {

    public static final x f64406c = new x(null, null);

    @Nullable
    public final Long f64407a;

    @Nullable
    public final TimeZone f64408b;

    public x(@Nullable Long l10, @Nullable TimeZone timeZone) {
        this.f64407a = l10;
        this.f64408b = timeZone;
    }

    public static x a(long j10) {
        return new x(Long.valueOf(j10), null);
    }

    public static x b(long j10, @Nullable TimeZone timeZone) {
        return new x(Long.valueOf(j10), timeZone);
    }

    public static x e() {
        return f64406c;
    }

    public Calendar c() {
        return d(this.f64408b);
    }

    public Calendar d(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l10 = this.f64407a;
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        return calendar;
    }
}
