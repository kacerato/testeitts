package com.android.tools.r8.internal;

import com.android.tools.r8.errors.ConstantDynamicDesugarDiagnostic;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.synthesis.S;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;

public final class C10628zh implements X9 {

    public final C4798y f54448b;

    public final ConcurrentHashMap f54449c = new ConcurrentHashMap();

    public C10628zh(C4798y c4798y) {
        this.f54448b = c4798y;
    }

    @Override
    public final void a(IntConsumer intConsumer) {
    }

    public final C6204Xl b(final com.android.tools.r8.graph.H5 h52, final String str) {
        return new C6204Xl(new C6261Yl().a(new InterfaceC6318Zl() {
            @Override
            public final void a() {
                C10628zh.this.a(h52, str);
            }
        }));
    }

    public final void a(com.android.tools.r8.graph.H5 h52, String str) {
        this.f54448b.E().f50691j.error(new ConstantDynamicDesugarDiagnostic(h52.f36317b.f36244d, MethodPosition.create(h52), str));
    }

    @Override
    public final void b(IntConsumer intConsumer) {
        intConsumer.accept(206);
    }

    public final C10294xh b(C9711u9 c9711u9, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, AbstractC7103ea abstractC7103ea) {
        C10294xh c10294xh;
        Map map = (Map) this.f54449c.computeIfAbsent(h52.p(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10628zh.a((com.android.tools.r8.graph.M2) obj);
            }
        });
        C10294xh c10294xh2 = (C10294xh) map.get(c9711u9.f52798c);
        if (c10294xh2 != null) {
            return c10294xh2;
        }
        synchronized (map) {
            try {
                c10294xh = (C10294xh) map.get(c9711u9.f52798c);
                if (c10294xh == null) {
                    c10294xh = a(c9711u9, h52, c5035Df, abstractC7103ea);
                    map.put(c9711u9.f52798c, c10294xh);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c10294xh;
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, final W9 w92) {
        w92.getClass();
        if (!(w92 instanceof C9711u9)) {
            return C6473am.f46625a;
        }
        C9711u9 d10 = w92.d();
        if (!d10.f52798c.f38690f.isEmpty()) {
            return b(h52, "Unsupported dynamic constant (has arguments to bootstrap method)");
        }
        if (!d10.f52798c.f38689e.f36190e.c()) {
            return b(h52, "Unsupported dynamic constant (not invoke static)");
        }
        C4724u1 b10 = this.f54448b.b();
        com.android.tools.r8.graph.A2 m02 = d10.f52798c.f38689e.m0();
        com.android.tools.r8.graph.M2 s02 = m02.s0();
        if (s02 == b10.f37944R5) {
            return b(h52, "Unsupported dynamic constant (runtime provided bootstrap method)");
        }
        if (s02 != h52.p()) {
            return b(h52, "Unsupported dynamic constant (different owner)");
        }
        if (m02.y0().f36440e != b10.f37912N1 && m02.y0().f36440e != b10.f38068i2) {
            return b(h52, "Unsupported dynamic constant (unsupported constant type)");
        }
        if (m02.y0().n0().size() != 3) {
            return b(h52, "Unsupported dynamic constant (unsupported signature)");
        }
        if (m02.y0().n0().j(0) != b10.f37958T5) {
            return b(h52, "Unsupported dynamic constant (unexpected type of first argument to bootstrap method");
        }
        if (m02.y0().n0().j(1) != b10.f38052g2) {
            return b(h52, "Unsupported dynamic constant (unexpected type of second argument to bootstrap method");
        }
        if (m02.y0().n0().j(2) != b10.f38180w2) {
            return b(h52, "Unsupported dynamic constant (unexpected type of third argument to bootstrap method");
        }
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C10628zh.this.a(w92, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(W9 w92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C9711u9 d10 = w92.d();
        return b(d10, h52, c5035Df, abstractC7103ea).a(d10, abstractC7103ea, c5035Df);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        Iterator<W9> it = h52.d().Q0().V().E0().iterator();
        while (it.hasNext()) {
            a(h52, it.next()).b();
        }
    }

    public static Map a(com.android.tools.r8.graph.M2 m22) {
        return new HashMap();
    }

    public final C10294xh a(final C9711u9 c9711u9, final com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, AbstractC7103ea abstractC7103ea) {
        final C7 c72 = new C7();
        com.android.tools.r8.graph.H2 a10 = this.f54448b.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58196w;
                return bVar;
            }
        }, c5035Df.a(), this.f54448b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10628zh.this.a(c72, h52, c9711u9, (com.android.tools.r8.synthesis.W) obj);
            }
        });
        C10294xh c10294xh = (C10294xh) c72.a();
        c10294xh.getClass();
        if (!C10294xh.f53809i && c10294xh.f53817h != null) {
            throw new AssertionError();
        }
        c10294xh.f53817h = a10;
        abstractC7103ea.a(c10294xh, h52);
        return c10294xh;
    }

    public final void a(C7 c72, com.android.tools.r8.graph.H5 h52, C9711u9 c9711u9, com.android.tools.r8.synthesis.W w10) {
        c72.a((C7) new C10294xh(w10, this.f54448b, h52, c9711u9));
    }
}
