package com.android.tools.r8.internal;

import java.util.HashSet;
import java.util.Iterator;
import java.util.function.BiFunction;

public final class RM {

    public QM f43880a;

    public final HashSet f43881b = new HashSet();

    public boolean f43882c = false;

    public RM(QM qm2) {
        this.f43880a = qm2;
    }

    public final Object a(MM mm2, Object obj, BiFunction biFunction) {
        PM pm2 = mm2.f42280a;
        NM nm2 = (NM) this.f43880a.f43558a.get(pm2);
        if (nm2 != null) {
            FO fo = nm2.f42571a;
            LO b10 = fo.b();
            this.f43881b.add(pm2);
            if (b10 != null) {
                this.f43881b.add(b10.f41952b.f42280a);
            }
            if (mm2.d() && b10 != null) {
                Object apply = biFunction.apply(b10.f41952b, obj);
                this.f43882c = true;
                return apply;
            }
            if (mm2.b() == null || !fo.e()) {
                return obj;
            }
            throw new FN("Invalid member-reference the class-type binding '" + ((Object) pm2) + "'");
        }
        throw new FN("Unbound reference to '" + ((Object) pm2) + "'");
    }

    public final QM a() {
        if (this.f43880a.f43558a.size() == this.f43881b.size()) {
            return this.f43880a;
        }
        OM om2 = new OM();
        Iterator it = this.f43881b.iterator();
        while (it.hasNext()) {
            PM pm2 = (PM) it.next();
            om2.a(pm2, ((NM) this.f43880a.f43558a.get(pm2)).f42571a);
        }
        this.f43880a = null;
        return om2.a();
    }
}
