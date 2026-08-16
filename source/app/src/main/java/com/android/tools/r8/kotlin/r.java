package com.android.tools.r8.kotlin;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.BL;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C9251rQ;
import com.android.tools.r8.internal.KL;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.NQ;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.PQ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.IdentityHashMap;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class r {

    public static final boolean f55448a = true;

    public static InterfaceC10835p a(C4798y c4798y, com.android.tools.r8.graph.H2 h22, C4666r0 c4666r0, Consumer consumer, Supplier supplier) {
        try {
            return a(c4798y, h22, consumer, c4666r0);
        } catch (W e10) {
            if (((Boolean) supplier.get()).booleanValue()) {
                c4798y.E().f50691j.warning(new T(Origin.unknown(), Position.UNKNOWN, "An error occurred when parsing kotlin metadata. This normally happens when using a newer version of kotlin than the kotlin version released when this version of R8 was created. To find compatible kotlin versions, please see: https://developer.android.com/studio/build/kotlin-d8-r8-versions"));
            }
            c4798y.E().f50691j.info(new StringDiagnostic("Class " + h22.f36245e.j0() + " has malformed kotlin.Metadata: " + e10.getMessage()));
            return AbstractC10752b0.f55257c;
        } catch (Throwable th2) {
            if (((Boolean) supplier.get()).booleanValue()) {
                c4798y.E().f50691j.warning(new T(Origin.unknown(), Position.UNKNOWN, "An error occurred when parsing kotlin metadata. This normally happens when using a newer version of kotlin than the kotlin version released when this version of R8 was created. To find compatible kotlin versions, please see: https://developer.android.com/studio/build/kotlin-d8-r8-versions"));
            }
            C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
            StringDiagnostic stringDiagnostic = new StringDiagnostic("Unexpected error while reading " + h22.f36245e.j0() + "'s kotlin.Metadata: " + th2.getMessage());
            synchronized (c5094Ef0) {
                c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
                return AbstractC10752b0.f55256b;
            }
        }
    }

    public static String[] b(com.android.tools.r8.graph.R2 r22, String str) {
        r22.getClass();
        if (!(r22 instanceof R2.b)) {
            throw new C10841q("invalid '" + str + "' value: " + r22.j0());
        }
        com.android.tools.r8.graph.R2[] W02 = r22.n0().W0();
        String[] strArr = new String[W02.length];
        for (int i10 = 0; i10 < W02.length; i10++) {
            strArr[i10] = a(W02[i10], str + "[" + i10 + "]");
        }
        return strArr;
    }

    public static InterfaceC10835p a(C4798y c4798y, com.android.tools.r8.graph.H2 h22, Consumer consumer, C4666r0 c4666r0) {
        C10781g c10781g = c4798y.b().f38007a5;
        NQ a10 = a(c10781g, c4666r0.f37693c);
        if (a10 != null) {
            return a(c10781g, h22, a10, c4798y, consumer);
        }
        throw new W(new Exception("Could not parse metadata for " + h22.j0()));
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.H2 h22, Supplier supplier) {
        C4666r0 a10;
        C4724u1 b10 = c4798y.b();
        C10781g c10781g = b10.f38007a5;
        com.android.tools.r8.graph.M2 m22 = h22.f36247g;
        boolean z10 = true;
        if (!(m22 == c10781g.f55309b.f55263a || (m22 == c10781g.f55308a.f38068i2 && h22.f36248h.size() == 1)) || (a10 = h22.k0().a(b10.f37858F3)) == null) {
            return false;
        }
        C4422e1 c4422e1 = a10.f37693c;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (C4704t0 c4704t0 : c4422e1.f37143c) {
            identityHashMap.put(c4704t0.f37738b, c4704t0);
        }
        try {
            C4704t0 c4704t02 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55280a);
            if (c4704t02 != null) {
                if (((Integer) c4704t02.f37739c.F0()).intValue() == 3) {
                    NQ a11 = a(c10781g, identityHashMap);
                    if (a11 instanceof PQ) {
                        return ((PQ) a11).f43202b != null;
                    }
                }
                if (!f55448a) {
                    boolean z11 = a(c10781g, identityHashMap) instanceof PQ;
                    C4704t0 c4704t03 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55280a);
                    if (c4704t03 != null) {
                        if (((Integer) c4704t03.f37739c.F0()).intValue() != 3) {
                            z10 = false;
                        }
                        if (z11 != z10) {
                            throw new AssertionError((Object) "Synthetic class kinds should agree");
                        }
                    } else {
                        throw new C10841q("element 'k' is missing.");
                    }
                }
                return false;
            }
            throw new C10841q("element 'k' is missing.");
        } catch (W e10) {
            if (((Boolean) supplier.get()).booleanValue()) {
                c4798y.E().f50691j.warning(new T(Origin.unknown(), Position.UNKNOWN, "An error occurred when parsing kotlin metadata. This normally happens when using a newer version of kotlin than the kotlin version released when this version of R8 was created. To find compatible kotlin versions, please see: https://developer.android.com/studio/build/kotlin-d8-r8-versions"));
            }
            C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
            StringDiagnostic stringDiagnostic = new StringDiagnostic("Class " + h22.f36245e.j0() + " has malformed kotlin.Metadata: " + e10.getMessage());
            synchronized (c5094Ef0) {
                c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
                return false;
            }
        }
    }

    public static NQ a(C10781g c10781g, C4422e1 c4422e1) throws W {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (C4704t0 c4704t0 : c4422e1.f37143c) {
            identityHashMap.put(c4704t0.f37738b, c4704t0);
        }
        return a(c10781g, identityHashMap);
    }

    public static NQ a(C10781g c10781g, IdentityHashMap identityHashMap) {
        C4704t0 c4704t0 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55280a);
        if (c4704t0 != null) {
            Integer num = (Integer) c4704t0.f37739c.F0();
            num.getClass();
            C4704t0 c4704t02 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55281b);
            int[] a10 = c4704t02 == null ? null : a(c4704t02.f37739c);
            C4704t0 c4704t03 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55282c);
            String[] b10 = c4704t03 == null ? null : b(c4704t03.f37739c, "d1");
            C4704t0 c4704t04 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55283d);
            String[] b11 = c4704t04 == null ? null : b(c4704t04.f37739c, "d2");
            C4704t0 c4704t05 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55284e);
            String a11 = c4704t05 == null ? null : a(c4704t05.f37739c, "xs");
            C4704t0 c4704t06 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55285f);
            String a12 = c4704t06 == null ? null : a(c4704t06.f37739c, "pn");
            C4704t0 c4704t07 = (C4704t0) identityHashMap.get(c10781g.f55311d.f55286g);
            try {
                return NQ.a(new S(num, a10, b10, b11, a11, a12, c4704t07 == null ? null : (Integer) c4704t07.f37739c.F0()));
            } catch (C10841q | ClassCastException | IllegalArgumentException e10) {
                throw new W(e10);
            }
        }
        throw new C10841q("element 'k' is missing.");
    }

    public static InterfaceC10835p a(C10781g c10781g, com.android.tools.r8.graph.H2 h22, NQ nq, C4798y c4798y, Consumer consumer) {
        KL b10;
        O o10;
        ML a10 = nq.a();
        int i10 = 1;
        if (a10.f42275b == 1 && a10.f42276c < 4) {
            nq.a(M.f55114a);
            b10 = nq.b();
            nq.a(a10);
        } else {
            b10 = nq.b();
        }
        String str = b10.f41645g;
        if (nq instanceof NQ.a) {
            return C10829o.a((NQ.a) nq, str, h22, c4798y, consumer);
        }
        if (nq instanceof NQ.b) {
            NQ.b bVar = (NQ.b) nq;
            return new H(bVar, C10782g0.a(bVar.c(), h22, c4798y, consumer), str);
        }
        if (nq instanceof NQ.c) {
            return C10770e0.a((NQ.c) nq, str, c4798y.b());
        }
        if (nq instanceof NQ.d) {
            NQ.d dVar = (NQ.d) nq;
            return new C10776f0(dVar, C10782g0.a(dVar.c(), h22, c4798y, consumer), str);
        }
        if (nq instanceof PQ) {
            PQ pq = (PQ) nq;
            C9251rQ c9251rQ = pq.f43202b;
            boolean z10 = C10824n0.f55383e;
            if (c9251rQ != null) {
                K a11 = K.a(c9251rQ.f52036a, c4798y.b(), c4798y.E().f50691j);
                OL a12 = BL.a(c9251rQ.f52036a);
                if (a12 != null) {
                    for (C4516j1 c4516j1 : h22.z1()) {
                        if (AbstractC10752b0.a(c4516j1.getReference()).toString().equals(a12.toString())) {
                            c4516j1.a(a11);
                            o10 = new O(a11, true);
                            break;
                        }
                    }
                }
                o10 = new O(a11, false);
            } else {
                o10 = null;
            }
            com.android.tools.r8.graph.M2 m22 = h22.f36247g;
            if (m22 != c10781g.f55309b.f55263a) {
                i10 = (m22 == c10781g.f55308a.f38068i2 && h22.f36248h.size() == 1) ? 2 : 3;
            }
            return new C10824n0(pq, o10, i10, str);
        }
        throw new C10841q("unsupported 'k' value: " + b10.f41639a);
    }

    public static int[] a(com.android.tools.r8.graph.R2 r22) {
        r22.getClass();
        if (r22 instanceof R2.b) {
            com.android.tools.r8.graph.R2[] W02 = r22.n0().W0();
            int[] iArr = new int[W02.length];
            for (int i10 = 0; i10 < W02.length; i10++) {
                iArr[i10] = ((Integer) W02[i10].F0()).intValue();
            }
            return iArr;
        }
        throw new C10841q("invalid 'mv' value: " + r22.j0());
    }

    public static String a(com.android.tools.r8.graph.R2 r22, String str) {
        if (r22.R0()) {
            return ((com.android.tools.r8.graph.L2) r22.D0().W0()).toString();
        }
        throw new C10841q("invalid '" + str + "' value: " + r22.j0());
    }
}
