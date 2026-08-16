package com.android.tools.r8.internal;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4651q3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.kotlin.AbstractC10752b0;
import com.android.tools.r8.kotlin.InterfaceC10835p;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC6662bt0 {

    public static final boolean f46880e = true;

    public final C4798y f46881a;

    public final C4724u1 f46882b;

    public final IdentityHashMap f46883c = new IdentityHashMap();

    public final IdentityHashMap f46884d = new IdentityHashMap();

    public AbstractC6662bt0(C4798y c4798y) {
        this.f46881a = c4798y;
        this.f46882b = c4798y.b();
    }

    public final C4500i3 a(C4500i3 c4500i3) {
        if (c4500i3 == null) {
            return null;
        }
        com.android.tools.r8.graph.M2 m22 = c4500i3.f37289a;
        if (m22 != null) {
            com.android.tools.r8.graph.M2 a10 = a(m22);
            return a10 != m22 ? new C4500i3(a10) : c4500i3;
        }
        com.android.tools.r8.graph.A2 a11 = c4500i3.a();
        if (!f46880e && a11 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a12 = a(c4500i3.a());
        return a12 != a11 ? new C4500i3(a12) : c4500i3;
    }

    public abstract void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23);

    public abstract void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23);

    public abstract void a(C4554l1 c4554l1, C4554l1 c4554l12);

    public abstract com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.M2 m22);

    public final void b(C4554l1 c4554l1) {
        C4554l1 a10 = a(c4554l1);
        if (c4554l1 != a10) {
            a(c4554l1, a10);
        }
    }

    public final List c(List list) {
        if (!list.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(list.size());
            Iterator it = list.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                com.android.tools.r8.graph.M2 a10 = ((com.android.tools.r8.graph.A5) it.next()).a();
                com.android.tools.r8.graph.M2 a11 = a(a10);
                linkedHashSet.add(a11);
                z10 |= a11 != a10;
            }
            if (z10) {
                ArrayList arrayList = new ArrayList(linkedHashSet.size());
                Iterator<E> it2 = linkedHashSet.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new com.android.tools.r8.graph.A5((com.android.tools.r8.graph.M2) it2.next()));
                }
                return arrayList;
            }
        }
        return list;
    }

    public final void b(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.A2 a10 = a(a22);
        if (a22 != a10) {
            a(a22, a10);
        }
    }

    public final List b(List list) {
        if (!list.isEmpty()) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                com.android.tools.r8.graph.M2 a10 = ((C4634p5) it.next()).a();
                com.android.tools.r8.graph.M2 a11 = a(a10);
                arrayList.add(new C4634p5(a11));
                z10 |= a11 != a10;
            }
            if (z10) {
                return arrayList;
            }
        }
        return list;
    }

    public final void a() {
        if (this.f46881a.f().i()) {
            C11245i m10 = this.f46881a.f().m();
            m10.f57400o.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC6662bt0.this.b((C4554l1) obj);
                }
            });
            m10.f57399n.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC6662bt0.this.b((com.android.tools.r8.graph.A2) obj);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList a(Collection collection) {
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            final com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            arrayList.add((com.android.tools.r8.graph.H2) this.f46883c.computeIfAbsent(h22.getType(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC6662bt0.this.a(h22, (com.android.tools.r8.graph.M2) obj);
                }
            }));
        }
        return arrayList;
    }

    public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        return a(h22);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0196  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.H2 a(final com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.H2 h23;
        List<com.android.tools.r8.graph.P5> list;
        com.android.tools.r8.graph.L2 l22;
        C4615o5 c4615o5;
        List list2;
        List<com.android.tools.r8.graph.P5> list3;
        InterfaceC10835p interfaceC10835p;
        com.android.tools.r8.graph.M2 a10 = a(h22.getType());
        ProgramResource.Kind kind = h22.f36366u;
        Origin origin = h22.f36244d;
        com.android.tools.r8.graph.Q accessFlags = h22.getAccessFlags();
        com.android.tools.r8.graph.M2 m22 = h22.f36247g;
        com.android.tools.r8.graph.M2 a11 = m22 == null ? null : a(m22);
        com.android.tools.r8.graph.O2 o22 = h22.f36248h;
        com.android.tools.r8.graph.M2[] m2Arr = o22.f36675b;
        int length = m2Arr.length;
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[length];
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            com.android.tools.r8.graph.M2 m23 = m2Arr[i10];
            com.android.tools.r8.graph.M2 a12 = a(m23);
            m2Arr2[i10] = a12;
            z10 |= a12 != m23;
        }
        if (z10) {
            m2Arr = m2Arr2;
        }
        if (m2Arr != o22.f36675b) {
            o22 = new com.android.tools.r8.graph.O2(m2Arr);
        }
        com.android.tools.r8.graph.O2 o23 = o22;
        com.android.tools.r8.graph.L2 Z02 = h22.Z0();
        C4615o5 U02 = h22.U0();
        C4615o5 c4615o52 = U02 != null ? new C4615o5(a(U02.a())) : null;
        List b10 = b(h22.V0());
        List c10 = c(h22.W0());
        List<com.android.tools.r8.graph.P5> X02 = h22.X0();
        if (X02.isEmpty()) {
            list = X02;
            l22 = Z02;
            c4615o5 = c4615o52;
            list2 = b10;
        } else {
            ArrayList arrayList = new ArrayList(X02.size());
            Iterator<com.android.tools.r8.graph.P5> it = X02.iterator();
            boolean z11 = false;
            while (it.hasNext()) {
                List<com.android.tools.r8.graph.P5> list4 = X02;
                com.android.tools.r8.graph.P5 next = it.next();
                Iterator<com.android.tools.r8.graph.P5> it2 = it;
                C4554l1 c4554l1 = next.f36704b;
                List list5 = b10;
                C4554l1 a13 = a(c4554l1);
                C4615o5 c4615o53 = c4615o52;
                com.android.tools.r8.graph.L2 l23 = Z02;
                arrayList.add(new com.android.tools.r8.graph.P5(a13, next.c(), next.a()));
                z11 |= a13 != c4554l1;
                it = it2;
                X02 = list4;
                b10 = list5;
                c4615o52 = c4615o53;
                Z02 = l23;
            }
            list = X02;
            l22 = Z02;
            c4615o5 = c4615o52;
            list2 = b10;
            if (z11) {
                list3 = arrayList;
                h23 = new com.android.tools.r8.graph.H2(a10, kind, origin, accessFlags, a11, o23, l22, c4615o5, list2, c10, list3, a(h22.O0()), a((List) h22.Q0()), h22.N0(), h22.k0(), InterfaceC4651q3.empty(), new N4.a() {
                    @Override
                    public final com.android.tools.r8.graph.N4 a(com.android.tools.r8.graph.E0 e02) {
                        return AbstractC6662bt0.this.a(h22, e02);
                    }
                }, this.f46882b.f37846D6, h22.f36371z, h22.f36370y);
                h23.a(a(h22.k1(), C6628bi.b()));
                h23.b(a(h22.A1(), C6628bi.b()));
                if (h22.f36367v != null) {
                    C5313Ib G12 = h22.G1();
                    boolean z12 = com.android.tools.r8.graph.H2.f36364C;
                    if (!z12 && h23.f36367v != null) {
                        throw new AssertionError();
                    }
                    if (!z12 && G12 == null) {
                        throw new AssertionError();
                    }
                    h23.f36367v = G12;
                }
                if (h22.f36368w) {
                    h23.f36368w = true;
                }
                interfaceC10835p = h22.f36369x;
                if (interfaceC10835p != null) {
                    if (!com.android.tools.r8.graph.H2.f36364C && h23.f36369x != AbstractC10752b0.f55256b) {
                        throw new AssertionError();
                    }
                    h23.f36369x = interfaceC10835p;
                }
                if (!h23.getType().a(h22.getType())) {
                    a(h22.getType(), h23.getType());
                }
                return h23;
            }
        }
        list3 = list;
        h23 = new com.android.tools.r8.graph.H2(a10, kind, origin, accessFlags, a11, o23, l22, c4615o5, list2, c10, list3, a(h22.O0()), a((List) h22.Q0()), h22.N0(), h22.k0(), InterfaceC4651q3.empty(), new N4.a() {
            @Override
            public final com.android.tools.r8.graph.N4 a(com.android.tools.r8.graph.E0 e02) {
                return AbstractC6662bt0.this.a(h22, e02);
            }
        }, this.f46882b.f37846D6, h22.f36371z, h22.f36370y);
        h23.a(a(h22.k1(), C6628bi.b()));
        h23.b(a(h22.A1(), C6628bi.b()));
        if (h22.f36367v != null) {
        }
        if (h22.f36368w) {
        }
        interfaceC10835p = h22.f36369x;
        if (interfaceC10835p != null) {
        }
        if (!h23.getType().a(h22.getType())) {
        }
        return h23;
    }

    public final com.android.tools.r8.graph.N4 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        return new com.android.tools.r8.graph.N4(e02, b02.f36638b.a(new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC6662bt0.this.a((C4516j1) obj);
            }
        }));
    }

    public final C4460g1[] a(List list, Consumer consumer) {
        if (list == null) {
            return C4460g1.f37200o;
        }
        C4460g1[] c4460g1Arr = new C4460g1[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            C4460g1 c4460g1 = (C4460g1) list.get(i10);
            C4554l1 reference = c4460g1.getReference();
            C4554l1 a10 = a(reference);
            if (a10 != reference) {
                C4460g1 a11 = c4460g1.a(this.f46881a, a10, consumer);
                a(c4460g1.getReference(), a11.getReference());
                c4460g1 = a11;
            }
            c4460g1Arr[i10] = c4460g1;
        }
        return c4460g1Arr;
    }

    public C4554l1 a(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 a10 = a(c4554l1.f37449i);
        return this.f46882b.a(a(c4554l1.f38297f), a10, c4554l1.f38298g);
    }

    public final List a(List list) {
        if (!list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                C4425e4 c4425e4 = (C4425e4) it.next();
                com.android.tools.r8.graph.M2 b10 = c4425e4.b();
                com.android.tools.r8.graph.M2 a10 = b10 != null ? a(b10) : null;
                com.android.tools.r8.graph.M2 d10 = c4425e4.d();
                com.android.tools.r8.graph.M2 a11 = d10 != null ? a(d10) : null;
                com.android.tools.r8.graph.L2 c10 = c4425e4.c();
                boolean z11 = (a10 == b10 && a11 == d10) ? false : true;
                if (z11 && b10 != null && d10 != null && c4425e4.c() != null) {
                    String b11 = C4932Bl.b(a11.C0(), a10.C0());
                    if (b11 != null) {
                        c10 = this.f46882b.b(b11);
                    } else {
                        boolean z12 = f46880e;
                        if (!z12 && this.f46881a.E().W()) {
                            throw new AssertionError();
                        }
                        if (!z12 && this.f46881a.f().c(a11) != null) {
                            throw new AssertionError();
                        }
                    }
                }
                arrayList.add(new C4425e4(c4425e4.a(), a10, a11, c10));
                z10 |= z11;
            }
            if (z10) {
                return arrayList;
            }
        }
        return list;
    }

    public final C4516j1 a(C4516j1 c4516j1) {
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        com.android.tools.r8.graph.A2 a10 = a(reference);
        if (reference.a(a10)) {
            return c4516j1;
        }
        C4724u1 c4724u1 = this.f46882b;
        c4516j1.L0();
        C4516j1 a11 = c4516j1.a(a10, c4724u1, (Consumer) null);
        a(c4516j1.getReference(), a11.getReference());
        return a11;
    }

    public com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22) {
        return this.f46882b.a(a(a22.f38297f), a(a22.f36127i), a22.f38298g);
    }

    public final com.android.tools.r8.graph.I2 a(com.android.tools.r8.graph.I2 i22) {
        com.android.tools.r8.graph.I2 i23 = (com.android.tools.r8.graph.I2) this.f46884d.get(i22);
        if (i23 != null) {
            return i23;
        }
        com.android.tools.r8.graph.M2 a10 = a(i22.f36440e);
        com.android.tools.r8.graph.M2[] m2Arr = i22.f36441f.f36675b;
        int length = m2Arr.length;
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[length];
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            com.android.tools.r8.graph.M2 m22 = m2Arr[i10];
            com.android.tools.r8.graph.M2 a11 = a(m22);
            m2Arr2[i10] = a11;
            z10 |= a11 != m22;
        }
        if (z10) {
            m2Arr = m2Arr2;
        }
        com.android.tools.r8.graph.I2 a12 = this.f46882b.a(a10, m2Arr);
        this.f46884d.put(i22, a12);
        return a12;
    }

    public com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        if (!m22.E0()) {
            return m22.I0() ? b(m22) : m22;
        }
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f46882b);
        com.android.tools.r8.graph.M2 a11 = a(a10);
        return a10 == a11 ? m22 : m22.a(this.f46882b, a11);
    }
}
