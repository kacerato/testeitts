package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class C8807om implements X9 {

    public static final boolean f51343i = true;

    public final C4798y f51344b;

    public final C9808um f51345c;

    public final Map f51346d;

    public final Map f51347e;

    public final Map f51348f;

    public final Map f51349g;

    public final Map f51350h;

    public C8807om(C4798y c4798y) {
        this.f51344b = c4798y;
        this.f51345c = new C9808um(c4798y);
        C10261xU a10 = X2.a(c4798y);
        this.f51346d = a10.f53766c.o();
        this.f51347e = a10.f53766c.d();
        this.f51348f = a10.f53766c.p();
        this.f51349g = a10.f53766c.l();
        this.f51350h = a10.f53766c.h();
    }

    public final void a(Consumer consumer) {
        this.f51348f.o().forEach(consumer);
        this.f51349g.o().forEach(consumer);
        this.f51350h.o().forEach(consumer);
    }

    public final C6473am b(com.android.tools.r8.graph.H5 h52, W9 w92) {
        final C4554l1 c4554l1;
        final F9 f10 = w92.f();
        C4514j g10 = this.f51344b.g();
        C4554l1 field = f10.getField();
        g10.getClass();
        C4460g1 q10 = g10.a(field.f38297f, field, h52).q();
        if (q10 == null) {
            c4554l1 = null;
        } else {
            if (!f51343i && !q10.w0() && this.f51346d.containsKey(q10.getReference())) {
                throw new AssertionError();
            }
            c4554l1 = (C4554l1) this.f51346d.get(q10.getReference());
        }
        if (c4554l1 == null) {
            return C6473am.f46625a;
        }
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                Collection singletonList;
                singletonList = Collections.singletonList(F9.this.a(c4554l1));
                return singletonList;
            }
        }));
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
        intConsumer.accept(178);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (w92.T()) {
            return b(h52, w92);
        }
        if (w92.L()) {
            if (this.f51344b.b().f38117o3.contains(h52.p())) {
                return C6473am.f46625a;
            }
            C7437ga j10 = w92.j();
            com.android.tools.r8.graph.A2 V10 = j10.V();
            C4514j g10 = this.f51344b.g();
            com.android.tools.r8.graph.Z4 b10 = g10.b(V10, j10.X());
            if (!b10.w()) {
                return C6473am.f46625a;
            }
            boolean z10 = f51343i;
            if (!z10 && b10.s() == null) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.A2 reference = b10.s().getReference();
            if (j10.O()) {
                return a((com.android.tools.r8.graph.A2) this.f51348f.get(reference));
            }
            C6473am a10 = a(reference, false);
            if (!a10.a()) {
                return C6473am.f46625a;
            }
            if (j10.b(h52.p())) {
                com.android.tools.r8.graph.H0 a11 = g10.a(V10, h52.getHolder(), this.f51344b, g10);
                if (a11 != null) {
                    if (z10 || !a11.d().w0()) {
                        return a(a11.getReference(), true);
                    }
                    throw new AssertionError();
                }
            }
            return a10;
        }
        return C6473am.f46625a;
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.A2 a22, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        return this.f51345c.a(a22, abstractC7103ea);
    }

    public final C6204Xl a(final BiFunction biFunction) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C8807om.this.a(biFunction, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(BiFunction biFunction, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) biFunction.apply(abstractC7103ea, c5035Df);
        boolean z10 = f51343i;
        if (!z10 && this.f51344b.g(a22.s0()) == null) {
            throw new AssertionError();
        }
        if (z10 || !this.f51344b.g(a22.s0()).isInterface()) {
            return Collections.singletonList(new C7437ga(184, a22, false));
        }
        throw new AssertionError();
    }

    public final C6473am a(final com.android.tools.r8.graph.A2 a22) {
        if (a22 == null) {
            return C6473am.f46625a;
        }
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8807om.this.b(a22, (AbstractC7103ea) obj, (C5035Df) obj2);
            }
        });
    }

    public final C6473am a(final com.android.tools.r8.graph.A2 a22, final boolean z10) {
        final C6830cu c6830cu = (C6830cu) this.f51350h.get(a22);
        if (c6830cu != null) {
            return a(new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C8807om.this.a(z10, c6830cu, (AbstractC7103ea) obj, (C5035Df) obj2);
                }
            });
        }
        if (this.f51347e.containsKey(a22)) {
            return a(new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C8807om.this.a(a22, (AbstractC7103ea) obj, (C5035Df) obj2);
                }
            });
        }
        return a((com.android.tools.r8.graph.A2) this.f51349g.get(a22));
    }

    public final com.android.tools.r8.graph.A2 a(boolean z10, C6830cu c6830cu, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        if (z10) {
            C9808um c9808um = this.f51345c;
            return c9808um.a(c9808um.a(c6830cu), abstractC7103ea);
        }
        return this.f51345c.a(c6830cu, abstractC7103ea);
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        return this.f51345c.a(a22, (com.android.tools.r8.graph.A2) this.f51347e.get(a22), abstractC7103ea, c5035Df);
    }
}
