package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class AbstractC12103k implements InterfaceC12157q, InterfaceC12121m {

    public final String f62337b;

    public final Map f62338c = new HashMap();

    public AbstractC12103k(String str) {
        this.f62337b = str;
    }

    @Override
    public final String P1() {
        return this.f62337b;
    }

    @Override
    public final Double Q1() {
        return Double.valueOf(Double.NaN);
    }

    @Override
    public final Boolean R1() {
        return Boolean.TRUE;
    }

    @Override
    public final Iterator a() {
        return InterfaceC12121m.d(this.f62338c);
    }

    @Override
    public final InterfaceC12157q c(String str) {
        Map map = this.f62338c;
        return map.containsKey(str) ? (InterfaceC12157q) map.get(str) : InterfaceC12157q.f62394o4;
    }

    @Override
    public final boolean e(String str) {
        return this.f62338c.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC12103k)) {
            return false;
        }
        AbstractC12103k abstractC12103k = (AbstractC12103k) obj;
        String str = this.f62337b;
        if (str != null) {
            return str.equals(abstractC12103k.f62337b);
        }
        return false;
    }

    @Override
    public final void f(String str, InterfaceC12157q interfaceC12157q) {
        if (interfaceC12157q == null) {
            this.f62338c.remove(str);
        } else {
            this.f62338c.put(str, interfaceC12157q);
        }
    }

    @Override
    public InterfaceC12157q g() {
        return this;
    }

    @Override
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        return "toString".equals(str) ? new C12192u(this.f62337b) : InterfaceC12121m.b(this, new C12192u(str), c12079h2, list);
    }

    public final int hashCode() {
        String str = this.f62337b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public abstract InterfaceC12157q i(C12079h2 c12079h2, List list);

    public final String j() {
        return this.f62337b;
    }
}
