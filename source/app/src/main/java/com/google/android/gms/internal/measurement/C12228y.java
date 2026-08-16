package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class C12228y {

    @v2.d
    public final Map f62483a = new HashMap();

    public final L f62484b = new L();

    public C12228y() {
        a(new C12210w());
        a(new C12237z());
        a(new A());
        a(new E());
        a(new J());
        a(new K());
        a(new M());
    }

    public final void a(AbstractC12219x abstractC12219x) {
        Iterator it = abstractC12219x.f62478a.iterator();
        while (it.hasNext()) {
            this.f62483a.put(((N) it.next()).b().toString(), abstractC12219x);
        }
    }

    public final InterfaceC12157q b(C12079h2 c12079h2, InterfaceC12157q interfaceC12157q) {
        I2.l(c12079h2);
        if (!(interfaceC12157q instanceof r)) {
            return interfaceC12157q;
        }
        r rVar = (r) interfaceC12157q;
        ArrayList c10 = rVar.c();
        String b10 = rVar.b();
        Map map = this.f62483a;
        return (map.containsKey(b10) ? (AbstractC12219x) map.get(b10) : this.f62484b).a(b10, c12079h2, c10);
    }
}
