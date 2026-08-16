package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.Objects;
import java.util.function.Function;

public final class C8914pO {

    public static final boolean f51510c = true;

    public final OM f51511a;

    public final HashMap f51512b;

    public C8914pO() {
        QM qm2 = QM.f43556b;
        this.f51511a = new OM();
        this.f51512b = new HashMap();
    }

    public final void a(String str, MM mm2, B50 b50) {
        PM pm2 = mm2.f42280a;
        if (this.f51512b.get(pm2.toString()) != pm2) {
            this.f51511a.a(a(str), this.f51511a.a(mm2.f42280a));
            return;
        }
        throw AbstractC10449yd.a(b50, b50, "Invalid binding reference to '" + ((Object) mm2) + "' in binding definition of '" + str + "'");
    }

    public final PM a(String str) {
        HashMap hashMap = this.f51512b;
        final OM om2 = this.f51511a;
        Objects.requireNonNull(om2);
        return (PM) hashMap.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return OM.this.a((String) obj);
            }
        });
    }

    public final FO a(MM mm2) {
        if (mm2.d()) {
            UM a10 = mm2.a();
            OM om2 = this.f51511a;
            FO fo = (FO) om2.f42862b.get(a10.f42280a);
            if (f51510c || fo != null) {
                return fo.a();
            }
            throw new AssertionError();
        }
        JO b10 = mm2.b();
        OM om3 = this.f51511a;
        FO fo2 = (FO) om3.f42862b.get(b10.f42280a);
        if (f51510c || fo2 != null) {
            return fo2.b();
        }
        throw new AssertionError();
    }
}
