package com.android.tools.r8.internal;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;

public final class C10133wj extends AbstractC9997vt0 {

    public final AbstractC9966vj f53580a;

    public final ArrayList f53581b;

    public C10133wj(AbstractC9966vj abstractC9966vj, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f53581b = arrayList;
        Objects.requireNonNull(abstractC9966vj);
        this.f53580a = abstractC9966vj;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i10, i11, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i10, i11));
        }
        if (QK.f43541a >= 9) {
            arrayList.add(Q60.a(i10, i11));
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
        DateFormat dateFormat = (DateFormat) this.f53581b.get(0);
        synchronized (this.f53581b) {
            format = dateFormat.format(date);
        }
        c9075qL.d(format);
    }

    public final String toString() {
        DateFormat dateFormat = (DateFormat) this.f53581b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        Date a10;
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        synchronized (this.f53581b) {
            try {
                ArrayList arrayList = this.f53581b;
                int size = arrayList.size();
                int i10 = 0;
                while (true) {
                    if (i10 < size) {
                        Object obj = arrayList.get(i10);
                        i10++;
                        try {
                            a10 = ((DateFormat) obj).parse(s10);
                        } catch (ParseException unused) {
                        }
                    } else {
                        try {
                            a10 = AbstractC9884vB.a(s10, new ParsePosition(0));
                            break;
                        } catch (ParseException e10) {
                            throw new C8407mL("Failed parsing '" + s10 + "' as Date; at path " + c8240lL.j(), e10);
                        }
                    }
                }
            } finally {
            }
        }
        return this.f53580a.a(a10);
    }
}
