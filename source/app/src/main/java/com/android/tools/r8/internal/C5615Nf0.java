package com.android.tools.r8.internal;

import com.android.tools.r8.errors.FinalRClassEntriesWithOptimizedShrinkingDiagnostic;
import com.android.tools.r8.graph.C4367b3;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.function.Predicate;

public final class C5615Nf0 implements InterfaceC5005Cs0 {

    public static final boolean f42662e = true;

    public final C10444yb0 f42663a;

    public final IdentityHashMap f42664b = new IdentityHashMap();

    public final C4798y f42665c;

    public final com.android.tools.r8.shaking.N f42666d;

    public C5615Nf0(C4798y c4798y, com.android.tools.r8.shaking.N n10) {
        this.f42665c = c4798y;
        this.f42663a = c4798y.f38400O;
        this.f42666d = n10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(C4554l1 c4554l1, D3.a aVar, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.shaking.L0 l02) {
        com.android.tools.r8.graph.F5 o10 = aVar.o();
        if (o10 != null && this.f42666d.e(o10.getHolder())) {
            com.android.tools.r8.graph.M2 p10 = o10.p();
            if (!this.f42664b.containsKey(p10)) {
                com.android.tools.r8.graph.H2 holder = o10.getHolder();
                C5500Lf0 c5500Lf0 = new C5500Lf0();
                a(holder, c5500Lf0);
                com.android.tools.r8.graph.H5 h10 = holder.h(holder.L0());
                if (h10 != null) {
                    a(c5500Lf0, h10);
                }
                if (this.f42665c.E().S()) {
                    for (C4460g1 c4460g1 : holder.I0()) {
                        if (c4460g1.w0() && c4460g1.f37202g.e() && c4460g1.L0() && c4460g1.getType().L0()) {
                            this.f42665c.E().f50691j.warning(new FinalRClassEntriesWithOptimizedShrinkingDiagnostic(holder.f36244d, c4460g1.getReference()));
                        }
                    }
                }
                this.f42664b.put(holder.getType(), new C5557Mf0(c5500Lf0.f42032a));
            }
            if (!f42662e && !this.f42664b.containsKey(p10)) {
                throw new AssertionError();
            }
            TH th2 = (TH) ((C5557Mf0) this.f42664b.get(p10)).f42340a.get(c4554l1);
            if (th2 != null) {
                UH it = th2.iterator();
                while (it.hasNext()) {
                    this.f42663a.a(((Integer) it.next()).intValue(), c4554l1.toString());
                }
            }
        }
    }

    public final void a(C5500Lf0 c5500Lf0, com.android.tools.r8.graph.H5 h52) {
        CH ch2;
        for (C5634No0 c5634No0 : h52.a(this.f42665c, EW.d()).b((Predicate) new YN0())) {
            C10340xw0 value = c5634No0.value();
            if (!value.j()) {
                AbstractC10561zE abstractC10561zE = c5634No0.value().f53886c;
                if (abstractC10561zE.w1()) {
                    ch2 = new CH(1);
                    ch2.add(abstractC10561zE.J().u2());
                } else if (!(abstractC10561zE instanceof C5731Pf0)) {
                    if (abstractC10561zE instanceof C8769oZ) {
                        C8769oZ t02 = abstractC10561zE.t0();
                        CH ch3 = new CH(16);
                        for (AbstractC10561zE abstractC10561zE2 : t02.d().b0()) {
                            if (abstractC10561zE2.o1()) {
                                C10340xw0 value2 = abstractC10561zE2.A().value();
                                if (value2.K()) {
                                    ch3.add(value2.r().J().u2());
                                } else if (value2.M()) {
                                    AbstractC8291lh n10 = value2.n();
                                    n10.getClass();
                                    if (n10 instanceof C5731Pf0) {
                                        throw new C5417Jv0("Only running ResourceAccessAnalysis in initial tree shaking");
                                    }
                                } else {
                                    continue;
                                }
                            } else if (!f42662e && abstractC10561zE2 != c5634No0) {
                                throw new AssertionError();
                            }
                        }
                        ch2 = ch3;
                    } else if (abstractC10561zE.a2()) {
                        CH ch4 = new CH(16);
                        ArrayList arrayList = abstractC10561zE.u0().f54321f;
                        int size = arrayList.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = arrayList.get(i10);
                            i10++;
                            C10340xw0 c10340xw0 = (C10340xw0) obj;
                            if (!value.j()) {
                                AbstractC10561zE abstractC10561zE3 = c10340xw0.f53886c;
                                if (abstractC10561zE3.w1()) {
                                    ch4.add(abstractC10561zE3.J().u2());
                                } else if (abstractC10561zE3 instanceof C5731Pf0) {
                                    throw new C5417Jv0("Only running ResourceAccessAnalysis in initial tree shaking");
                                }
                            }
                        }
                        ch2 = ch4;
                    } else {
                        continue;
                    }
                } else {
                    throw new C5417Jv0("Only running ResourceAccessAnalysis in initial tree shaking");
                }
                C4554l1 field = c5634No0.getField();
                if (!C5500Lf0.f42031b && c5500Lf0.f42032a.containsKey(field)) {
                    throw new AssertionError();
                }
                c5500Lf0.f42032a.put(field, ch2);
            }
        }
    }

    public static void a(com.android.tools.r8.graph.H2 h22, C5500Lf0 c5500Lf0) {
        for (C4460g1 c4460g1 : C9073qK.a(h22.A1(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4460g1) obj).L0();
            }
        })) {
            com.android.tools.r8.graph.R2 K02 = c4460g1.K0();
            if (K02.N0()) {
                CH ch2 = new CH(1);
                ch2.add(K02.w0().W0());
                c4460g1.a((com.android.tools.r8.graph.R2) new C4367b3(K02.w0().f36754d));
                C4554l1 reference = c4460g1.getReference();
                if (!C5500Lf0.f42031b && c5500Lf0.f42032a.containsKey(reference)) {
                    throw new AssertionError();
                }
                c5500Lf0.f42032a.put(reference, ch2);
            }
        }
    }
}
