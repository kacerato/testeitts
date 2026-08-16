package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;

public final class MI extends KI {

    public static final boolean f42264f = true;

    public final C4798y f42265a;

    public final C7215fB f42266b;

    public final R00 f42267c;

    public final AbstractC5308Hz f42268d;

    public final IdentityHashMap f42269e = new IdentityHashMap();

    public MI(C4798y c4798y, C7215fB c7215fB, R00 r00, AbstractC5308Hz abstractC5308Hz) {
        this.f42265a = c4798y;
        this.f42266b = c7215fB;
        this.f42267c = r00;
        this.f42268d = abstractC5308Hz;
    }

    @Override
    public final void a(VJ vj2, VJ vj3, NW nw, W5 w52) {
        com.android.tools.r8.graph.A2 B22 = vj2.B2();
        com.android.tools.r8.graph.A2 B23 = vj3.B2();
        C7564hG c7564hG = new C7564hG(((TF) nw.f42624e.f37623b.f37604a.values()).f44427b);
        while (c7564hG.hasNext()) {
            if (((com.android.tools.r8.graph.proto.b) c7564hG.a().f42117c).c()) {
                if (!f42264f) {
                    throw new AssertionError();
                }
                return;
            }
        }
        if (vj2.f54321f.size() != B22.a(vj2.R1())) {
            return;
        }
        for (int i10 = 0; i10 < vj2.f54321f.size(); i10++) {
            C10340xw0 b10 = vj3.b(i10);
            com.android.tools.r8.graph.M2 a10 = B22.a(i10, vj2.R1());
            com.android.tools.r8.graph.M2 a11 = B23.a(i10, vj3.R1());
            if (a(b10, w52, a10, a11, false).c()) {
                a(vj3, i10, a10, a11);
            }
        }
    }

    @Override
    public final void a(C10471yk0 c10471yk0, W5 w52) {
        if (!f42264f && c10471yk0.v2()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 z02 = this.f42267c.a(this.f42268d, this.f42266b.j().getReference()).z0();
        com.android.tools.r8.graph.M2 E10 = this.f42266b.j().E();
        if (a(c10471yk0.w2(), w52, z02, E10, false).c()) {
            a(c10471yk0, 0, z02, E10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(InterfaceC10172ww interfaceC10172ww, InterfaceC10172ww interfaceC10172ww2, W5 w52) {
        com.android.tools.r8.graph.M2 type = interfaceC10172ww.getField().getType();
        com.android.tools.r8.graph.M2 type2 = interfaceC10172ww2.getField().getType();
        if (a(interfaceC10172ww2.value(), w52, type, type2, false).c()) {
            a((AbstractC7670hw) interfaceC10172ww2, interfaceC10172ww2.g(), type, type2);
        }
    }

    @Override
    public final void a() {
        if (this.f42269e.isEmpty()) {
            return;
        }
        Z5 u10 = this.f42266b.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            Y5 I10 = w52.I();
            while (I10.hasNext()) {
                AbstractC10561zE next = I10.next();
                Deque<LI> deque = (Deque) this.f42269e.get(next);
                if (deque != null) {
                    Y5 y52 = I10;
                    for (LI li2 : deque) {
                        C10340xw0 a10 = next.a(li2.f41934a);
                        com.android.tools.r8.graph.M2 m22 = li2.f41935b;
                        com.android.tools.r8.graph.M2 m23 = li2.f41936c;
                        AbstractC9530t40 a11 = a(a10, w52, m22, m23, true);
                        boolean z10 = f42264f;
                        if (!z10 && a11.e()) {
                            throw new AssertionError();
                        }
                        if (a11.d()) {
                            AbstractC10561zE previous = y52.previous();
                            if (!z10 && previous != next) {
                                throw new AssertionError();
                            }
                            boolean z11 = C7942jc.f49273m;
                            C7777ic c7777ic = new C7777ic();
                            c7777ic.f48982d = m23;
                            c7777ic.f48983e = a10;
                            C7215fB c7215fB = this.f42266b;
                            C4798y c4798y = this.f42265a;
                            C8854p10 B10 = a10.u().B();
                            m23.getClass();
                            c7777ic.f52321a = c7215fB.a(AbstractC8999pu0.a(m23, B10, (C4798y<?>) c4798y), a10.s());
                            c7777ic.f52322b = next.getPosition();
                            C7942jc c10 = c7777ic.c();
                            if (w52.z()) {
                                W5 a12 = y52.a(this.f42266b, u10, this.f42265a.E(), (UnaryOperator<W5>) null);
                                y52.previous();
                                y52.add(c10);
                                y52 = a12.I();
                            } else {
                                y52.add(c10);
                            }
                            next.a(a10, c10.d(), (Set) null);
                            AbstractC10561zE next2 = y52.next();
                            if (!z10 && next2 != next) {
                                throw new AssertionError();
                            }
                        }
                    }
                    I10 = y52;
                }
            }
        }
    }

    public final void a(AbstractC10561zE abstractC10561zE, int i10, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        ((Deque) this.f42269e.computeIfAbsent(abstractC10561zE, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return new ArrayDeque();
            }
        }))).addLast(new LI(i10, m22, m23));
    }

    public final AbstractC9530t40 a(C10340xw0 c10340xw0, W5 w52, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, boolean z10) {
        if (m22.I0() && m23.I0()) {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f42265a.g(m22));
            if (a10 != null && a10.isInterface()) {
                com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(this.f42265a.g(m23));
                if (a11 != null && !a11.isInterface()) {
                    if (!z10 && (c10340xw0.j() || (!c10340xw0.r().k1() && c10340xw0.b() != w52))) {
                        if (f42264f || !z10) {
                            return AbstractC9530t40.f52519c;
                        }
                        throw new AssertionError();
                    }
                    return AbstractC9530t40.a(!c10340xw0.u().b(m23.b(this.f42265a), this.f42265a));
                }
                return AbstractC9530t40.f52518b;
            }
            return AbstractC9530t40.f52518b;
        }
        return AbstractC9530t40.f52518b;
    }
}
