package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public final class I10 extends E10 {

    public static final boolean f40955f = true;

    public final C4798y f40956a;

    public final C4724u1 f40957b;

    public final Set f40958c;

    public final ConcurrentHashMap f40959d = new ConcurrentHashMap();

    public AbstractC8552nC f40960e;

    public I10(C4798y c4798y) {
        this.f40956a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f40957b = b10;
        this.f40958c = ((C6379aA) b10.f38152s6.f()).o();
    }

    public final IdentityHashMap a(Set set) {
        HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            C9406sK M12 = h22.M1();
            CK a10 = JK.a(M12.f52337b.iterator(), M12.f52338c);
            while (a10.f43396b.hasNext()) {
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
                ((List) hashMap.computeIfAbsent(h52.x(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return I10.a((com.android.tools.r8.graph.F2) obj);
                    }
                })).add(h52);
            }
            C9406sK E12 = h22.E1();
            CK a11 = JK.a(E12.f52337b.iterator(), E12.f52338c);
            while (a11.f43396b.hasNext()) {
                com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) a11.a(a11.f43396b.next());
                if (b(h53)) {
                    this.f40959d.put(h53.getReference(), DW.f39541d);
                }
            }
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (List list : hashMap.values()) {
            if (list.size() > 1) {
                if (AbstractC9907vK.a(list, new V60() {
                    @Override
                    public final boolean apply(Object obj) {
                        return I10.this.b((com.android.tools.r8.graph.H5) obj);
                    }
                })) {
                    if (JK.a(list.iterator(), new V60() {
                        @Override
                        public final boolean apply(Object obj) {
                            return I10.a((com.android.tools.r8.graph.H5) obj);
                        }
                    }) != -1) {
                        list.sort(Comparator.comparing(new C7567hH0()));
                        com.android.tools.r8.graph.H5 h54 = (com.android.tools.r8.graph.H5) list.get(0);
                        for (int i10 = 1; i10 < list.size(); i10++) {
                            identityHashMap.put(((com.android.tools.r8.graph.H5) list.get(i10)).getReference(), h54.getReference());
                        }
                        this.f40959d.put(h54.getReference(), DW.f39541d);
                    }
                }
            } else {
                if (!f40955f && list.size() != 1) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.H5 h55 = (com.android.tools.r8.graph.H5) list.get(0);
                if (b(h55) && !h55.d().d1()) {
                    this.f40959d.put(h55.getReference(), DW.f39541d);
                }
            }
        }
        return identityHashMap;
    }

    public final boolean b(com.android.tools.r8.graph.H5 h52) {
        if (this.f40956a.r().a((com.android.tools.r8.graph.D5) h52).d(this.f40956a.E())) {
            return false;
        }
        return this.f40958c.contains(h52.E()) || AbstractC9907vK.b(h52.C(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return I10.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public static DW a(DW dw, com.android.tools.r8.graph.A2 a22, DW dw2) {
        if (!dw2.a() && !dw.a()) {
            DW dw3 = DW.f39541d;
            if (dw2 == dw3) {
                return dw;
            }
            if (dw == dw3) {
                return dw2;
            }
            if (!DW.f39542e && dw2.f39544b.length != dw.f39544b.length) {
                throw new AssertionError();
            }
            C10507yw0[] c10507yw0Arr = new C10507yw0[dw2.f39544b.length];
            int i10 = 0;
            while (true) {
                C10507yw0[] c10507yw0Arr2 = dw.f39544b;
                if (i10 >= c10507yw0Arr2.length) {
                    break;
                }
                c10507yw0Arr[i10] = c10507yw0Arr2[i10].a(dw2.f39544b[i10]);
                i10++;
            }
            C10507yw0 a10 = dw2.f39543a.a(dw.f39543a);
            if (!DW.f39542e && X3.a((Object[]) c10507yw0Arr, (com.android.tools.r8.graph.M2) null)) {
                throw new AssertionError();
            }
            if (a10.a() && X3.a(c10507yw0Arr, C10507yw0.f54197c)) {
                return DW.f39540c;
            }
            return new DW(a10, c10507yw0Arr);
        }
        return DW.f39540c;
    }

    @Override
    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Prepare number unboxer tree fixer");
        C4798y c4798y = this.f40956a;
        ArrayList a10 = new C6541b80(this.f40956a, C4387c4.a(c4798y, ((C4514j) c4798y.f()).d())).a();
        final ConcurrentHashMap.KeySetView newKeySet = ConcurrentHashMap.newKeySet();
        C5467Kr0.a(a10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                I10.this.a(newKeySet, (Set) obj);
            }
        }, this.f40956a.E().G(), executorService);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                I10.a(Set.this, (C8051kC) obj);
            }
        };
        boolean z10 = TU.f44487a;
        C8051kC c8051kC = new C8051kC(4);
        consumer.accept(c8051kC);
        this.f40960e = c8051kC.b();
        c8659ns0.d();
    }

    public final void a(Set set, Set set2) {
        set.add(a(set2));
    }

    public static void a(Set set, final C8051kC c8051kC) {
        Objects.requireNonNull(c8051kC);
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8051kC.this.a((Map) obj);
            }
        });
    }

    public static List a(com.android.tools.r8.graph.F2 f22) {
        return new ArrayList();
    }

    public static boolean a(com.android.tools.r8.graph.H5 h52) {
        return !h52.d().d1();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C10507yw0 c10507yw0, C10507yw0[] c10507yw0Arr) {
        final DW dw;
        Object obj = (com.android.tools.r8.graph.A2) h52.getReference();
        Object obj2 = this.f40960e.get(obj);
        if (obj2 != null) {
            obj = obj2;
        }
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) obj;
        if (c10507yw0Arr == null && (c10507yw0 == null || c10507yw0.a())) {
            this.f40959d.remove(a22);
            return;
        }
        if (c10507yw0 == null) {
            c10507yw0 = C10507yw0.f54197c;
        }
        if (c10507yw0Arr == null) {
            C10507yw0[] c10507yw0Arr2 = new C10507yw0[h52.getReference().w0()];
            Arrays.fill(c10507yw0Arr2, C10507yw0.f54197c);
            c10507yw0Arr = c10507yw0Arr2;
        }
        if (!DW.f39542e && X3.a((Object[]) c10507yw0Arr, (com.android.tools.r8.graph.M2) null)) {
            throw new AssertionError();
        }
        if (c10507yw0.a() && X3.a(c10507yw0Arr, C10507yw0.f54197c)) {
            dw = DW.f39540c;
        } else {
            dw = new DW(c10507yw0, c10507yw0Arr);
        }
        if (!f40955f && dw.a()) {
            throw new AssertionError();
        }
        DW dw2 = (DW) this.f40959d.computeIfPresent(a22, new BiFunction() {
            @Override
            public final Object apply(Object obj3, Object obj4) {
                return I10.a(DW.this, (com.android.tools.r8.graph.A2) obj3, (DW) obj4);
            }
        });
        if (dw2 == null || !dw2.a()) {
            return;
        }
        this.f40959d.remove(a22);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x010e, code lost:
    
        if (r8.a() == false) goto L45;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C7215fB c7215fB) {
        C10507yw0 c10507yw0;
        com.android.tools.r8.graph.A2 reference = c7215fB.j().getReference();
        int a10 = C8704o7.a(!c7215fB.j().d().w0());
        C10507yw0 c10507yw02 = null;
        C10507yw0[] c10507yw0Arr = null;
        for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
            if (abstractC10561zE.k1()) {
                C10507yw0 a11 = a(abstractC10561zE.d());
                if (!a11.a()) {
                    if (c10507yw0Arr == null) {
                        c10507yw0Arr = new C10507yw0[reference.w0()];
                        Arrays.fill(c10507yw0Arr, C10507yw0.f54197c);
                    }
                    c10507yw0Arr[abstractC10561zE.v().b(true) - a10] = a11;
                }
            } else if (abstractC10561zE.g2()) {
                C10471yk0 G02 = abstractC10561zE.G0();
                if (!G02.v2() && (c10507yw02 == null || !c10507yw02.a())) {
                    C10507yw0 a12 = a(c7215fB.j(), G02.w2());
                    if (!a12.a()) {
                        c10507yw02 = c10507yw02 == null ? a12 : c10507yw02.a(a12);
                    } else {
                        c10507yw02 = C10507yw0.f54197c;
                    }
                }
            } else if (abstractC10561zE.P1()) {
                VJ e02 = abstractC10561zE.e0();
                com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                com.android.tools.r8.graph.H5 r10 = ((C11245i) this.f40956a.f()).b(e02.B2(), e02.A2()).r();
                if (r10 != null) {
                    int a13 = C8704o7.a(e02.Q1());
                    C10507yw0[] c10507yw0Arr2 = null;
                    for (int i10 = a13; i10 < e02.f54321f.size(); i10++) {
                        C10507yw0 a14 = a(j10, e02.b(i10));
                        if (!a14.a()) {
                            if (c10507yw0Arr2 == null) {
                                c10507yw0Arr2 = new C10507yw0[e02.B2().w0()];
                                Arrays.fill(c10507yw0Arr2, C10507yw0.f54197c);
                            }
                            c10507yw0Arr2[i10 - a13] = a14;
                        }
                    }
                    if (e02.e1()) {
                        c10507yw0 = a(e02.d());
                    }
                    c10507yw0 = null;
                    a(r10, c10507yw0, c10507yw0Arr2);
                }
            } else if (abstractC10561zE instanceof OJ) {
                throw new C6501av0();
            }
        }
        a(c7215fB.j(), c10507yw02, c10507yw0Arr);
    }

    public final C10507yw0 a(com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        EC a10;
        EC a11;
        if (c10340xw0.u().s()) {
            if (this.f40958c.contains(c10340xw0.u().b().E())) {
                com.android.tools.r8.graph.A2 c10 = this.f40957b.c((com.android.tools.r8.graph.M2) ((C6379aA) this.f40957b.f38152s6.f()).get(c10340xw0.u().b().E()));
                if (!c10340xw0.i().j()) {
                    AbstractC10561zE r10 = c10340xw0.i().r();
                    if (r10.k1()) {
                        int b10 = r10.v().b(true) - C8704o7.a(!h52.d().w0());
                        Object obj = (com.android.tools.r8.graph.A2) h52.getReference();
                        Object obj2 = this.f40960e.get(obj);
                        if (obj2 != null) {
                            obj = obj2;
                        }
                        C5932Ss0 c5932Ss0 = new C5932Ss0(b10, (com.android.tools.r8.graph.A2) obj);
                        C10507yw0 c10507yw0 = C10507yw0.f54197c;
                        int i10 = EC.f39794e;
                        Object[] objArr = {c5932Ss0};
                        C8588nS c8588nS = new C8588nS();
                        Collections.addAll(c8588nS, objArr);
                        Set entrySet = c8588nS.entrySet();
                        if (entrySet.isEmpty()) {
                            a11 = C6953df0.f47448l;
                        } else {
                            a11 = C6953df0.a((Collection) entrySet);
                        }
                        return a11.size() > 7 ? c10507yw0 : new C10507yw0(0, a11);
                    }
                    if (r10.P1()) {
                        if (c10.a(r10.e0().B2())) {
                            if (!c10340xw0.B() && c10340xw0.C()) {
                                C10507yw0 c10507yw02 = C10507yw0.f54197c;
                                int i11 = EC.f39794e;
                                EC ec2 = C6953df0.f47448l;
                                return ec2.size() > 7 ? c10507yw02 : new C10507yw0(1, ec2);
                            }
                            C10507yw0 c10507yw03 = C10507yw0.f54197c;
                            int i12 = EC.f39794e;
                            EC ec3 = C6953df0.f47448l;
                            return ec3.size() > 7 ? c10507yw03 : new C10507yw0(0, ec3);
                        }
                        VJ e02 = r10.e0();
                        com.android.tools.r8.graph.H5 r11 = ((C11245i) this.f40956a.f()).b(e02.B2(), e02.A2()).r();
                        if (r11 != null) {
                            Object obj3 = (com.android.tools.r8.graph.A2) r11.getReference();
                            Object obj4 = this.f40960e.get(obj3);
                            if (obj4 != null) {
                                obj3 = obj4;
                            }
                            C6048Us0 c6048Us0 = new C6048Us0((com.android.tools.r8.graph.A2) obj3);
                            C10507yw0 c10507yw04 = C10507yw0.f54197c;
                            int i13 = EC.f39794e;
                            C8588nS c8588nS2 = new C8588nS();
                            Collections.addAll(c8588nS2, c6048Us0);
                            Set entrySet2 = c8588nS2.entrySet();
                            if (entrySet2.isEmpty()) {
                                a10 = C6953df0.f47448l;
                            } else {
                                a10 = C6953df0.a((Collection) entrySet2);
                            }
                            return a10.size() > 7 ? c10507yw04 : new C10507yw0(0, a10);
                        }
                    }
                }
                if (c10340xw0.u().v()) {
                    return C10507yw0.f54197c;
                }
                C10507yw0 c10507yw05 = C10507yw0.f54197c;
                int i14 = EC.f39794e;
                EC ec4 = C6953df0.f47448l;
                return ec4.size() > 7 ? c10507yw05 : new C10507yw0(-1, ec4);
            }
        }
        return C10507yw0.f54197c;
    }

    public final C10507yw0 a(C10340xw0 c10340xw0) {
        if (c10340xw0.u().s()) {
            if (this.f40958c.contains(c10340xw0.u().b().E())) {
                com.android.tools.r8.graph.A2 f10 = this.f40957b.f(c10340xw0.u().b().E());
                boolean B10 = c10340xw0.B();
                C9132qj c9132qj = C9132qj.f51861a;
                Set<AbstractC10561zE> c10 = AbstractC5513Ll0.c();
                C10340xw0.a(c9132qj, c10340xw0, c10);
                int i10 = 0;
                boolean z10 = false;
                for (AbstractC10561zE abstractC10561zE : c10) {
                    if (!abstractC10561zE.r1()) {
                        if (abstractC10561zE.P1() && f10.a(abstractC10561zE.e0().B2())) {
                            z10 = true;
                        } else {
                            B10 = true;
                        }
                    }
                }
                if (z10) {
                    if (!B10) {
                        i10 = 1;
                    }
                } else if (B10) {
                    i10 = -1;
                }
                C10507yw0 c10507yw0 = C10507yw0.f54197c;
                int i11 = EC.f39794e;
                EC ec2 = C6953df0.f47448l;
                return ec2.size() > 7 ? c10507yw0 : new C10507yw0(i10, ec2);
            }
        }
        return C10507yw0.f54197c;
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return this.f40958c.contains(m22);
    }

    @Override
    public final void a(O60 o60, C8659ns0 c8659ns0, ExecutorService executorService) {
        IdentityHashMap d10 = new H10(this.f40959d).d();
        if (d10.isEmpty()) {
            return;
        }
        O10 o10 = new O10(this.f40956a, d10, this.f40960e);
        new C5154Fg(o10.f42759a, o10).a(executorService, c8659ns0);
        J10 j10 = o10.f42762d;
        C4798y c4798y = o10.f42759a;
        N10 n10 = new N10(c4798y);
        j10.getClass();
        K10 k10 = new K10(c4798y, j10.f41271b, j10.f41270a, n10);
        C4798y c4798y2 = this.f40956a;
        c4798y2.a(k10, c4798y2.e().a(), executorService, c8659ns0);
        C4798y c4798y3 = this.f40956a;
        M10 m10 = new M10(c4798y3, k10);
        c8659ns0.b("Enqueue methods for reprocessing due to the number unboxer");
        if (!M10.f42129c && c4798y3.v() != k10) {
            throw new AssertionError();
        }
        o60.a(c4798y3);
        m10.a(o60);
        m10.a(o60, executorService);
        c8659ns0.d();
        this.f40956a.H().getClass();
    }
}
