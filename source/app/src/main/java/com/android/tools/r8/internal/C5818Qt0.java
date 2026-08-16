package com.android.tools.r8.internal;

import android.provider.MediaStore;
import java.util.Calendar;
import java.util.GregorianCalendar;

public final class C5818Qt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (((Calendar) obj) == null) {
            c9075qL.i();
            return;
        }
        c9075qL.e();
        c9075qL.b(MediaStore.Audio.AudioColumns.YEAR);
        c9075qL.a(r4.get(1));
        c9075qL.b("month");
        c9075qL.a(r4.get(2));
        c9075qL.b("dayOfMonth");
        c9075qL.a(r4.get(5));
        c9075qL.b("hourOfDay");
        c9075qL.a(r4.get(11));
        c9075qL.b("minute");
        c9075qL.a(r4.get(12));
        c9075qL.b("second");
        c9075qL.a(r4.get(13));
        c9075qL.g();
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        c8240lL.d();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (c8240lL.u() != 4) {
            String q10 = c8240lL.q();
            int o10 = c8240lL.o();
            if (MediaStore.Audio.AudioColumns.YEAR.equals(q10)) {
                i10 = o10;
            } else if ("month".equals(q10)) {
                i11 = o10;
            } else if ("dayOfMonth".equals(q10)) {
                i12 = o10;
            } else if ("hourOfDay".equals(q10)) {
                i13 = o10;
            } else if ("minute".equals(q10)) {
                i14 = o10;
            } else if ("second".equals(q10)) {
                i15 = o10;
            }
        }
        c8240lL.h();
        return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
    }
}
