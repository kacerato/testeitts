package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C12098j3 {
    public static InterfaceC12157q a(Object obj) {
        if (obj == null) {
            return InterfaceC12157q.f62395p4;
        }
        if (obj instanceof String) {
            return new C12192u((String) obj);
        }
        if (obj instanceof Double) {
            return new C12094j((Double) obj);
        }
        if (obj instanceof Long) {
            return new C12094j(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new C12094j(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new C12067g((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            C12058f c12058f = new C12058f();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                c12058f.n(c12058f.k(), a(it.next()));
            }
            return c12058f;
        }
        C12130n c12130n = new C12130n();
        Map map = (Map) obj;
        for (Object obj2 : map.o()) {
            InterfaceC12157q a10 = a(map.get(obj2));
            if (obj2 != null) {
                if (!(obj2 instanceof String)) {
                    obj2 = obj2.toString();
                }
                c12130n.f((String) obj2, a10);
            }
        }
        return c12130n;
    }

    public static InterfaceC12157q b(P3 p32) {
        if (p32 == null) {
            return InterfaceC12157q.f62394o4;
        }
        int N10 = p32.N() - 1;
        if (N10 == 1) {
            return p32.G() ? new C12192u(p32.H()) : InterfaceC12157q.f62401w4;
        }
        if (N10 == 2) {
            return p32.K() ? new C12094j(Double.valueOf(p32.L())) : new C12094j(null);
        }
        if (N10 == 3) {
            return p32.I() ? new C12067g(Boolean.valueOf(p32.J())) : new C12067g(null);
        }
        if (N10 != 4) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        List E10 = p32.E();
        ArrayList arrayList = new ArrayList();
        Iterator it = E10.iterator();
        while (it.hasNext()) {
            arrayList.add(b((P3) it.next()));
        }
        return new r(p32.F(), arrayList);
    }
}
