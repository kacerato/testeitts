package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

public final class C8109kc {

    public static final C8696o40 f49689d = C8696o40.f51162b;

    public static final boolean f49690e = true;

    public final C4798y f49691a;

    public final C8048kB f49692b;

    public final C8310ln0 f49693c;

    public C8109kc(C4798y c4798y, C8048kB c8048kB) {
        int i10 = AbstractC8477mn0.f50423f;
        this.f49693c = new C8310ln0();
        if (!f49690e && c4798y.E().f50690i1) {
            throw new AssertionError();
        }
        this.f49691a = c4798y;
        this.f49692b = c8048kB;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, F1 f12, final AbstractC6931dX abstractC6931dX) {
        if (this.f49692b.f49516B != null) {
            if (!f49690e && !abstractC6931dX.f() && !(abstractC6931dX instanceof P60)) {
                throw new AssertionError();
            }
            if (h52.getReference().z0().F0() && f12.c0()) {
                synchronized (this) {
                    try {
                        if (this.f49693c.f45165b.isEmpty()) {
                            C8048kB c8048kB = this.f49692b;
                            InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
                                @Override
                                public final void a() {
                                    C8109kc.this.a(abstractC6931dX);
                                }
                            };
                            if (c8048kB.f49522a.m()) {
                                List list = c8048kB.f49516B;
                                if (list != null) {
                                    list.add(interfaceC6522b2);
                                } else {
                                    throw new C5417Jv0("Attempt to call addWaveDoneAction() outside of wave.");
                                }
                            } else {
                                throw new C5417Jv0("addWaveDoneAction() should never be used in D8.");
                            }
                        }
                        this.f49693c.add((C8310ln0) h52);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public final void a(AbstractC6931dX abstractC6931dX) {
        C10207x70 b10 = abstractC6931dX.b();
        if (!f49690e && this.f49693c.f45165b.isEmpty()) {
            throw new AssertionError();
        }
        AbstractC8374m80 c10 = AbstractC8374m80.c();
        for (com.android.tools.r8.graph.H5 h52 : this.f49693c.f45165b.values()) {
            if (!c10.f45165b.containsKey(h52.getReference())) {
                a(h52, b10);
            }
        }
    }

    public final void a(final com.android.tools.r8.graph.H5 h52, C10207x70 c10207x70) {
        Z4.c<?> o10;
        if (h52.d().n1()) {
            C4516j1 d10 = h52.d();
            d10.L0();
            TW tw = d10.f37320m;
            if (tw.C()) {
                return;
            }
            F1 i10 = tw.i();
            if (i10.c0()) {
                com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f49691a.g(h52.getHolder().f36247g));
                final com.android.tools.r8.graph.H5 r10 = (a10 == null || (o10 = ((C11245i) this.f49691a.f()).h(a10, h52.getReference()).o()) == null) ? null : o10.r();
                if (r10 == null || !r10.d().n1()) {
                    return;
                }
                C4516j1 d11 = r10.d();
                d11.L0();
                TW tw2 = d11.f37320m;
                if (tw2.C()) {
                    return;
                }
                F1 i11 = tw2.i();
                if (i11.c0()) {
                    boolean z10 = f49690e;
                    if (!z10 && this.f49691a.a(h52).h(this.f49691a.E())) {
                        throw new AssertionError();
                    }
                    if (!z10 && this.f49691a.a(r10).h(this.f49691a.E())) {
                        throw new AssertionError();
                    }
                    if (((C11245i) this.f49691a.f()).f57405t.a(h52.getHolder())) {
                        return;
                    }
                    C4516j1 d12 = r10.d();
                    if (i11 != i10) {
                        com.android.tools.r8.graph.H2 holder = h52.getHolder();
                        C4798y c4798y = this.f49691a;
                        if (!AbstractC4420e.a(holder, r10, c4798y, (C4514j) c4798y.f()).d()) {
                            return;
                        }
                        com.android.tools.r8.graph.M2 p10 = h52.p();
                        boolean h02 = i11.h0();
                        d12.getClass();
                        char c10 = 2;
                        W9[] w9Arr = new W9[(C8704o7.a(h02) * 2) + 3];
                        w9Arr[0] = new C8938pa(EnumC5477Kw0.f41824b, 0);
                        w9Arr[1] = new V9(p10);
                        if (h02) {
                            w9Arr[2] = new C10546z9(1L, EnumC5477Kw0.f41825c);
                            w9Arr[3] = new C9271ra(EnumC9105qa.f51812g, T10.f44369e);
                            c10 = 4;
                        }
                        w9Arr[c10] = new C6440ab(EnumC5477Kw0.f41825c);
                        com.android.tools.r8.graph.M2 m22 = d12.getReference().f38297f;
                        int a11 = C8704o7.a(h02) + 1;
                        int w02 = d12.getReference().w0() + 1;
                        List asList = Arrays.asList(w9Arr);
                        List list = Collections.EMPTY_LIST;
                        r10.a(new com.android.tools.r8.graph.G(m22, a11, w02, asList, list, list), this.f49691a);
                        AbstractC4497i0 Q02 = d12.Q0();
                        C4798y c4798y2 = this.f49691a;
                        Q02.getClass();
                        C7215fB a12 = Q02.a(r10, c4798y2, EW.b(c4798y2));
                        C8048kB c8048kB = this.f49692b;
                        C8696o40 c8696o40 = f49689d;
                        com.android.tools.r8.ir.optimize.W w10 = c8048kB.f49535n;
                        c8696o40.a(a12.j().d(), w10 != null ? w10.a(a12) : com.android.tools.r8.ir.optimize.O.f54786c);
                        C8696o40.a(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                ((BitSet) obj).clear(0);
                            }
                        }, r10);
                        c8696o40.d(r10);
                        c8696o40.f(r10);
                        c10207x70.b(r10);
                    }
                    C4798y c4798y3 = this.f49691a;
                    InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                        @Override
                        public final void accept(Object obj) {
                            C8109kc.a(com.android.tools.r8.graph.H5.this, r10, (C8191l3) obj);
                        }
                    };
                    C8191l3 c8191l3 = c4798y3.f38386A;
                    if (c8191l3 != null) {
                        interfaceC6160Wr0.accept(c8191l3);
                    }
                    f49689d.getClass();
                    C8696o40.j(r10);
                    c10207x70.f53692d.d(r10);
                    h52.getHolder().d(h52.getReference());
                    C8048kB c8048kB2 = this.f49692b;
                    c8048kB2.a(h52);
                    c8048kB2.f49517C.f36611g.add(h52.getReference());
                }
            }
        }
    }

    public static void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, C8191l3 c8191l3) {
        if (!C8191l3.f49869f && c8191l3.f49872c == null) {
            throw new AssertionError();
        }
        C10601zX c10601zX = c8191l3.f49872c.f51426j;
        InterfaceC10100wX interfaceC10100wX = C9371s7.f52282a;
        InterfaceC10100wX interfaceC10100wX2 = (InterfaceC10100wX) c10601zX.f54040a.remove(c10601zX.a(h52));
        if (interfaceC10100wX2 != null) {
            interfaceC10100wX = interfaceC10100wX2;
        }
        if (interfaceC10100wX.g()) {
            return;
        }
        c10601zX.b(c8191l3.f49870a, h53.getReference(), interfaceC10100wX);
    }
}
