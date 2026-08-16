package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.InterfaceC7328ft0;
import com.android.tools.r8.internal.UC;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.m;
import java.util.AbstractCollection;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10695k {

    public static final boolean f54661d = true;

    public final IdentityHashMap f54662a = new IdentityHashMap();

    public AbstractCollection f54663b;

    public AbstractCollection f54664c;

    public C10695k() {
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        this.f54663b = c6190Xe0;
        this.f54664c = c6190Xe0;
    }

    public static n a(E0 e02, M2 m22) {
        return new n(e02);
    }

    public static n b(E0 e02, M2 m22) {
        return new n(e02);
    }

    public static void a(InterfaceC7328ft0 interfaceC7328ft0, n nVar) {
        interfaceC7328ft0.a(nVar.f54692a, nVar.f54695d.values(), nVar.f54694c.values());
    }

    public final void b(final BiConsumer biConsumer) {
        this.f54662a.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((n) obj).b(BiConsumer.this);
            }
        });
    }

    public static void a(Map map, M2 m22, n nVar) {
        map.put(m22, new m.d(nVar.f54692a, nVar.f54693b, UC.a(nVar.f54694c), UC.a(nVar.f54695d), nVar.f54696e, nVar.f54697f));
    }

    public final void a(final InterfaceC7328ft0 interfaceC7328ft0) {
        this.f54662a.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10695k.a(InterfaceC7328ft0.this, (n) obj);
            }
        });
    }

    public final void a(final BiConsumer biConsumer) {
        this.f54662a.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((n) obj).a(BiConsumer.this);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final E0 e02, C4516j1 c4516j1) {
        n nVar = (n) this.f54662a.computeIfAbsent(e02.f36245e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10695k.b(E0.this, (M2) obj);
            }
        });
        if (!n.f54691g) {
            nVar.getClass();
            if (c4516j1.B0() != nVar.f54692a.f36245e) {
                throw new AssertionError();
            }
        }
        nVar.f54694c.put(c4516j1.getReference(), c4516j1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final E0 e02, C4460g1 c4460g1) {
        n nVar = (n) this.f54662a.computeIfAbsent(e02.f36245e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10695k.a(E0.this, (M2) obj);
            }
        });
        if (!n.f54691g) {
            nVar.getClass();
            if (c4460g1.B0() != nVar.f54692a.f36245e) {
                throw new AssertionError();
            }
        }
        nVar.f54695d.put(c4460g1.getReference(), c4460g1);
    }

    public final void a(M2 m22, l lVar) {
        l lVar2;
        n nVar = (n) this.f54662a.get(m22);
        if (!f54661d && nVar == null) {
            throw new AssertionError();
        }
        nVar.getClass();
        boolean z10 = n.f54691g;
        if (!z10 && lVar == null) {
            throw new AssertionError();
        }
        if (!z10 && (lVar2 = nVar.f54693b) != null && lVar != lVar2) {
            throw new AssertionError();
        }
        nVar.f54693b = lVar;
    }

    public final void a(A2 a22, m.c cVar) {
        n nVar = (n) this.f54662a.get(a22.s0());
        if (!f54661d && nVar == null) {
            throw new AssertionError();
        }
        nVar.a(a22, cVar);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.AbstractCollection, java.util.List] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.AbstractCollection, java.util.List] */
    public final m a() {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f54662a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10695k.a(Map.this, (M2) obj, (n) obj2);
            }
        });
        return new m(UC.a(identityHashMap), this.f54663b, this.f54664c);
    }
}
