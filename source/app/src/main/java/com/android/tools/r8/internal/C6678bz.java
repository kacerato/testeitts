package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BooleanSupplier;
import java.util.function.Predicate;

public final class C6678bz {

    public static final boolean f46922f = true;

    public final C4798y f46923a;

    public final C5485La0 f46924b;

    public final boolean f46925c;

    public final IdentityHashMap f46926d = new IdentityHashMap();

    public final Set f46927e = AbstractC5513Ll0.c();

    public C6678bz(C4798y c4798y, C5485La0 c5485La0) {
        this.f46923a = c4798y;
        this.f46924b = c5485La0;
        boolean a10 = a();
        this.f46925c = a10;
        if (!f46922f && !a10) {
            throw new AssertionError();
        }
    }

    public static boolean a(C9603tZ c9603tZ, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == c9603tZ;
    }

    public static boolean b(com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.N4 b02 = e02.b0();
        C7233fH0 c7233fH0 = new C7233fH0();
        C4516j1 a10 = b02.f36638b.a(c7233fH0);
        if (a10 == null) {
            a10 = b02.f36638b.b(c7233fH0);
        }
        return a10 != null;
    }

    public static void a(C4798y c4798y, final C7829iu c7829iu) {
        c4798y.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C6678bz.a(C7829iu.this, (C6678bz) obj);
            }
        });
    }

    public static void a(C7829iu c7829iu, C6678bz c6678bz) {
        c6678bz.getClass();
        c7829iu.f49108t.add(new C6344Zy(c6678bz, AbstractC5513Ll0.c()));
    }

    public final boolean a() {
        com.android.tools.r8.graph.E0 c10 = ((C4514j) this.f46923a.f()).c(this.f46924b.f41998j);
        com.android.tools.r8.graph.E0 c11 = ((C4514j) this.f46923a.f()).c(this.f46924b.f41999k);
        if (c10 == null && c11 == null) {
            return false;
        }
        if (U30.a(c10, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6678bz.a((com.android.tools.r8.graph.E0) obj);
            }
        }, true)) {
            this.f46923a.E().f50691j.c("Unexpected implementation of `" + this.f46924b.f41998j.j0() + "`: disabling aggressive protobuf builder optimization.");
            return false;
        }
        if (!U30.a(c11, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6678bz.b((com.android.tools.r8.graph.E0) obj);
            }
        }, true)) {
            return true;
        }
        this.f46923a.E().f50691j.c("Unexpected implementation of `" + this.f46924b.f41999k.j0() + "`: disabling aggressive protobuf builder optimization.");
        return false;
    }

    public static boolean a(com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.N4 b02 = e02.b0();
        C7233fH0 c7233fH0 = new C7233fH0();
        C4516j1 a10 = b02.f36638b.a(c7233fH0);
        if (a10 == null) {
            a10 = b02.f36638b.b(c7233fH0);
        }
        return a10 != null;
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52, BooleanSupplier booleanSupplier) {
        com.android.tools.r8.graph.M2 m22;
        if (!this.f46925c) {
            return false;
        }
        C4516j1 d10 = h52.d();
        if (this.f46924b.a(d10)) {
            C5485La0 c5485La0 = this.f46924b;
            c5485La0.getClass();
            com.android.tools.r8.graph.M2 m23 = h22.f36247g;
            com.android.tools.r8.graph.M2 m24 = c5485La0.f41998j;
            if ((m23 == m24 || m23 == c5485La0.f41999k) && (m22 = h22.f36245e) != m24 && m22 != c5485La0.f41999k && booleanSupplier.getAsBoolean()) {
                if (!f46922f && this.f46926d.containsKey(h22) && ((com.android.tools.r8.graph.H5) this.f46926d.get(h22)).d() != d10) {
                    throw new AssertionError();
                }
                this.f46926d.put(h22, h52);
                return true;
            }
        }
        return false;
    }

    public final void a(final EW.a aVar, final C4798y c4798y, ExecutorService executorService, C8659ns0 c8659ns0) {
        if (this.f46926d.isEmpty()) {
            return;
        }
        c8659ns0.b("Remove dead builder references");
        final C11245i c11245i = (C11245i) c4798y.f();
        final C8048kB c8048kB = new C8048kB(c4798y);
        C5467Kr0.a(this.f46926d, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6678bz.this.a(c11245i, c4798y, c8048kB, aVar, (com.android.tools.r8.graph.H2) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        }, c4798y.E().G(), executorService);
        this.f46926d.clear();
        c8659ns0.d();
    }

    public final void a(C4798y c4798y, final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52, C8048kB c8048kB, EW.a aVar) {
        com.android.tools.r8.graph.A2 a22;
        C7215fB a10 = h52.a((C4798y<?>) c4798y, aVar);
        C7549hB p10 = a10.p();
        boolean z10 = f46922f;
        if (!z10) {
            com.android.tools.r8.graph.M2 m22 = h22.f36247g;
            C5485La0 c5485La0 = this.f46924b;
            if (m22 != c5485La0.f41998j && m22 != c5485La0.f41999k) {
                throw new AssertionError();
            }
        }
        C10340xw0 a11 = a10.a(C6949de.b(h22.f36247g, C8854p10.b(), (C4798y<? extends C4514j>) c4798y), (C4515j0) null);
        final C9603tZ c9603tZ = (C9603tZ) p10.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6678bz.a(com.android.tools.r8.graph.H2.this, (AbstractC10561zE) obj);
            }
        });
        if (!z10 && c9603tZ == null) {
            throw new AssertionError();
        }
        C7920jS c7920jS = new C7920jS(c9603tZ.b());
        c7920jS.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6678bz.a(C9603tZ.this, (AbstractC10561zE) obj);
            }
        });
        c7920jS.f49240c.a(new C9603tZ(h22.f36247g, a11), (C10696a) null);
        C5485La0 c5485La02 = this.f46924b;
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        C4724u1 c4724u1 = c5485La02.f41989a;
        com.android.tools.r8.graph.M2 m23 = holder.f36245e;
        final C4554l1 a12 = c4724u1.a(m23, m23, c5485La02.f42010v);
        final C7 c72 = new C7();
        QJ qj2 = (QJ) c7920jS.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6678bz.a(C4554l1.this, c72, (AbstractC10561zE) obj);
            }
        });
        if (!z10 && qj2 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 m24 = h22.f36247g;
        C5485La0 c5485La03 = this.f46924b;
        if (m24 == c5485La03.f41998j) {
            a22 = c5485La03.f42007s.f40794a;
        } else {
            a22 = c5485La03.f42008t.f41130b;
        }
        if (c72.b()) {
            boolean z11 = QJ.f43538p;
            PJ pj2 = (PJ) new PJ().a(Arrays.asList(a11, (C10340xw0) c72.a()));
            pj2.f44718d = a22;
            c7920jS.f49240c.a(pj2.c(), (C10696a) null);
        } else {
            C10340xw0 a13 = a10.a(C6949de.b(a12.f37449i, C8854p10.h(), (C4798y<? extends C4514j>) c4798y), (C4515j0) null);
            c7920jS.f49240c.a(new C5576Mo0(a12, a13), (C10696a) null);
            c7920jS.f49240c.f45926f = qj2.getPosition();
            PJ pj3 = (PJ) new PJ().a(Arrays.asList(a11, a13));
            pj3.f44718d = a22;
            c7920jS.f49240c.add(pj3.c());
        }
        c8048kB.a(a10, C8696o40.f51162b, C8659ns0.c());
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.c2() && abstractC10561zE.w0().f52627k == h22.f36245e;
    }

    public static boolean a(C4554l1 c4554l1, C7 c72, AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.R1()) {
            C7405gK i02 = abstractC10561zE.i0();
            if (i02.B2().s0().a(c4554l1.s0()) && i02.B2().z0().a(c4554l1.getType())) {
                c72.a((C7) i02.d());
                return false;
            }
        }
        if (abstractC10561zE instanceof C5576Mo0) {
            C5576Mo0 K02 = abstractC10561zE.K0();
            if (K02.getField() == c4554l1) {
                c72.a((C7) K02.d());
                return false;
            }
        }
        if (f46922f || abstractC10561zE.O1() || abstractC10561zE.w1()) {
            return abstractC10561zE.O1();
        }
        throw new AssertionError();
    }

    public final void a(C7215fB c7215fB) {
        C6949de b10;
        C10696a c10696a = new C10696a();
        C7549hB p10 = c7215fB.p();
        while (true) {
            C7942jc c7942jc = (C7942jc) p10.a(new C10398yF0());
            if (c7942jc != null) {
                if (c7942jc.f49274k == this.f46924b.f41997i) {
                    C10340xw0 i10 = c7942jc.n().i();
                    if (!i10.j() && i10.f53886c.T1()) {
                        C8405mK k02 = i10.f53886c.k0();
                        com.android.tools.r8.graph.A2 B22 = k02.B2();
                        if (this.f46924b.a(B22) || this.f46924b.b(B22)) {
                            if (!f46922f && B22.f36127i.f36441f.f36675b[0] != this.f46924b.f42003o) {
                                throw new AssertionError();
                            }
                            C10340xw0 c10340xw0 = (C10340xw0) k02.f54321f.get(1);
                            C5427Ka0 c5427Ka0 = this.f46924b.f42009u;
                            c5427Ka0.getClass();
                            C10340xw0 i11 = c10340xw0.i();
                            if (!i11.j()) {
                                AbstractC10561zE abstractC10561zE = i11.f53886c;
                                abstractC10561zE.getClass();
                                if ((abstractC10561zE instanceof C5576Mo0) && i11.f53886c.K0().getField() == c5427Ka0.f41703f && (b10 = k02.C2().b(this.f46923a).b()) != null) {
                                    C4514j c4514j = (C4514j) this.f46923a.f();
                                    com.android.tools.r8.graph.M2 E10 = b10.E();
                                    if (c4514j.b(E10, this.f46924b.f41997i)) {
                                        p10.a(new C5800Qk0(c7215fB.a(b10.a(C8854p10.h()), c7942jc.q()), c7942jc.n(), E10), c10696a);
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                c10696a.a(this.f46923a, c7215fB, C6628bi.b());
                return;
            }
        }
    }

    public final void a(C11245i c11245i, C4798y c4798y, C8048kB c8048kB, EW.a aVar, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        if (c11245i.f57396k.contains(h22.f36245e)) {
            return;
        }
        a(c4798y, h22, h52, c8048kB, aVar);
    }
}
