package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;

public final class C7005dx extends AbstractC9723uD {

    public final ConcurrentHashMap f47551a;

    public C7005dx(ConcurrentHashMap concurrentHashMap) {
        this.f47551a = concurrentHashMap;
    }

    @Override
    public final C4554l1 a(com.android.tools.r8.graph.M2 m22) {
        C4554l1 c4554l1 = (C4554l1) this.f47551a.get(m22);
        if (c4554l1 != null) {
            return c4554l1;
        }
        throw new C5417Jv0("Unexpected InitClass instruction for `" + m22.j0() + "`");
    }

    public final C7005dx a(final AbstractC5308Hz abstractC5308Hz) {
        final C9556tD c9556tD = new C9556tD();
        this.f47551a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7005dx.a(AbstractC5308Hz.this, c9556tD, (com.android.tools.r8.graph.M2) obj, (C4554l1) obj2);
            }
        });
        return new C7005dx(c9556tD.f52561a);
    }

    @Override
    public final AbstractC9723uD a(final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (AbstractC9723uD) c8659ns0.a("Rewrite FinalInitClassLens", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C7005dx.this.a(abstractC5308Hz);
            }
        });
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, C9556tD c9556tD, com.android.tools.r8.graph.M2 m22, C4554l1 c4554l1) {
        abstractC5308Hz.getClass();
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(AbstractC5308Hz.g(), m22);
        C4554l1 e10 = abstractC5308Hz.e((AbstractC5308Hz) null, c4554l1);
        if (!C9556tD.f52560b) {
            c9556tD.getClass();
            if (e10.f38297f != c10) {
                throw new AssertionError();
            }
        }
        c9556tD.f52561a.put(c10, e10);
    }
}
