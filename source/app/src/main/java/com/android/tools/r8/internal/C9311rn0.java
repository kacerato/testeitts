package com.android.tools.r8.internal;

import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public final class C9311rn0 {

    public static final boolean f52141j = true;

    public final C7215fB f52142a;

    public final BitSet[] f52146e;

    public final BitSet f52147f;

    public final C9478sn0 f52150i;

    public final IdentityHashMap f52143b = new IdentityHashMap();

    public final C6286Yx0 f52144c = new C6286Yx0(2);

    public final C6286Yx0 f52145d = new C6286Yx0(2);

    public final IdentityHashMap f52148g = new IdentityHashMap();

    public final IdentityHashMap f52149h = new IdentityHashMap();

    public C9311rn0(C9478sn0 c9478sn0, C7215fB c7215fB) {
        this.f52150i = c9478sn0;
        this.f52142a = c7215fB;
        int b10 = c7215fB.f47899f.b() + 1;
        this.f52146e = new BitSet[b10];
        this.f52147f = new BitSet(b10);
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 == abstractC10561zE;
    }

    public final void a(C7201f60 c7201f60) {
        W5 w52 = c7201f60.f47862p;
        int q10 = w52.q();
        int i10 = F1.f40064a;
        F1 f12 = A7.f38535b;
        List<W5> u10 = w52.u();
        int size = u10.size();
        for (int i11 = 0; i11 < size; i11++) {
            int q11 = u10.get(i11).q();
            BitSet bitSet = this.f52146e[q10];
            if (bitSet == null ? false : bitSet.get(q11)) {
                f12 = this.f52150i.f52453e.b(f12, a((C10340xw0) c7201f60.f47863q.get(i11)), c7201f60.u());
                if (f12.isUnknown()) {
                    break;
                }
            }
        }
        F1 a10 = a((C10340xw0) c7201f60);
        if (!f52141j && !this.f52150i.f52453e.b(a10, f12, c7201f60.u()).equals(f12)) {
            throw new AssertionError();
        }
        if (f12.equals(a10)) {
            return;
        }
        this.f52144c.b((C6286Yx0) c7201f60);
        this.f52143b.put(c7201f60, f12);
    }

    public final void b(AbstractC10561zE abstractC10561zE) {
        F1 a10;
        if (abstractC10561zE.e1() && !(abstractC10561zE instanceof C6964dj)) {
            if (abstractC10561zE.k1()) {
                a10 = this.f52142a.j().A().j().a(abstractC10561zE.v().b(true));
            } else {
                a10 = abstractC10561zE.a(this.f52150i.f52646a, this.f52142a.j(), new C8159ks1(this));
            }
            F1 a11 = a(abstractC10561zE.d());
            if (!f52141j && !this.f52150i.f52453e.b(a11, a10, abstractC10561zE.a()).equals(a10)) {
                throw new AssertionError();
            }
            if (!a10.equals(a11)) {
                this.f52143b.put(abstractC10561zE.d(), a10);
                this.f52144c.b((C6286Yx0) abstractC10561zE.d());
            }
        }
        if (abstractC10561zE.U1()) {
            a(abstractC10561zE.l0());
        }
    }

    public final boolean a() {
        final C10696a c10696a = new C10696a();
        final ArrayList arrayList = new ArrayList();
        int i10 = 0;
        final U6 u62 = new U6(false);
        this.f52143b.entrySet().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9311rn0.this.a((Map.Entry) obj);
            }
        }).sorted(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int t10;
                t10 = ((C10340xw0) ((Map.Entry) obj).getKey()).t();
                return t10;
            }
        })).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9311rn0.this.a(arrayList, c10696a, u62, (Map.Entry) obj);
            }
        });
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((W5) obj).e();
        }
        c10696a.a(this.f52150i.f52646a, this.f52142a, C6628bi.b());
        boolean a10 = u62.a();
        if (a10) {
            this.f52142a.a((C6382aB) null, (C10696a) null);
            this.f52142a.x();
        }
        return a10;
    }

    public final boolean a(Map.Entry entry) {
        return a((C10340xw0) entry.getKey(), (F1) entry.getValue());
    }

    public final void a(List list, C10696a c10696a, U6 u62, Map.Entry entry) {
        C10340xw0 c10340xw0 = (C10340xw0) entry.getKey();
        if (c10340xw0.w()) {
            long j10 = ((F1) entry.getValue()).m().f41207c;
            if (c10340xw0.d(new C8009jy0())) {
                if (!f52141j && c10340xw0.r().J().w2() != j10) {
                    throw new AssertionError();
                }
                return;
            }
            if (c10340xw0.j()) {
                W5 w52 = c10340xw0.l().f47862p;
                list.add(w52);
                Y5 I10 = w52.I();
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C9311rn0.a((AbstractC10561zE) obj);
                    }
                });
                abstractC10561zE.getClass();
                if (!(abstractC10561zE instanceof C7631hj)) {
                    I10.previous();
                }
                boolean z10 = C9126qh.f51850m;
                C8959ph c8959ph = new C8959ph();
                c8959ph.f52321a = this.f52142a.a(c10340xw0.u(), c10340xw0.s());
                c8959ph.f52322b = abstractC10561zE.getPosition();
                c8959ph.f51588d = j10;
                C9126qh c10 = c8959ph.c();
                I10.add(c10);
                c10340xw0.a(c10.d(), c10696a);
                u62.e();
                return;
            }
            final AbstractC10561zE r10 = c10340xw0.r();
            Y5 I11 = r10.b().I();
            I11.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C9311rn0.a(AbstractC10561zE.this, (AbstractC10561zE) obj);
                }
            });
            if (r10.k1() || r10.b(this.f52150i.f52646a, this.f52142a.j(), new C8159ks1(this), C10394yE.f53978a)) {
                return;
            }
            boolean z11 = C9126qh.f51850m;
            C8959ph c8959ph2 = new C8959ph();
            c8959ph2.f52321a = c10340xw0;
            c8959ph2.f51588d = j10;
            I11.a(c8959ph2.c(), c10696a);
            u62.e();
        }
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return !(abstractC10561zE instanceof C6600bY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final F1 a(C10340xw0 c10340xw0) {
        IdentityHashMap identityHashMap = this.f52143b;
        int i10 = F1.f40064a;
        return (F1) identityHashMap.getOrDefault(c10340xw0, A7.f38535b);
    }

    public static boolean a(C10340xw0 c10340xw0, F1 f12) {
        if (!c10340xw0.u().x()) {
            return false;
        }
        f12.getClass();
        return f12 instanceof C5341Im0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(AbstractC9408sL abstractC9408sL) {
        W5 u22;
        W5 b10 = abstractC9408sL.b();
        int q10 = b10.q();
        if (abstractC9408sL.H1()) {
            EB V10 = abstractC9408sL.V();
            F1 a10 = a((C10340xw0) V10.f54321f.get(0));
            if (V10.x2()) {
                if (a((C10340xw0) V10.f54321f.get(0), a10)) {
                    W5 b11 = V10.b(Integer.signum((int) a10.m().f41207c));
                    BitSet bitSet = this.f52146e[b11.q()];
                    if (bitSet != null ? bitSet.get(q10) : false) {
                        return;
                    }
                    a(q10, b11.q());
                    this.f52145d.b((C6286Yx0) b11);
                    return;
                }
                NB nb2 = V10.f39789l;
                nb2.getClass();
                if ((nb2 == NB.f42527b || nb2 == NB.f42532g) && a10.V() && a10.R() != 0) {
                    W5 b12 = V10.b(1);
                    BitSet bitSet2 = this.f52146e[b12.q()];
                    if (bitSet2 != null ? bitSet2.get(q10) : false) {
                        return;
                    }
                    a(q10, b12.q());
                    this.f52145d.b((C6286Yx0) b12);
                    return;
                }
            } else {
                F1 a11 = a(V10.y2());
                if (a((C10340xw0) V10.f54321f.get(0), a10) && a(V10.y2(), a11)) {
                    long j10 = a10.m().f41207c;
                    long j11 = a11.m().f41207c;
                    if (!EB.f39788m && V10.x2()) {
                        throw new AssertionError();
                    }
                    W5 b13 = V10.b(Long.signum(j10 - j11));
                    BitSet bitSet3 = this.f52146e[b13.q()];
                    if (bitSet3 != null ? bitSet3.get(q10) : false) {
                        return;
                    }
                    a(q10, b13.q());
                    this.f52145d.b((C6286Yx0) b13);
                    return;
                }
            }
        } else if (abstractC9408sL.M1()) {
            C9569tI Z10 = abstractC9408sL.Z();
            F1 a12 = a((C10340xw0) Z10.f54321f.get(0));
            if (a((C10340xw0) Z10.f54321f.get(0), a12)) {
                W5 w52 = (W5) ((InterfaceC10068wH) this.f52148g.computeIfAbsent(Z10, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((C9569tI) obj).w2();
                    }
                })).getOrDefault(Integer.valueOf((int) a12.m().f41207c), Z10.u2());
                if (!f52141j && w52 == null) {
                    throw new AssertionError();
                }
                a(q10, w52.q());
                this.f52145d.b((C6286Yx0) w52);
                return;
            }
        } else if (abstractC9408sL.k2()) {
            C8319lq0 O02 = abstractC9408sL.O0();
            F1 a13 = a((C10340xw0) O02.f54321f.get(0));
            if (a13.g0()) {
                u22 = (W5) ((Map) this.f52149h.computeIfAbsent(O02, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((C8319lq0) obj).w2();
                    }
                })).getOrDefault(a13.P().j0(), O02.u2());
            } else {
                u22 = a13 instanceof C5283Hm0 ? O02.u2() : null;
            }
            if (u22 != null) {
                a(q10, u22.q());
                this.f52145d.b((C6286Yx0) u22);
                return;
            }
        } else if (!f52141j && !abstractC9408sL.G1() && !abstractC9408sL.g2() && !abstractC9408sL.m2()) {
            throw new AssertionError();
        }
        for (W5 w53 : b10.v()) {
            BitSet bitSet4 = this.f52146e[w53.q()];
            if (!(bitSet4 == null ? false : bitSet4.get(q10))) {
                a(q10, w53.q());
                this.f52145d.b((C6286Yx0) w53);
            }
        }
    }

    public final void a(int i10, int i11) {
        BitSet bitSet = this.f52146e[i11];
        if (bitSet == null) {
            bitSet = new BitSet(this.f52146e.length);
            this.f52146e[i11] = bitSet;
        }
        bitSet.set(i10);
    }
}
