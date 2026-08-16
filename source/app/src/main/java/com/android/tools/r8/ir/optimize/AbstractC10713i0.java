package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C5692Oo0;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.JT;
import com.android.tools.r8.internal.R5;
import com.android.tools.r8.internal.U50;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public abstract class AbstractC10713i0 {
    public static boolean a(C7215fB c7215fB) {
        boolean z10;
        boolean z11;
        Iterator<W5> it = c7215fB.f47897d.iterator();
        boolean z12 = false;
        while (it.hasNext()) {
            W5 next = it.next();
            HashSet hashSet = new HashSet(next.u());
            for (boolean z13 = true; z13; z13 = z10) {
                z10 = false;
                for (C7201f60 c7201f60 : next.s()) {
                    Iterator<W5> it2 = next.u().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            W5 next2 = it2.next();
                            if (!next2.i().G1() || R5.a(next2) != next) {
                                break;
                            }
                        } else if (c7201f60.U() == 1 && c7201f60.W() == 1) {
                            Iterator<C10340xw0> it3 = c7201f60.c0().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (it3.next().U() != 1) {
                                        break;
                                    }
                                } else {
                                    JT m02 = c7201f60.Z().m0();
                                    if (m02 != null && !((C10340xw0) m02.f54321f.get(0)).z()) {
                                        HashSet hashSet2 = new HashSet();
                                        int i10 = 0;
                                        W5 w52 = next;
                                        while (w52 != null) {
                                            hashSet2.add(w52);
                                            Y5 it4 = w52.l().iterator();
                                            while (it4.hasNext()) {
                                                if (m02 == it4.next()) {
                                                    break;
                                                }
                                                int a10 = i10 - U50.a(m02);
                                                if (a10 < 0) {
                                                    break;
                                                }
                                                i10 = a10 + U50.b(m02);
                                            }
                                            w52 = (!w52.i().G1() || hashSet2.contains(w52.i().U().v2())) ? null : R5.a(w52);
                                        }
                                        i10 = Integer.MIN_VALUE;
                                        if (i10 == 0) {
                                            for (C10340xw0 c10340xw0 : c7201f60.c0()) {
                                                AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
                                                if (abstractC10561zE != null && (abstractC10561zE instanceof C5692Oo0) && hashSet.contains(abstractC10561zE.b())) {
                                                    AbstractC10561zE abstractC10561zE2 = c10340xw0.f53886c;
                                                    AbstractC10561zE b12 = abstractC10561zE2.b().i().b1();
                                                    int i11 = 0;
                                                    while (true) {
                                                        if (b12 == null || b12 == abstractC10561zE2) {
                                                            break;
                                                        }
                                                        int b10 = i11 - U50.b(abstractC10561zE2);
                                                        if (b10 < 0) {
                                                            i11 = Integer.MIN_VALUE;
                                                            break;
                                                        }
                                                        i11 = b10 + U50.a(abstractC10561zE2);
                                                        b12 = b12.b1();
                                                    }
                                                    if (i11 != 0) {
                                                    }
                                                }
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            Iterator<C10340xw0> it5 = c7201f60.c0().iterator();
                                            while (it5.hasNext()) {
                                                arrayList.add(it5.next().f53886c.M0());
                                            }
                                            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                                                C5692Oo0 c5692Oo0 = (C5692Oo0) arrayList.get(i12);
                                                c7201f60.a(i12, (C10340xw0) c5692Oo0.f54321f.get(0), (C10696a) null);
                                                C10340xw0 c10340xw02 = (C10340xw0) c5692Oo0.f54321f.get(0);
                                                c10340xw02.f53887d.remove(c5692Oo0);
                                                c10340xw02.f53888e = null;
                                                c5692Oo0.b().f45293f.b(c5692Oo0);
                                            }
                                            m02.d().f(c7201f60);
                                            C10340xw0 c10340xw03 = (C10340xw0) m02.f54321f.get(0);
                                            c10340xw03.f53887d.remove(m02);
                                            c10340xw03.f53888e = null;
                                            m02.b().f45293f.b(m02);
                                            c7201f60.f47865s = true;
                                            z11 = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z11 = false;
                    z10 |= z11;
                }
                if (z10) {
                    z12 = true;
                }
            }
        }
        return z12;
    }
}
