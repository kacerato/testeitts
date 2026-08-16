package com.google.android.gms.measurement.internal;

import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class C extends T3 {

    public long f62569c;

    public String f62570d;

    public C(C12370p3 c12370p3) {
        super(c12370p3);
    }

    @Override
    public final boolean i() {
        Calendar calendar = Calendar.getInstance();
        this.f62569c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb2.append(lowerCase);
        sb2.append("-");
        sb2.append(lowerCase2);
        this.f62570d = sb2.toString();
        return false;
    }

    public final long o() {
        l();
        return this.f62569c;
    }

    public final String p() {
        l();
        return this.f62570d;
    }
}
