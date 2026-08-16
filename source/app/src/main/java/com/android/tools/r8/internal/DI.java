package com.android.tools.r8.internal;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class DI implements InterfaceC5599Na {

    public static final boolean f39490e = true;

    public final C4798y f39491b;

    public final JI f39492c;

    public final C5724Pd f39493d;

    public DI(C4798y c4798y, JI ji2, int i10, Predicate predicate) {
        this.f39491b = c4798y;
        if (!f39490e && ji2 == null) {
            throw new AssertionError();
        }
        this.f39492c = ji2;
        this.f39493d = new C5724Pd(c4798y, predicate, i10);
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return (this.f39491b.a(h22) || h22.f36366u == ProgramResource.Kind.DEX) ? false : true;
    }

    public final void a(Collection collection, final AbstractC5947Ta abstractC5947Ta, ExecutorService executorService) {
        C4425e4 P02;
        com.android.tools.r8.graph.A2 a22;
        C5467Kr0.a(AT.a(collection, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return DI.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }), new Consumer() {
            @Override
            public final void accept(Object obj) {
                DI.this.a(abstractC5947Ta, (com.android.tools.r8.graph.H2) obj);
            }
        }, this.f39491b.E().G(), executorService);
        this.f39493d.a(abstractC5947Ta, executorService);
        JI ji2 = this.f39492c;
        HI a10 = ji2.a();
        if (a10 != null) {
            for (com.android.tools.r8.graph.H2 h22 : ji2.f41371a.f().d()) {
                if (h22.O0() != null && h22.O0().a() != null && (P02 = h22.P0()) != null && P02.d() == null) {
                    C4500i3 O02 = h22.O0();
                    com.android.tools.r8.graph.A2 a11 = O02.a();
                    if (a11 == null) {
                        a22 = null;
                    } else {
                        a22 = (com.android.tools.r8.graph.A2) a10.f40732n.b(a11);
                        if (a22 == null) {
                            a22 = a10.d(AbstractC5308Hz.g(), a11);
                        }
                    }
                    if (a22 != a11) {
                        O02 = new C4500i3(a22);
                    }
                    h22.f36253m = O02;
                }
            }
        }
    }

    public final void a(FI fi2, com.android.tools.r8.graph.H2 h22) {
        this.f39493d.a(fi2, h22);
    }

    @Override
    public final void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Interface method processor facade");
        try {
            a(collection, abstractC5947Ta, executorService);
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
}
