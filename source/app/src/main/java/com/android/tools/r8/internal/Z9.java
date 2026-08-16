package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;

public final class Z9 implements InterfaceC6604ba {

    public final I00 f46172b;

    public Z9(C4798y c4798y) {
        this.f46172b = Y9.a(c4798y);
    }

    @Override
    public final void a() {
        I00 i00 = this.f46172b;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                Z9.a((C5621Ni) obj);
            }
        };
        C7769iZ c7769iZ = i00.f40948d;
        if (c7769iZ != null) {
            if (!I00.f40944h && !(c7769iZ instanceof C5621Ni)) {
                throw new AssertionError();
            }
            interfaceC6160Wr0.accept((C5621Ni) c7769iZ);
        }
    }

    @Override
    public final Y9 get() {
        return this.f46172b;
    }

    public static void a(C5621Ni c5621Ni) {
        c5621Ni.c();
        c5621Ni.b();
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Generate desugared library api converter tracking warnings");
        try {
            this.f46172b.a(new V31());
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override
    public final DI a(final JI ji2) {
        return (DI) this.f46172b.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Z9.a(JI.this, (EI) obj);
            }
        });
    }

    @Override
    public final void a(final C5448Ki c5448Ki, final ExecutorService executorService, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Process classpath for desugaring");
        try {
            I00 i00 = this.f46172b;
            InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj) {
                    ((C5621Ni) obj).a(C5448Ki.this, executorService);
                }
            };
            C7769iZ c7769iZ = i00.f40948d;
            if (c7769iZ != null) {
                if (!I00.f40944h && !(c7769iZ instanceof C5621Ni)) {
                    throw new AssertionError();
                }
                interfaceC6160Wr0.accept((C5621Ni) c7769iZ);
            }
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static DI a(JI ji2, EI ei2) {
        return new DI(ei2.f39816b, ji2, ei2.f39819e, EnumC6871d70.f47286b);
    }
}
