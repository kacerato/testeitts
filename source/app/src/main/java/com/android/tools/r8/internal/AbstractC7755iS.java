package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4570lh;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.C11011v;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.naming.MappingComposeException;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.positions.NotSupportedMapVersionForMappingComposeDiagnostic;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

public abstract class AbstractC7755iS {

    public static final boolean f48948a = true;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0066, code lost:
    
        if (r0.isUnknown() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static com.android.tools.r8.naming.I0 a(C11662i c11662i, C4798y c4798y, C8659ns0 c8659ns0, K40 k40, InterfaceC8297lj interfaceC8297lj) {
        L60 g60;
        if (!f48948a && !c4798y.E().J()) {
            throw new AssertionError();
        }
        if (c4798y.E().X().f50783a && c4798y.f().a().g() != null) {
            C10912b g10 = c4798y.f().a().g();
            com.android.tools.r8.naming.mappinginformation.b bVar = g10.f55828d.isEmpty() ? null : (com.android.tools.r8.naming.mappinginformation.b) g10.f55828d.iterator().next();
            if (bVar != null) {
                MapVersion s10 = bVar.s();
                if (AbstractC5384Jf0.a(s10)) {
                }
            }
            c4798y.E().f50691j.warning(new NotSupportedMapVersionForMappingComposeDiagnostic());
            c8659ns0.b("Write proguard map");
            C10912b g11 = c4798y.f().a().g();
            C8570nJ E10 = c4798y.E();
            if (!com.android.tools.r8.naming.L0.f55681f && E10.f50734x0 == null) {
                throw new AssertionError();
            }
            com.android.tools.r8.naming.I0 a10 = new com.android.tools.r8.naming.L0(g11, E10.f50734x0, E10).a();
            c8659ns0.d();
            return a10;
        }
        c8659ns0.b("Line number remapping");
        C8604na c8604na = new C8604na(c11662i);
        if (c4798y.E().f50697l instanceof ClassFileConsumer) {
            g60 = new C5374Jc(c4798y);
        } else {
            g60 = new G60(c4798y);
        }
        XU xu = new XU(c4798y, k40);
        for (com.android.tools.r8.graph.H2 h22 : c4798y.f().d()) {
            AbstractC9109qb0 abstractC9109qb0 = c4798y.E().f50596E1;
            if (abstractC9109qb0 != null ? true ^ abstractC9109qb0.b().a(h22.getType()) : true) {
                a(h22, c4798y, interfaceC8297lj, xu, c8604na, g60);
            }
        }
        g60.a();
        C10912b b10 = xu.b();
        c8659ns0.d();
        c4798y.E().X().getClass();
        if (c4798y.E().X().f50783a && c4798y.f().a().g() != null) {
            c8659ns0.b("Proguard map composition");
            try {
                C8570nJ E11 = c4798y.E();
                C10912b[] c10912bArr = {c4798y.f().a().g(), b10};
                boolean z10 = com.android.tools.r8.naming.T.f55756a;
                C11011v c11011v = new C11011v(E11);
                for (int i10 = 0; i10 < 2; i10++) {
                    c11011v.a(c10912bArr[i10]);
                }
                b10 = C10912b.d(c11011v.a());
                c8659ns0.d();
            } catch (MappingComposeException e10) {
                e = e10;
                throw new C5325If(e.getMessage(), e);
            } catch (IOException e11) {
                e = e11;
                throw new C5325If(e.getMessage(), e);
            }
        }
        c8659ns0.b("Write proguard map");
        C8570nJ E12 = c4798y.E();
        if (!com.android.tools.r8.naming.L0.f55681f && E12.f50734x0 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.naming.I0 a11 = new com.android.tools.r8.naming.L0(b10, E12.f50734x0, E12).a();
        c8659ns0.d();
        return a11;
    }

    public static void a(com.android.tools.r8.graph.H2 h22, C4798y c4798y, InterfaceC8297lj interfaceC8297lj, XU xu, C8604na c8604na, L60 l60) {
        F60 e60;
        com.android.tools.r8.graph.H5 h52;
        D60 d60;
        ArrayList arrayList;
        IdentityHashMap a10 = a(h22, c4798y);
        VU a11 = new VU(xu, h22, xu.f45714b.v().a(h22.f36245e), C4932Bl.b(xu.f45714b.s().c(h22.getType()).toString())).a(xu.f45713a).a(xu.f45714b.f38408a.g()).a();
        ArrayList arrayList2 = new ArrayList(a10.o());
        arrayList2.sort(new C4570lh());
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) obj;
            List<com.android.tools.r8.graph.H5> list = (List) a10.get(l22);
            int i11 = 1;
            if (list.size() > 1) {
                a(list);
                if (!f48948a && !a(c4798y, list)) {
                    throw new AssertionError();
                }
            }
            C8570nJ.i iVar = c4798y.E().f50611J1;
            iVar.getClass();
            if (iVar == C8570nJ.i.f50781b) {
                e60 = new C60();
            } else {
                e60 = new E60(c4798y.E());
            }
            D60 d602 = new D60(c4798y, e60, c8604na);
            for (com.android.tools.r8.graph.H5 h53 : list) {
                C4516j1 d10 = h53.d();
                if (!h53.getReference().t0().g(l22) || M60.a(c4798y.E(), d10) || d10.F0() || list.size() > i11) {
                    d602.f39445f = d10;
                    d602.f39446g = null;
                    int a12 = list.size() == i11 ? interfaceC8297lj.a(h53) : -1;
                    boolean z10 = a12 > 0 ? i11 == true ? 1 : 0 : false;
                    if (d10.Q0() != null && ((d10.Q0().t0() || d10.Q0().v0()) && !c4798y.a(h53.d()))) {
                        boolean z11 = list.size() > i11 ? i11 == true ? 1 : 0 : false;
                        h52 = h53;
                        d60 = d602;
                        arrayList = l60.a(h53, d602, z11, z10, a12);
                    } else {
                        h52 = h53;
                        d60 = d602;
                        arrayList = new ArrayList();
                    }
                    a11.a(h52, arrayList, d60, z10);
                    d602 = d60;
                    i11 = 1;
                }
            }
        }
    }

