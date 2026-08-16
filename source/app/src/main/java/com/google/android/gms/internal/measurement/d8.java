package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public final class d8 extends AbstractC12103k {

    public final K3 f62255d;

    @v2.d
    public final Map f62256e;

    public d8(K3 k32) {
        super("require");
        this.f62256e = new HashMap();
        this.f62255d = k32;
    }

    @Override
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        InterfaceC12157q interfaceC12157q;
        I2.a("require", 1, list);
        String P12 = c12079h2.a((InterfaceC12157q) list.get(0)).P1();
        Map map = this.f62256e;
        if (map.containsKey(P12)) {
            return (InterfaceC12157q) map.get(P12);
        }
        Map map2 = this.f62255d.f61972a;
        if (map2.containsKey(P12)) {
            try {
                interfaceC12157q = (InterfaceC12157q) ((Callable) map2.get(P12)).call();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to create API implementation: ".concat(String.valueOf(P12)));
            }
        } else {
            interfaceC12157q = InterfaceC12157q.f62394o4;
        }
        if (interfaceC12157q instanceof AbstractC12103k) {
            this.f62256e.put(P12, (AbstractC12103k) interfaceC12157q);
        }
        return interfaceC12157q;
    }
}
