package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public interface InterfaceC12121m {
    static InterfaceC12157q b(InterfaceC12121m interfaceC12121m, InterfaceC12157q interfaceC12157q, C12079h2 c12079h2, List list) {
        if (interfaceC12121m.e(interfaceC12157q.P1())) {
            InterfaceC12157q c10 = interfaceC12121m.c(interfaceC12157q.P1());
            if (c10 instanceof AbstractC12103k) {
                return ((AbstractC12103k) c10).i(c12079h2, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", interfaceC12157q.P1()));
        }
        if (!"hasOwnProperty".equals(interfaceC12157q.P1())) {
            throw new IllegalArgumentException(String.format("Object has no function %s", interfaceC12157q.P1()));
        }
        I2.a("hasOwnProperty", 1, list);
        return interfaceC12121m.e(c12079h2.a((InterfaceC12157q) list.get(0)).P1()) ? InterfaceC12157q.f62399t4 : InterfaceC12157q.f62400u4;
    }

    static Iterator d(Map map) {
        return new C12112l(map.o().iterator());
    }

    InterfaceC12157q c(String str);

    boolean e(String str);

    void f(String str, InterfaceC12157q interfaceC12157q);
}