    public static boolean a(C4798y c4798y, List list) {
        com.android.tools.r8.graph.H0 b10;
        if (!(c4798y.E().f50697l instanceof ClassFileConsumer) && c4798y.f().h()) {
            C4514j l10 = c4798y.f().l();
            AbstractC11516y1 r10 = c4798y.r();
            Iterator it = list.iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) it.next();
                if (h52.d().j1()) {
                    if (!f48948a && !z10) {
                        throw new AssertionError();
                    }
                } else {
                    C8570nJ E10 = c4798y.E();
                    r10.getClass();
                    if (E10.R() && r10.a((com.android.tools.r8.graph.D5) h52).b(E10) && !h52.d().k1().d() && (b10 = l10.b(c4798y.b(h52.p()), h52.getReference())) != null) {
                        String str = h52.getReference().A0() + " is not kept but is overloaded";
                        if (!f48948a && !b10.getHolder().isInterface()) {
                            throw new AssertionError((Object) str);
                        }
                        com.android.tools.r8.graph.L2 l22 = h52.getReference().f38298g;
                    }
                    z10 = false;
                }
            }
        }
        return true;
    }

    public static int a(com.android.tools.r8.graph.H5 h52) {
        AbstractC4497i0 Q02 = h52.d().Q0();
        if (Q02 == null) {
            return 0;
        }
        if (Q02.v0()) {
            com.android.tools.r8.graph.W0 E02 = Q02.C().E0();
            if (E02 == null) {
                return 0;
            }
            return E02.p0();
        }
        if (Q02.t0()) {
            for (W9 w92 : Q02.V().E0()) {
                if (w92 instanceof C5541Ma) {
                    return ((C5541Ma) w92).V().f();
                }
            }
        }
        return 0;
    }

    public static void a(List list) {
        list.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return AbstractC7755iS.a((com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
    }

    public static int a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        int a10 = a(h52) - a(h53);
        if (a10 != 0) {
            return a10;
        }
        return h52.d().getReference().compareTo(h53.d().getReference());
    }

    public static IdentityHashMap a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        IdentityHashMap identityHashMap = new IdentityHashMap(h22.b0().f36638b.h());
        Iterator it = h22.L1().iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (!gk2.hasNext()) {
                return identityHashMap;
            }
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) gk2.next();
            h52.d();
            ((List) identityHashMap.computeIfAbsent(c4798y.s().a(h52.getReference()), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC7755iS.a((com.android.tools.r8.graph.L2) obj);
                }
            })).add(h52);
        }
    }

    public static List a(com.android.tools.r8.graph.L2 l22) {
        return new ArrayList();
    }
}
