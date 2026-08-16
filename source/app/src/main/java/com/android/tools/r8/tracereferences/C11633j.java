package com.android.tools.r8.tracereferences;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.F0;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.G0;
import com.android.tools.r8.graph.H0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.graph.T2;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C5411Js0;
import com.android.tools.r8.internal.C5469Ks0;
import com.android.tools.r8.internal.C5526Ls0;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.Reference;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class C11633j {

    public static final boolean f58482j = true;

    public final C4798y f58483a;

    public final C4724u1 f58484b;

    public final TraceReferencesConsumer f58485c;

    public final DiagnosticsHandler f58486d;

    public final Predicate f58487e;

    public final Set f58488f = ConcurrentHashMap.newKeySet();

    public final Set f58489g = ConcurrentHashMap.newKeySet();

    public final Set f58490h = ConcurrentHashMap.newKeySet();

    public final L2 f58491i;

    public C11633j(C4798y c4798y, TraceReferencesConsumer traceReferencesConsumer, DiagnosticsHandler diagnosticsHandler, Predicate predicate) {
        this.f58483a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f58484b = b10;
        this.f58485c = traceReferencesConsumer;
        this.f58486d = diagnosticsHandler;
        this.f58487e = predicate;
        this.f58491i = b10.b("Ldalvik/annotation/codegen/");
    }

    public final void a(Collection collection, ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f58483a, collection, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a((H2) obj);
            }
        }, executorService);
    }

    public void b(DefinitionContext definitionContext, E0 e02) {
        this.f58485c.acceptType(new C5411Js0(definitionContext, e02), this.f58486d);
    }

    public final void a(final H2 h22) {
        final DefinitionContext a10 = com.android.tools.r8.diagnostic.internal.d.a(h22);
        h22.e(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a(h22, a10, (M2) obj);
            }
        });
        h22.f(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a((F5) obj);
            }
        }, EnumC6871d70.f47286b);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a((H5) obj);
            }
        });
        for (C4666r0 c4666r0 : h22.k0().m0()) {
            a(c4666r0, h22, a10);
        }
    }

    public void a(DefinitionContext definitionContext, H0 h02) {
        this.f58485c.acceptMethod(new C5526Ls0(definitionContext, h02), this.f58486d);
    }

    public final void b(M2 m22, DefinitionContext definitionContext) {
        if (m22.E0()) {
            b(m22.a(this.f58484b), definitionContext);
            return;
        }
        if (m22.P0() || m22.S0()) {
            return;
        }
        if (!f58482j && !m22.I0()) {
            throw new AssertionError();
        }
        a(m22, definitionContext);
    }

    public final void b(H5 h52, DefinitionContext definitionContext, C4666r0 c4666r0) {
        a(c4666r0, h52.getHolder(), definitionContext);
    }

    public void a(F0 f02, DefinitionContext definitionContext) {
        this.f58485c.acceptField(new C5469Ks0(f02, definitionContext), this.f58486d);
    }

    public final void a(final H2 h22, final DefinitionContext definitionContext, final M2 m22) {
        b(m22, definitionContext);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a(m22, h22, definitionContext, (H5) obj);
            }
        };
        h22.getClass();
        h22.j(consumer, EnumC6871d70.f47286b);
    }

    public void a(InterfaceC4610o0 interfaceC4610o0) {
        this.f58485c.acceptPackage(Reference.packageFromString(interfaceC4610o0.S().A0()), this.f58486d);
    }

    public final void a(M2 m22, H2 h22, DefinitionContext definitionContext, H5 h52) {
        Z4 a10;
        C4514j c4514j = (C4514j) this.f58483a.f();
        A2 reference = h52.getReference();
        boolean a11 = m22.a(h22.a1());
        boolean z10 = C4514j.f37304i;
        if (!z10) {
            c4514j.c();
        }
        if (!a11) {
            a10 = c4514j.b(m22, reference);
        } else {
            if (!z10) {
                c4514j.c();
            } else {
                c4514j.getClass();
            }
            a10 = c4514j.a(m22, reference.y0(), reference.t0());
        }
        H0 p10 = a10.p();
        if (p10 == null || (p10 instanceof H5)) {
            return;
        }
        if (this.f58487e.test(p10.p())) {
            if (p10.p().a(m22)) {
                a(definitionContext, p10);
            } else if (this.f58487e.test(m22)) {
                this.f58485c.acceptMethod(new C5526Ls0(p10, definitionContext, p10.getReference().a(m22, this.f58484b)), this.f58486d);
            } else {
                a(definitionContext, p10);
                E0 holder = p10.getHolder();
                if (this.f58487e.test(holder.getType())) {
                    b(definitionContext, holder);
                    if (holder.getAccessFlags().g()) {
                        a(holder);
                    }
                }
            }
            H2 holder2 = h52.getHolder();
            if (p10.getAccessFlags().g()) {
                if (p10.getAccessFlags().f() || !((C4514j) this.f58483a.f()).b(holder2, p10.getHolder())) {
                    a(p10);
                }
            }
        }
    }

    public final boolean a(M2 m22) {
        return this.f58487e.test(m22);
    }

    public final void a(M2 m22, DefinitionContext definitionContext, Consumer consumer) {
        boolean z10 = f58482j;
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        InterfaceC4364b0 f10 = this.f58483a.f().f(m22);
        if (f10.X()) {
            f10.a(consumer);
            return;
        }
        ClassReference s02 = m22.s0();
        C5411Js0 c5411Js0 = new C5411Js0(s02, definitionContext, null);
        if (!z10 && !c5411Js0.f42440d) {
            throw new AssertionError();
        }
        Set set = this.f58488f;
        if (c5411Js0.f42440d) {
            set.add(s02);
        }
        this.f58485c.acceptType(c5411Js0, this.f58486d);
    }

    public final void a(M2 m22, final DefinitionContext definitionContext) {
        a(m22, definitionContext, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a(definitionContext, (E0) obj);
            }
        });
    }

    public final void a(DefinitionContext definitionContext, E0 e02) {
        if (this.f58487e.test(e02.getType())) {
            b(definitionContext, e02);
            if (e02.getAccessFlags().g()) {
                a(e02);
            }
        }
    }

    public final void a(final DefinitionContext definitionContext, C4422e1 c4422e1, final H2 h22, final E0 e02) {
        if (this.f58487e.test(e02.getType())) {
            b(definitionContext, e02);
            if (e02.getAccessFlags().g()) {
                a(e02);
            }
        }
        c4422e1.d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a(e02, definitionContext, h22, (C4704t0) obj);
            }
        });
    }

    public final void a(C4554l1 c4554l1, H2 h22, DefinitionContext definitionContext, D3.a aVar) {
        F0 a10 = F0.a(aVar.f36224c, aVar.f36225d);
        if (this.f58487e.test(a10.p())) {
            a(c4554l1, a10, h22, definitionContext);
            a(a10, definitionContext);
        }
    }

    public final void a(AbstractC4744v2 abstractC4744v2, G0 g02, H2 h22, DefinitionContext definitionContext) {
        E0 holder = g02.getHolder();
        if (!f58482j) {
            if (!this.f58487e.test(holder.getType())) {
                throw new AssertionError();
            }
        }
        if (!g02.p().a(abstractC4744v2.s0())) {
            b(definitionContext, holder);
        }
        if (g02.getAccessFlags().g()) {
            if (g02.getAccessFlags().f() || !((C4514j) this.f58483a.f()).b(h22, g02.getHolder())) {
                a(g02);
            }
        }
    }

    public final void a(final F5 f52) {
        final DefinitionContext a10 = com.android.tools.r8.diagnostic.internal.d.a(f52);
        b(f52.getReference().getType(), a10);
        f52.f36318c.k0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a(f52, a10, (C4666r0) obj);
            }
        });
    }

    public final void a(F5 f52, DefinitionContext definitionContext, C4666r0 c4666r0) {
        a(c4666r0, f52.getHolder(), definitionContext);
    }

    public final void a(final H5 h52) {
        final DefinitionContext a10 = com.android.tools.r8.diagnostic.internal.d.a(h52);
        Iterator<M2> it = h52.C().iterator();
        while (it.hasNext()) {
            b(it.next(), a10);
        }
        b(h52.E(), a10);
        h52.f36318c.k0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a(h52, a10, (C4666r0) obj);
            }
        });
        h52.d().U0().d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.b(h52, a10, (C4666r0) obj);
            }
        });
        h52.a(new C11632i(this, h52));
    }

    public final void a(H5 h52, DefinitionContext definitionContext, C4666r0 c4666r0) {
        a(c4666r0, h52.getHolder(), definitionContext);
    }

    public final void a(C4666r0 c4666r0, final H2 h22, final DefinitionContext definitionContext) {
        M2 l02 = c4666r0.l0();
        boolean z10 = f58482j;
        if (!z10 && !l02.I0()) {
            throw new AssertionError();
        }
        if (l02.a(this.f58484b.f37837C5) || l02.a(this.f58484b.f37937Q5)) {
            return;
        }
        L2 v02 = l02.v0();
        L2 l22 = this.f58484b.f38163u1;
        v02.getClass();
        if (v02.b(l22.f36562f)) {
            return;
        }
        L2 v03 = l02.v0();
        L2 l23 = this.f58491i;
        v03.getClass();
        if (v03.b(l23.f36562f)) {
            return;
        }
        if (l02.a(this.f58484b.f38191x5)) {
            if (!z10 && !definitionContext.isClassContext()) {
                throw new AssertionError();
            }
            c4666r0.f37693c.d(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11633j.this.a(h22, definitionContext, (C4704t0) obj);
                }
            });
            return;
        }
        if (l02.a(this.f58484b.f37916N5)) {
            if (!z10 && c4666r0.f37693c.k0() != 1) {
                throw new AssertionError();
            }
            if (!z10 && !c4666r0.f37693c.j(0).l0().R0()) {
                throw new AssertionError();
            }
            return;
        }
        if (l02.a(this.f58484b.f37923O5)) {
            if (!z10 && !definitionContext.isMethodContext()) {
                throw new AssertionError();
            }
            a(c4666r0.f37693c.f37143c[0].f37739c.n0(), h22, definitionContext);
            return;
        }
        if (!z10) {
            L2 v04 = l02.v0();
            L2 l24 = this.f58484b.f38147s1;
            v04.getClass();
            if (v04.b(l24.f36562f)) {
                throw new AssertionError((Object) ("Unexpected annotation with prefix " + ((Object) this.f58484b.f38147s1) + ": " + ((Object) l02.v0())));
            }
        }
        a(c4666r0.f37693c, h22, definitionContext);
    }

    public final void a(H2 h22, DefinitionContext definitionContext, C4704t0 c4704t0) {
        if (!f58482j && !c4704t0.l0().H0()) {
            throw new AssertionError();
        }
        a(c4704t0.l0().m0().f36739d, h22, definitionContext);
    }

    public final void a(final C4422e1 c4422e1, final H2 h22, final DefinitionContext definitionContext) {
        a(c4422e1.getType(), definitionContext, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11633j.this.a(definitionContext, c4422e1, h22, (E0) obj);
            }
        });
    }

    public final void a(E0 e02, final DefinitionContext definitionContext, H2 h22, final C4704t0 c4704t0) {
        if (this.f58487e.test(e02.getType())) {
            e02.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11633j.this.a(definitionContext, (H0) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean g10;
                    g10 = ((C4516j1) obj).C0().g(C4704t0.this.f37738b);
                    return g10;
                }
            });
        }
        a(c4704t0.l0(), h22, definitionContext);
    }

    public final void a(R2 r22, H2 h22, DefinitionContext definitionContext) {
        if (r22.S0()) {
            b((M2) r22.E0().W0(), definitionContext);
            return;
        }
        if (r22 instanceof T2) {
            a((C4554l1) r22.t0().f36759d, h22, definitionContext);
            return;
        }
        if (r22 instanceof R2.b) {
            for (R2 r23 : r22.n0().W0()) {
                a(r23, h22, definitionContext);
            }
        }
    }

    public final void a(final C4554l1 c4554l1, final H2 h22, final DefinitionContext definitionContext) {
        b(c4554l1.s0(), definitionContext);
        b(c4554l1.getType(), definitionContext);
        D3 c10 = ((C4514j) this.f58483a.f()).c(c4554l1);
        if (c10.v()) {
            c10.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11633j.this.a(c4554l1, h22, definitionContext, (D3.a) obj);
                }
            });
            return;
        }
        FieldReference v02 = c4554l1.v0();
        C5469Ks0 c5469Ks0 = new C5469Ks0(v02, definitionContext, null);
        if (!f58482j && !c5469Ks0.f42440d) {
            throw new AssertionError();
        }
        Set set = this.f58489g;
        if (c5469Ks0.f42440d) {
            set.add(v02);
        }
        this.f58485c.acceptField(c5469Ks0, this.f58486d);
    }
}
