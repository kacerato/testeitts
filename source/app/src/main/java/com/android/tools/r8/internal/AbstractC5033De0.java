package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;

public abstract class AbstractC5033De0 extends AbstractC9997vt0 {

    public final LinkedHashMap f39580a;

    public AbstractC5033De0(LinkedHashMap linkedHashMap) {
        this.f39580a = linkedHashMap;
    }

    public abstract Object a();

    public abstract Object a(Object obj);

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (obj == null) {
            c9075qL.i();
            return;
        }
        c9075qL.e();
        try {
            Iterator it = this.f39580a.values().iterator();
            while (it.hasNext()) {
                ((C4975Ce0) it.next()).a(c9075qL, obj);
            }
            c9075qL.g();
        } catch (IllegalAccessException e10) {
            AbstractC9952ve0 abstractC9952ve0 = AbstractC10453ye0.f54092a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e10);
        }
    }

    public abstract void a(Object obj, C8240lL c8240lL, C4975Ce0 c4975Ce0);

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        Object a10 = a();
        try {
            c8240lL.d();
            while (c8240lL.k()) {
                C4975Ce0 c4975Ce0 = (C4975Ce0) this.f39580a.get(c8240lL.q());
                if (c4975Ce0 != null && c4975Ce0.f39296e) {
                    a(a10, c8240lL, c4975Ce0);
                }
                c8240lL.y();
            }
            c8240lL.h();
            return a(a10);
        } catch (IllegalAccessException e10) {
            AbstractC9952ve0 abstractC9952ve0 = AbstractC10453ye0.f54092a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e10);
        } catch (IllegalStateException e11) {
            throw new C8407mL(e11);
        }
    }
}
