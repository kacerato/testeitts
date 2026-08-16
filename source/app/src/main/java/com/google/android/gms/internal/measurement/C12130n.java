package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C12130n implements InterfaceC12157q, InterfaceC12121m {

    @v2.d
    public final Map f62366b = new HashMap();

    @Override
    public final String P1() {
        return "[object Object]";
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
        return InterfaceC12121m.d(this.f62366b);
    }

    @Override
    public final InterfaceC12157q c(String str) {
        Map map = this.f62366b;
        return map.containsKey(str) ? (InterfaceC12157q) map.get(str) : InterfaceC12157q.f62394o4;
    }

    @Override
    public final boolean e(String str) {
        return this.f62366b.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C12130n) {
            return this.f62366b.equals(((C12130n) obj).f62366b);
        }
        return false;
    }

    @Override
    public final void f(String str, InterfaceC12157q interfaceC12157q) {
        if (interfaceC12157q == null) {
            this.f62366b.remove(str);
        } else {
            this.f62366b.put(str, interfaceC12157q);
        }
    }

    @Override
    public final InterfaceC12157q g() {
        C12130n c12130n = new C12130n();
        for (Map.Entry entry : this.f62366b.entrySet()) {
            if (entry.getValue() instanceof InterfaceC12121m) {
                c12130n.f62366b.put((String) entry.getKey(), (InterfaceC12157q) entry.getValue());
            } else {
                c12130n.f62366b.put((String) entry.getKey(), ((InterfaceC12157q) entry.getValue()).g());
            }
        }
        return c12130n;
    }

    @Override
    public InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        return "toString".equals(str) ? new C12192u(toString()) : InterfaceC12121m.b(this, new C12192u(str), c12079h2, list);
    }

    public final int hashCode() {
        return this.f62366b.hashCode();
    }

    public final List i() {
        return new ArrayList(this.f62366b.o());
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Map map = this.f62366b;
        if (!map.isEmpty()) {
            for (String str : map.o()) {
                sb2.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb2.deleteCharAt(sb2.lastIndexOf(DocLint.SEPARATOR));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }
}
