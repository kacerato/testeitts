package com.android.tools.r8.internal;

import java.sql.Timestamp;
import java.util.Date;

public final class C5459Kn0 extends AbstractC9997vt0 {

    public static final C5401Jn0 f41779b = new C5401Jn0();

    public final AbstractC9997vt0 f41780a;

    public C5459Kn0(AbstractC9997vt0 abstractC9997vt0) {
        this.f41780a = abstractC9997vt0;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        this.f41780a.a(c9075qL, (Timestamp) obj);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        Date date = (Date) this.f41780a.a(c8240lL);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }
}
