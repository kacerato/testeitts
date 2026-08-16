package com.android.tools.r8.internal;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class C5227Gn0 extends AbstractC9997vt0 {

    public static final C5169Fn0 f40589b = new C5169Fn0();

    public final SimpleDateFormat f40590a = new SimpleDateFormat("MMM d, yyyy");

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        String format;
        Date date = (Date) obj;
        if (date == null) {
            c9075qL.i();
            return;
        }
        synchronized (this) {
            format = this.f40590a.format((java.util.Date) date);
        }
        c9075qL.d(format);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        java.util.Date parse;
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        try {
            synchronized (this) {
                parse = this.f40590a.parse(s10);
            }
            return new Date(parse.getTime());
        } catch (ParseException e10) {
            throw new C8407mL("Failed parsing '" + s10 + "' as SQL Date; at path " + c8240lL.j(), e10);
        }
    }
}
