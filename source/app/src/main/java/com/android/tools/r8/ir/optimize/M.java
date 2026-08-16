package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6588bS;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.J20;
import com.android.tools.r8.internal.M20;
import com.android.tools.r8.internal.N20;
import com.android.tools.r8.internal.NJ;
import com.android.tools.r8.internal.TW;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class M {

    public static final boolean f54775c = true;

    public final C4798y f54776a;

    public final C4724u1 f54777b;

    public M(C4798y c4798y) {
        this.f54776a = c4798y;
        this.f54777b = c4798y.b();
    }

    public final void a(final C7215fB c7215fB) {
        com.android.tools.r8.graph.H0 e10;
        M20 m20 = new M20(new L());
        H5 j10 = c7215fB.j();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            Y5 it2 = it.next().l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next = it2.next();
                if (next.P1()) {
                    VJ e02 = next.e0();
                    if (e02.d() != null && !next.d().z()) {
                        A2 B22 = e02.B2();
                        C6588bS c6588bS = this.f54776a.f38433z;
                        c6588bS.getClass();
                        if (!c6588bS.a(e02.B2(), e02.f54321f) || !this.f54777b.f37822A6.contains(B22)) {
                            if (!this.f54776a.m()) {
                                continue;
                            } else {
                                if (!f54775c && !this.f54776a.f().i()) {
                                    throw new AssertionError();
                                }
                                C4798y<C11245i> M10 = this.f54776a.M();
                                Z4.c<?> o10 = M10.f().b(e02.B2(), e02.A2()).o();
                                if (o10 != null && !o10.a(j10, M10).b() && (e10 = e02.e(M10, j10)) != null) {
                                    C4516j1 d10 = e10.d();
                                    d10.L0();
                                    TW tw = d10.f37320m;
                                    M10.E();
                                    if (!tw.a(e02)) {
                                        if (tw.F()) {
                                            if (next.Q1() && next.f0().C2().i().u().v()) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        ArrayList arrayList = next.f54321f;
                        int size = arrayList.size();
                        int i10 = 0;
                        while (true) {
                            if (i10 < size) {
                                Object obj = arrayList.get(i10);
                                i10++;
                                C10340xw0 c10340xw0 = (C10340xw0) obj;
                                if (!c10340xw0.j() && c10340xw0.f53886c.v1() && c10340xw0.f53886c.b().q() == 0) {
                                }
                            } else {
                                ((List) m20.computeIfAbsent(e02, new Function() {
                                    @Override
                                    public final Object apply(Object obj2) {
                                        return com.android.tools.r8.ir.optimize.M.a((VJ) obj2);
                                    }
                                })).add(next.d());
                                break;
                            }
                        }
                    }
                }
            }
        }
        if (m20.isEmpty()) {
            return;
        }
        if (!f54775c && c7215fB.k().z()) {
            throw new AssertionError();
        }
        final HashMap hashMap = new HashMap();
        if (m20.f42145m == null) {
            m20.f42145m = new J20(m20);
        }
        m20.f42145m.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                return com.android.tools.r8.ir.optimize.M.a((N20) obj2);
            }
        }).sorted(new Comparator() {
            @Override
            public final int compare(Object obj2, Object obj3) {
                int compare;
                compare = Integer.compare(((List) ((N20) obj3).getValue()).size(), ((List) ((N20) obj2).getValue()).size());
                return compare;
            }
        }).limit(15L).forEach(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.ir.optimize.M.a(C7215fB.this, hashMap, (N20) obj2);
            }
        });
        if (!hashMap.isEmpty()) {
            Iterator<W5> it3 = c7215fB.f47897d.iterator();
            while (it3.hasNext()) {
                Y5 I10 = it3.next().I();
                while (I10.hasNext()) {
                    AbstractC10561zE next2 = I10.next();
                    if (next2.P1()) {
                        VJ e03 = next2.e0();
                        if (hashMap.containsKey(e03)) {
                            C10340xw0 c10340xw02 = (C10340xw0) hashMap.get(e03);
                            if (!f54775c && c10340xw02 == null) {
                                throw new AssertionError();
                            }
                            e03.d().f(c10340xw02);
                            I10.i();
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
        c7215fB.a((C6382aB) null, (C10696a) null);
        c7215fB.x();
        if (!f54775c && !c7215fB.b(this.f54776a)) {
            throw new AssertionError();
        }
    }

    public static List a(VJ vj2) {
        return new ArrayList();
    }

    public static boolean a(N20 n20) {
        return ((List) n20.getValue()).size() > 1;
    }

    public static void a(C7215fB c7215fB, Map map, N20 n20) {
        VJ vj2 = (VJ) n20.getKey();
        C10340xw0 a10 = c7215fB.a(vj2.a(), vj2.d().s());
        NJ a11 = NJ.a(vj2.w2(), vj2.B2(), null, a10, vj2.f54321f, false);
        a11.b(((C10340xw0) ((List) n20.getValue()).get(0)).f53886c.getPosition());
        if (vj2.f54321f.size() > 0) {
            a(c7215fB, a11);
        } else {
            Y5 I10 = c7215fB.k().I();
            while (true) {
                if (!I10.hasNext()) {
                    break;
                } else if (!I10.next().k1()) {
                    I10.previous();
                    break;
                }
            }
            I10.add(a11);
        }
        Iterator it = ((List) n20.getValue()).iterator();
        while (it.hasNext()) {
            map.put(((C10340xw0) it.next()).f53886c.e0(), a10);
        }
    }

    public static void a(C7215fB c7215fB, NJ nj2) {
        Y5 I10 = c7215fB.k().I();
        int i10 = 0;
        while (true) {
            if (!I10.hasNext()) {
                break;
            }
            AbstractC10561zE next = I10.next();
            if (next.e1()) {
                ArrayList arrayList = nj2.f54321f;
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    if (((C10340xw0) obj) == next.d()) {
                        i10++;
                    }
                }
            }
            if (i10 == nj2.f54321f.size()) {
                if (I10.hasNext() && I10.h().k1()) {
                    I10.a(new Predicate() {
                        @Override
                        public final boolean test(Object obj2) {
                            return com.android.tools.r8.ir.optimize.M.a((AbstractC10561zE) obj2);
                        }
                    });
                }
            }
        }
        I10.add(nj2);
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        return !abstractC10561zE.k1();
    }
}
