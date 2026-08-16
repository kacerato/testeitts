package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class C5473Ku0 {

    public static final boolean f41804j = true;

    public final C5241Gu0 f41805a;

    public final C5241Gu0 f41806b;

    public final C5241Gu0 f41807c;

    public final C5241Gu0 f41808d;

    public final C4798y f41809e;

    public final C7215fB f41810f;

    public HashMap f41811g;

    public final IdentityHashMap f41812h = new IdentityHashMap();

    public boolean f41813i = false;

    public C5473Ku0(C4798y c4798y, C7215fB c7215fB) {
        this.f41809e = c4798y;
        this.f41810f = c7215fB;
        C4724u1 b10 = c4798y.b();
        this.f41805a = new C5241Gu0(b10.f37884J1);
        this.f41806b = new C5241Gu0(b10.f37877I1);
        this.f41807c = new C5241Gu0(b10.f37891K1);
        this.f41808d = new C5241Gu0(b10.f37870H1);
    }

    public final C5241Gu0 a(com.android.tools.r8.graph.M2 m22) {
        if (!m22.P0()) {
            return new C5241Gu0(m22);
        }
        if (m22.M0()) {
            return this.f41807c;
        }
        if (m22.J0()) {
            return this.f41808d;
        }
        if (m22.K0()) {
            return this.f41806b;
        }
        if (!f41804j && !m22.F0() && !m22.G0() && !m22.H0() && !m22.R0() && !m22.L0()) {
            throw new AssertionError();
        }
        return this.f41805a;
    }

    public final InterfaceC5415Ju0 b(C10340xw0 c10340xw0) {
        if (c10340xw0 instanceof C7673hx) {
            c10340xw0 = ((C7673hx) c10340xw0).f48743p;
        }
        if (c10340xw0 instanceof C8146ko0) {
            return ((C8146ko0) c10340xw0).f49763q;
        }
        int i10 = AbstractC5183Fu0.f40342a[c10340xw0.Y().ordinal()];
        if (i10 == 1) {
            return (InterfaceC5415Ju0) this.f41811g.get(c10340xw0);
        }
        if (i10 == 2) {
            return this.f41805a;
        }
        if (i10 == 3) {
            return this.f41806b;
        }
        if (i10 == 4) {
            return this.f41807c;
        }
        if (i10 == 5) {
            return this.f41808d;
        }
        throw new C5417Jv0("Unexpected type: " + ((Object) c10340xw0.Y()) + " for value: " + ((Object) c10340xw0));
    }

    public final com.android.tools.r8.graph.M2 a(C10340xw0 c10340xw0) {
        boolean z10 = f41804j;
        if (!z10 && !this.f41813i) {
            throw new AssertionError();
        }
        if (!z10 && !c10340xw0.Y().a()) {
            throw new AssertionError();
        }
        InterfaceC5415Ju0 interfaceC5415Ju0 = (InterfaceC5415Ju0) this.f41811g.get(c10340xw0);
        if (interfaceC5415Ju0 == null) {
            return null;
        }
        return interfaceC5415Ju0.a();
    }

    public final com.android.tools.r8.graph.M2 a(Set set) {
        if (!f41804j && set.isEmpty()) {
            throw new AssertionError();
        }
        if (set.size() == 1) {
            return (com.android.tools.r8.graph.M2) set.iterator().next();
        }
        Iterator it = set.iterator();
        AbstractC8999pu0 a10 = AbstractC8999pu0.a((com.android.tools.r8.graph.M2) it.next(), C8854p10.h(), (C4798y<?>) this.f41809e);
        while (it.hasNext()) {
            a10 = a10.a(this.f41809e, AbstractC8999pu0.a((com.android.tools.r8.graph.M2) it.next(), C8854p10.h(), (C4798y<?>) this.f41809e));
        }
        if (a10.y()) {
            if (!f41804j && (a10 instanceof C6301Zd0)) {
                throw new AssertionError();
            }
            return a10.d().a(this.f41809e.b());
        }
        throw new C5325If("Unexpected join " + ((Object) a10) + " of types: " + String.join(", ", (Iterable<? extends CharSequence>) set.stream().map(new C9743uL0()).collect(Collectors.toList())));
    }

    public final InterfaceC5415Ju0 a(InterfaceC5415Ju0 interfaceC5415Ju0, InterfaceC5415Ju0 interfaceC5415Ju02) {
        if (interfaceC5415Ju0 == interfaceC5415Ju02) {
            return interfaceC5415Ju0;
        }
        com.android.tools.r8.graph.M2 a10 = interfaceC5415Ju0.a();
        com.android.tools.r8.graph.M2 a11 = interfaceC5415Ju02.a();
        if ((interfaceC5415Ju0 instanceof C5241Gu0) && (interfaceC5415Ju02 instanceof C5241Gu0) && a10 == a11) {
            return interfaceC5415Ju0;
        }
        if (f41804j || !(a10.P0() || a11.P0())) {
            return a(a(QC.a(2, 2, a10, a11)));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        com.android.tools.r8.graph.M2 a10;
        InterfaceC5415Ju0 a11;
        this.f41813i = true;
        this.f41811g = new HashMap();
        ArrayList arrayList = new ArrayList();
        Set c10 = AbstractC5513Ll0.c();
        AE o10 = this.f41810f.o();
        int i10 = 0;
        int i11 = this.f41810f.v().f37314g.n() ? 0 : -1;
        AbstractC10561zE abstractC10561zE = null;
        while (o10.hasNext()) {
            abstractC10561zE = o10.next();
            if (!abstractC10561zE.k1()) {
                break;
            }
            com.android.tools.r8.graph.A2 reference = this.f41810f.j().getReference();
            if (i11 < 0) {
                if (reference.b(this.f41809e.b())) {
                    a11 = new C5357Iu0(abstractC10561zE.v(), reference.s0());
                } else {
                    a11 = a(reference.s0());
                }
            } else {
                a11 = a(reference.f36127i.f36441f.f36675b[i11]);
            }
            C10340xw0 d10 = abstractC10561zE.d();
            if (d10.Y().a()) {
                this.f41811g.put(d10, a11);
                a(d10, c10);
            }
            i11++;
        }
        while (abstractC10561zE != null) {
            boolean z10 = f41804j;
            if (!z10 && abstractC10561zE.k1()) {
                throw new AssertionError();
            }
            if (abstractC10561zE.d() != null) {
                if (abstractC10561zE.c2()) {
                    this.f41811g.put(abstractC10561zE.d(), (C5299Hu0) this.f41812h.computeIfAbsent(abstractC10561zE.w0(), new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return new C5299Hu0((C9603tZ) obj);
                        }
                    }));
                    a(abstractC10561zE.d(), c10);
                } else if (abstractC10561zE.s2().a()) {
                    C10340xw0 d11 = abstractC10561zE.d();
                    if (abstractC10561zE.d1()) {
                        if (abstractC10561zE.w1()) {
                            if (!z10 && !abstractC10561zE.J().A2()) {
                                throw new AssertionError();
                            }
                            if (d11.U() == d11.V()) {
                                arrayList.add(abstractC10561zE.J());
                            }
                        }
                        this.f41811g.put(d11, a(abstractC10561zE.a(this.f41809e, this)));
                        a(d11, c10);
                    }
                }
            }
            abstractC10561zE = o10.hasNext() ? o10.next() : null;
        }
        while (!c10.isEmpty()) {
            C10340xw0 c10340xw0 = (C10340xw0) c10.iterator().next();
            c10.remove(c10340xw0);
            if (!f41804j && !c10340xw0.Y().a()) {
                throw new AssertionError();
            }
            InterfaceC5415Ju0 interfaceC5415Ju0 = (InterfaceC5415Ju0) this.f41811g.get(c10340xw0);
            com.android.tools.r8.graph.M2 a12 = interfaceC5415Ju0 == null ? null : interfaceC5415Ju0.a();
            if (c10340xw0.j()) {
                a10 = c10340xw0.l().a(this.f41809e, this);
            } else {
                a10 = c10340xw0.f53886c.a(this.f41809e, this);
            }
            if (a12 != a10) {
                this.f41811g.put(c10340xw0, a(a10));
                a(c10340xw0, c10);
            }
        }
        this.f41813i = false;
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C9126qh c9126qh = (C9126qh) obj;
            Iterator it = c9126qh.d().a0().iterator();
            InterfaceC5415Ju0 interfaceC5415Ju02 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C7201f60 c7201f60 = (C7201f60) it.next();
                if (interfaceC5415Ju02 == null) {
                    interfaceC5415Ju02 = (InterfaceC5415Ju0) this.f41811g.get(c7201f60);
                } else if (interfaceC5415Ju02.a() != ((InterfaceC5415Ju0) this.f41811g.get(c7201f60)).a()) {
                    interfaceC5415Ju02 = null;
                    break;
                }
            }
            if (interfaceC5415Ju02 != null) {
                this.f41811g.put(c9126qh.d(), interfaceC5415Ju02);
            }
        }
    }

    public static void a(C10340xw0 c10340xw0, Set set) {
        set.addAll(c10340xw0.a0());
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            if (abstractC10561zE.d() != null && abstractC10561zE.s2().a() && !abstractC10561zE.d1()) {
                set.add(abstractC10561zE.d());
            }
        }
    }
}
