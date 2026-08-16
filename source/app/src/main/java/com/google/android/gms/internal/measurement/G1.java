package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

public final class G1 {

    @v2.d
    public final C12228y f61922a;

    @v2.d
    public final C12079h2 f61923b;

    @v2.d
    public final C12079h2 f61924c;

    @v2.d
    public final K3 f61925d;

    public G1() {
        C12228y c12228y = new C12228y();
        this.f61922a = c12228y;
        C12079h2 c12079h2 = new C12079h2(null, c12228y);
        this.f61924c = c12079h2;
        this.f61923b = c12079h2.c();
        K3 k32 = new K3();
        this.f61925d = k32;
        c12079h2.e("require", new d8(k32));
        k32.a("internal.platform", new Callable() {
            @Override
            public final Object call() {
                return new f8();
            }
        });
        c12079h2.e("runtime.counter", new C12094j(Double.valueOf(0.0d)));
    }

    public final InterfaceC12157q a(C12079h2 c12079h2, P3... p3Arr) {
        InterfaceC12157q interfaceC12157q = InterfaceC12157q.f62394o4;
        for (P3 p32 : p3Arr) {
            interfaceC12157q = C12098j3.b(p32);
            I2.l(this.f61924c);
            if ((interfaceC12157q instanceof r) || (interfaceC12157q instanceof C12148p)) {
                interfaceC12157q = this.f61922a.b(c12079h2, interfaceC12157q);
            }
        }
        return interfaceC12157q;
    }
}
