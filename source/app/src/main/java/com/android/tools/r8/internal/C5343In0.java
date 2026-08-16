package com.android.tools.r8.internal;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class C5343In0 extends AbstractC9997vt0 {

    public static final C5285Hn0 f41210b = new C5285Hn0();

    public final SimpleDateFormat f41211a = new SimpleDateFormat("hh:mm:ss a");

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        String format;
        Time time = (Time) obj;
        if (time == null) {
            c9075qL.i();
            return;
        }
        synchronized (this) {
            format = this.f41211a.format((Date) time);
        }
        c9075qL.d(format);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        Time time;
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        try {
            synchronized (this) {
                time = new Time(this.f41211a.parse(s10).getTime());
            }
            return time;
        } catch (ParseException e10) {
            throw new C8407mL("Failed parsing '" + s10 + "' as SQL Time; at path " + c8240lL.j(), e10);
        }
    }
}
