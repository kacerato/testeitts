package com.android.tools.r8.tracereferences;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D0;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.H0;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C5411Js0;
import com.android.tools.r8.internal.C5526Ls0;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.EnumC8071kK;
import com.android.tools.r8.internal.NW;
import com.android.tools.r8.internal.U6;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C11632i extends AbstractC4446f6 {

    public static final boolean f58475g = true;

    public final DefinitionContext f58476e;

    public final C11633j f58477f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11632i(C11633j c11633j, H5 h52) {
        super(c11633j.f58483a, h52);
        this.f58477f = c11633j;
        this.f58476e = com.android.tools.r8.diagnostic.internal.d.a(h52);
    }

    public final void a(NW nw) {
        Z4 a10;
        A2 a22 = (A2) nw.f41111a;
        if (a22.s0().E0()) {
            if (!f58475g && !nw.f42623d.e()) {
                throw new AssertionError();
            }
            this.f58477f.b(a22.s0(), this.f58476e);
            return;
        }
        if (!f58475g && !nw.f42623d.b() && !nw.f42623d.e()) {
            throw new AssertionError();
        }
        if (nw.f42623d.b()) {
            C4514j c4514j = (C4514j) this.f58477f.f58483a.f();
            if (!C4514j.f37304i) {
                c4514j.c();
            } else {
                c4514j.getClass();
            }
            a10 = c4514j.b(a22.s0(), a22);
        } else {
            C4514j c4514j2 = (C4514j) this.f58477f.f58483a.f();
            boolean z10 = C4514j.f37304i;
            if (!z10) {
                c4514j2.c();
            } else {
                c4514j2.getClass();
            }
            M2 s02 = a22.s0();
            if (!z10) {
                c4514j2.c();
            }
            a10 = c4514j2.a(s02, a22.y0(), a22.t0());
        }
        a(a22, a10, new S());
    }

    @Override
    public final void b(A2 a22) {
        AbstractC5308Hz v10 = this.f58477f.f58483a.v();
        H5 h52 = (H5) this.f37177b;
        v10.getClass();
        NW a10 = v10.a(a22, h52.getReference(), EnumC8071kK.f49581e);
        if (!f58475g && !a10.f42623d.b()) {
            throw new AssertionError();
        }
        a(a10);
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void d(A2 a22) {
        AbstractC5308Hz v10 = this.f58477f.f58483a.v();
        H5 h52 = (H5) this.f37177b;
        v10.getClass();
        NW a10 = v10.a(a22, h52.getReference(), EnumC8071kK.f49582f);
        if (!f58475g && !a10.f42623d.c()) {
            throw new AssertionError();
        }
        A2 a23 = (A2) a10.f41111a;
        a(a23, ((C4514j) this.f58477f.f58483a.f()).e(a23), new S());
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void f(A2 a22) {
        AbstractC5308Hz v10 = this.f58477f.f58483a.v();
        H5 h52 = (H5) this.f37177b;
        v10.getClass();
        NW a10 = v10.a(a22, h52.getReference(), EnumC8071kK.f49583g);
        if (!f58475g && !a10.f42623d.d()) {
            throw new AssertionError();
        }
        a(a22, ((C4514j) this.f58477f.f58483a.f()).e((A2) a10.f41111a), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11632i.this.a((Z4.c) obj);
            }
        });
    }

    @Override
    public final void g(A2 a22) {
        AbstractC5308Hz v10 = this.f58477f.f58483a.v();
        H5 h52 = (H5) this.f37177b;
        v10.getClass();
        NW a10 = v10.a(a22, h52.getReference(), EnumC8071kK.f49584h);
        if (!f58475g && !a10.f42623d.e()) {
            throw new AssertionError();
        }
        a(a10);
    }

    public final void i(C4554l1 c4554l1) {
        this.f58477f.a((C4554l1) this.f58477f.f58483a.v().f((AbstractC5308Hz) null, c4554l1).f41111a, ((H5) this.f37177b).getHolder(), this.f58476e);
    }

    @Override
    public final void b(M2 m22) {
        AbstractC5308Hz v10 = this.f58477f.f58483a.v();
        v10.getClass();
        this.f58477f.a(this.f37176a.f38417j.a(v10.c(AbstractC5308Hz.g(), m22)), ((H5) this.f37177b).getHolder(), this.f58476e);
    }

    public final void g(M2 m22) {
        this.f58477f.b(m22, this.f58476e);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void f(M2 m22) {
        C11633j c11633j = this.f58477f;
        AbstractC5308Hz v10 = c11633j.f58483a.v();
        v10.getClass();
        c11633j.b(v10.c(AbstractC5308Hz.g(), m22), this.f58476e);
    }

    public final H0 a(Z4.c cVar) {
        return cVar.c(((H5) this.f37177b).getHolder(), this.f37176a, (C4514j) this.f58477f.f58483a.f());
    }

    public final void a(C8085kR c8085kR, E0 e02) {
        C4516j1 b10 = e02.b(c8085kR.f49626b);
        if (b10 != null) {
            b(b10.getReference());
        }
        Iterator it = c8085kR.f49630f.iterator();
        while (it.hasNext()) {
            C4516j1 a10 = e02.f36252l.f36638b.a((I2) it.next(), c8085kR.f49626b.t0());
            if (a10 != null) {
                b(a10.getReference());
            }
        }
    }

    @Override
    public final void a(A2 a22) {
        AbstractC5308Hz v10 = this.f58477f.f58483a.v();
        H5 h52 = (H5) this.f37177b;
        v10.getClass();
        A2 reference = h52.getReference();
        EnumC8071kK enumC8071kK = EnumC8071kK.f49580d;
        NW a10 = v10.a(a22, reference, enumC8071kK);
        if (!f58475g) {
            EnumC8071kK enumC8071kK2 = a10.f42623d;
            enumC8071kK2.getClass();
            if (enumC8071kK2 != enumC8071kK) {
                throw new AssertionError();
            }
        }
        final A2 a23 = (A2) a10.f41111a;
        if (((H5) this.f37177b).getHolder().f36366u == ProgramResource.Kind.DEX) {
            a(a23, ((C4514j) this.f58477f.f58483a.f()).e(a23), new S());
            return;
        }
        final U6 u62 = new U6();
        C4798y c4798y = this.f37176a;
        c4798y.f().f(a23.s0()).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11632i.this.a(a23, u62, (E0) obj);
            }
        });
        if (u62.c()) {
            a(a23, (H0) null);
        }
    }

    public final void a(A2 a22, U6 u62, E0 e02) {
        a22.getClass();
        H0 a10 = e02 != null ? e02.a(a22) : null;
        if (a10 != null) {
            a(a22, a10);
            u62.e();
        }
    }

    public final void a(final A2 a22, Z4 z42, final Function function) {
        final U6 u62 = new U6();
        z42.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11632i.this.a(a22, u62, function, (Z4) obj);
            }
        });
        if (u62.c()) {
            z42.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11632i.this.a(a22, (Z4) obj);
                }
            });
        }
    }

    public final void a(final A2 a22, U6 u62, Function function, Z4 z42) {
        if (z42.h()) {
            z42.k().a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11632i.this.g((M2) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11632i.this.a(a22, (C4516j1) obj);
                }
            });
        } else {
            u62.e();
            a(a22, (H0) function.apply(z42.o()));
        }
    }

    public final void a(A2 a22, C4516j1 c4516j1) {
        C4798y c4798y = this.f37176a;
        if (!C4516j1.f37313x && !c4516j1.getReference().f38297f.I0()) {
            throw new AssertionError();
        }
        A2 reference = c4516j1.getReference();
        c4798y.getClass();
        E0 g10 = c4798y.g(reference.f38297f);
        a(a22, g10 != null ? H0.a(g10, c4516j1) : null);
    }

    public final void a(A2 a22, Z4 z42) {
        if (!f58475g && !z42.h()) {
            throw new AssertionError();
        }
        if (z42.k().y()) {
            return;
        }
        a(a22, (H0) null);
    }

    public final void a(A2 a22, H0 h02) {
        this.f58477f.b(a22.s0(), this.f58476e);
        C11633j c11633j = this.f58477f;
        O2 x02 = a22.x0();
        DefinitionContext definitionContext = this.f58476e;
        Iterator<M2> it = x02.iterator();
        while (it.hasNext()) {
            c11633j.b(it.next(), definitionContext);
        }
        this.f58477f.b(a22.z0(), this.f58476e);
        if (h02 != null) {
            C4516j1 d10 = h02.d();
            if (!f58475g && !h02.getReference().c(a22) && !h02.getHolder().a(d10, this.f58477f.f58484b)) {
                throw new AssertionError();
            }
            if (this.f58477f.a(h02.p())) {
                this.f58477f.a(a22, h02, ((H5) this.f37177b).getHolder(), this.f58476e);
                this.f58477f.a(this.f58476e, h02);
                return;
            }
            return;
        }
        DefinitionContext definitionContext2 = this.f58476e;
        MethodReference v02 = a22.v0();
        C5526Ls0 c5526Ls0 = new C5526Ls0(v02, definitionContext2, (TraceReferencesConsumer.MethodAccessFlags) null);
        C11633j c11633j2 = this.f58477f;
        if (!C11633j.f58482j && !c5526Ls0.f42440d) {
            throw new AssertionError();
        }
        Set set = c11633j2.f58490h;
        if (c5526Ls0.f42440d) {
            set.add(v02);
        }
        C11633j c11633j3 = this.f58477f;
        c11633j3.f58485c.acceptMethod(c5526Ls0, c11633j3.f58486d);
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void a(D0 d02) {
        super.a(d02);
        C4798y c4798y = this.f58477f.f58483a;
        final C8085kR a10 = C8085kR.a(d02, c4798y, (C4514j) c4798y.f(), (H5) this.f37177b);
        if (a10 == C8085kR.f49623j) {
            a10 = null;
        }
        if (a10 != null) {
            ArrayList arrayList = a10.f49629e;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                M2 m22 = (M2) obj;
                InterfaceC4364b0 f10 = this.f37176a.f().f(m22);
                if (f10.X()) {
                    f10.a(new Consumer() {
                        @Override
                        public final void accept(Object obj2) {
                            C11632i.this.a(a10, (E0) obj2);
                        }
                    });
                } else {
                    DefinitionContext definitionContext = this.f58476e;
                    ClassReference s02 = m22.s0();
                    C5411Js0 c5411Js0 = new C5411Js0(s02, definitionContext, null);
                    C11633j c11633j = this.f58477f;
                    if (!C11633j.f58482j && !c5411Js0.f42440d) {
                        throw new AssertionError();
                    }
                    Set set = c11633j.f58488f;
                    if (c5411Js0.f42440d) {
                        set.add(s02);
                    }
                    C11633j c11633j2 = this.f58477f;
                    c11633j2.f58485c.acceptType(c5411Js0, c11633j2.f58486d);
                }
            }
        }
    }
}
