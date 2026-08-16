package com.android.tools.r8.internal;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

public final class C6464aj extends AbstractC9997vt0 {

    public static final C6312Zi f46592b = new C6312Zi();

    public final ArrayList f46593a;

    public C6464aj() {
        ArrayList arrayList = new ArrayList();
        this.f46593a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (QK.f43541a >= 9) {
            arrayList.add(Q60.a(2, 2));
        }
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        String format;
        Date date = (Date) obj;
        if (date == null) {
            c9075qL.i();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f46593a.get(0);
        synchronized (this.f46593a) {
            format = dateFormat.format(date);
        }
        c9075qL.d(format);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        synchronized (this.f46593a) {
            try {
                ArrayList arrayList = this.f46593a;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    try {
                        return ((DateFormat) obj).parse(s10);
                    } catch (ParseException unused) {
                    }
                }
                try {
                    return AbstractC9884vB.a(s10, new ParsePosition(0));
                } catch (ParseException e10) {
                    throw new C8407mL("Failed parsing '" + s10 + "' as Date; at path " + c8240lL.j(), e10);
                }
            } finally {
            }
        }
    }
}
