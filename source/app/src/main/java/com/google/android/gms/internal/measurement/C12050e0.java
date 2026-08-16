package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public final class C12050e0 {

    @v2.d
    public final G1 f62259a;

    @v2.d
    public C12079h2 f62260b;

    @v2.d
    public final C12031c f62261c;

    public final g8 f62262d;

    public C12050e0() {
        G1 g12 = new G1();
        this.f62259a = g12;
        this.f62260b = g12.f61923b.c();
        this.f62261c = new C12031c();
        this.f62262d = new g8();
        g12.f61925d.a("internal.registerCallback", new Callable() {
            @Override
            public final Object call() {
                return C12050e0.this.g();
            }
        });
        g12.f61925d.a("internal.eventLogger", new Callable() {
            @Override
            public final Object call() {
                return new C12108k4(C12050e0.this.f62261c);
            }
        });
    }

    public final void a(String str, Callable callable) {
        this.f62259a.f61925d.a(str, callable);
    }

    public final boolean b(C12022b c12022b) throws zzd {
        try {
            C12031c c12031c = this.f62261c;
            c12031c.b(c12022b);
            this.f62259a.f61924c.e("runtime.counter", new C12094j(Double.valueOf(0.0d)));
            this.f62262d.b(this.f62260b.c(), c12031c);
            if (c()) {
                return true;
            }
            return d();
        } catch (Throwable th2) {
            throw new zzd(th2);
        }
    }

    public final boolean c() {
        C12031c c12031c = this.f62261c;
        return !c12031c.c().equals(c12031c.a());
    }

    public final boolean d() {
        return !this.f62261c.f().isEmpty();
    }

    public final C12031c e() {
        return this.f62261c;
    }

    public final void f(L3 l32) throws zzd {
        AbstractC12103k abstractC12103k;
        try {
            G1 g12 = this.f62259a;
            this.f62260b = g12.f61923b.c();
            if (g12.a(this.f62260b, (P3[]) l32.E().toArray(new P3[0])) instanceof C12076h) {
                throw new IllegalStateException("Program loading failed");
            }
            for (I3 i32 : l32.F().E()) {
                List F10 = i32.F();
                String E10 = i32.E();
                Iterator it = F10.iterator();
                while (it.hasNext()) {
                    InterfaceC12157q a10 = g12.a(this.f62260b, (P3) it.next());
                    if (!(a10 instanceof C12130n)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    C12079h2 c12079h2 = this.f62260b;
                    if (c12079h2.d(E10)) {
                        InterfaceC12157q h10 = c12079h2.h(E10);
                        if (!(h10 instanceof AbstractC12103k)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(E10)));
                        }
                        abstractC12103k = (AbstractC12103k) h10;
                    } else {
                        abstractC12103k = null;
                    }
                    if (abstractC12103k == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(E10)));
                    }
                    abstractC12103k.i(this.f62260b, Collections.singletonList(a10));
                }
            }
        } catch (Throwable th2) {
            throw new zzd(th2);
        }
    }

    public final AbstractC12103k g() {
        return new c8(this.f62262d);
    }
}
