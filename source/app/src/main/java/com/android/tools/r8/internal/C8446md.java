package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4553l0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.M3;
import com.android.tools.r8.graph.R3;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11500x1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C8446md {

    public static final C8696o40 f50351k = AbstractC8028k40.a();

    public static final boolean f50352l = true;

    public final C4798y f50353a;

    public final C4724u1 f50354b;

    public final C6674bx0 f50355c = new C6674bx0();

    public final C6674bx0 f50356d;

    public final C8507mx0 f50357e;

    public final com.android.tools.r8.graph.H2 f50358f;

    public final com.android.tools.r8.graph.H2 f50359g;

    public final C9114qd f50360h;

    public final ArrayList f50361i;

    public Predicate f50362j;

    public C8446md(C4798y c4798y, C6674bx0 c6674bx0, C9114qd c9114qd, ArrayList arrayList, C8507mx0 c8507mx0, C8340lx0 c8340lx0) {
        this.f50353a = c4798y;
        this.f50354b = c4798y.b();
        this.f50356d = c6674bx0;
        this.f50360h = c9114qd;
        this.f50361i = arrayList;
        this.f50357e = c8507mx0;
        this.f50358f = c8340lx0.f50154b;
        this.f50359g = c8340lx0.f50155c;
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22) {
        return true;
    }

    public final void b() {
        d();
        c();
    }

    public final void c() {
        this.f50358f.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8446md.this.b((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void d() {
        if (!this.f50353a.E().H().f47555d) {
            this.f50362j = EnumC6871d70.f47286b;
            return;
        }
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        this.f50358f.h(new C5425Jz0(c5058Dq), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8446md.c((C4516j1) obj);
            }
        });
        final C5058Dq c5058Dq2 = new C5058Dq(new HashSet());
        this.f50359g.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8446md.this.a(c5058Dq, c5058Dq2, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
        this.f50362j = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5058Dq.this.b((C4516j1) obj);
            }
        };
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return true;
    }

    public static boolean c(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.r1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.function.Consumer, com.android.tools.r8.graph.j1] */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v33 */
    public final void a() {
        Predicate<? super C4516j1> negate;
        com.android.tools.r8.graph.O2 o22;
        C4516j1 c4516j1;
        C4516j1 c4516j12;
        C4516j1 c4516j13;
        String sb2;
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        c5058Dq.a(this.f50359g.z1());
        final C5000Cq c5000Cq = new C5000Cq(new HashMap());
        final C5000Cq c5000Cq2 = new C5000Cq(new HashMap());
        final Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8446md.a(C5058Dq.this, c5000Cq, c5000Cq2, (com.android.tools.r8.graph.A2) obj);
            }
        };
        com.android.tools.r8.graph.H2 h22 = this.f50358f;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8446md.this.a(predicate, c5000Cq, (com.android.tools.r8.graph.H5) obj);
            }
        };
        h22.getClass();
        h22.e(consumer, EnumC6871d70.f47286b);
        Iterator<C4516j1> it = this.f50358f.i(new C7233fH0()).iterator();
        while (true) {
            ?? r62 = 0;
            if (it.hasNext()) {
                C4516j1 next = it.next();
                C4516j1 a10 = a(next);
                if (a10 != null) {
                    this.f50355c.a(next, a10, (C4516j1) null, (C4516j1) null);
                    if (!next.q1() && a10.q1()) {
                        a10.getAccessFlags().f37197c &= -4097;
                    }
                } else {
                    if (!f50352l && !this.f50359g.l1()) {
                        throw new AssertionError();
                    }
                    com.android.tools.r8.graph.A2 reference = next.getReference();
                    com.android.tools.r8.graph.H2 h23 = this.f50359g;
                    C4724u1 c4724u1 = this.f50354b;
                    reference.getClass();
                    com.android.tools.r8.graph.A2 a11 = reference.a(h23.getType(), c4724u1);
                    C4724u1 c4724u12 = this.f50354b;
                    next.L0();
                    C4516j1 a12 = next.a(a11, c4724u12, (Consumer) null);
                    a12.a(next.k1());
                    this.f50355c.f46910d.a(next.getReference(), a12.getReference());
                    c5000Cq2.f39368b.put(a12.Z0(), a12);
                }
            } else {
                com.android.tools.r8.graph.H2 h24 = this.f50358f;
                negate = new C7233fH0().negate();
                for (final C4516j1 c4516j14 : h24.i(negate)) {
                    C4516j1 a13 = a(c4516j14);
                    if (this.f50362j.test(c4516j14)) {
                        if (this.f50358f.isInterface()) {
                            String str = c4516j14.C0().toString() + "$" + this.f50358f.b1().replace('.', '$');
                            C4724u1 c4724u13 = this.f50354b;
                            com.android.tools.r8.graph.M2 type = this.f50359g.getType();
                            com.android.tools.r8.graph.I2 b10 = c4516j14.X0().b(this.f50354b, this.f50358f.getType());
                            C4724u1 c4724u14 = this.f50354b;
                            c4724u14.getClass();
                            int i10 = 0;
                            while (true) {
                                int i11 = i10 + 1;
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(str);
                                if (i10 > 0) {
                                    sb3.append("$");
                                    sb3.append(i10);
                                }
                                sb2 = sb3.toString();
                                if (((com.android.tools.r8.graph.L2) c4724u14.f38017c.get(new com.android.tools.r8.graph.L2(sb2))) == null) {
                                    break;
                                } else {
                                    i10 = i11;
                                }
                            }
                            com.android.tools.r8.graph.A2 a14 = c4724u13.a(type, b10, c4724u14.b(sb2));
                            if (!f50352l && !predicate.test(a14)) {
                                throw new AssertionError();
                            }
                            c4516j1 = c4516j14.a(a14, this.f50354b, new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C8446md.a((C4516j1.a) obj);
                                }
                            });
                        } else {
                            C4516j1 a15 = a(c4516j14, predicate, 1);
                            com.android.tools.r8.graph.L4 accessFlags = a15.getAccessFlags();
                            if (!f50352l && accessFlags.H()) {
                                throw new AssertionError();
                            }
                            accessFlags.A();
                            accessFlags.B();
                            accessFlags.w();
                            accessFlags.t();
                            c4516j1 = a15;
                        }
                        (c4516j1.f37314g.D() ? c5000Cq : c5000Cq2).f39368b.put(c4516j1.Z0(), c4516j1);
                        if (a13 == null) {
                            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) c4516j14.getReference();
                            com.android.tools.r8.graph.H2 h25 = this.f50359g;
                            C4724u1 c4724u15 = this.f50354b;
                            a22.getClass();
                            com.android.tools.r8.graph.A2 a16 = a22.a(h25.getType(), c4724u15);
                            com.android.tools.r8.graph.L4 accessFlags2 = c4516j14.getAccessFlags();
                            com.android.tools.r8.graph.L4 l42 = new com.android.tools.r8.graph.L4(accessFlags2.f37196b, accessFlags2.f37197c);
                            l42.N();
                            l42.z();
                            l42.b(1024);
                            boolean z10 = f50352l;
                            if (!z10 && !c4516j1.w0() && !c4516j1.n1()) {
                                throw new AssertionError();
                            }
                            C7722iD c7722iD = new C7722iD((com.android.tools.r8.graph.A2) c4516j14.getReference(), c4516j1.w0() ? EnumC8071kK.f49582f : EnumC8071kK.f49584h, this.f50359g.isInterface());
                            this.f50361i.add(c7722iD);
                            C5313Ib P02 = c4516j14.a1() ? c4516j14.P0() : null;
                            C4516j1.a a17 = new C4516j1.a(true).a(a16).a(l42).a(c7722iD);
                            a17.f37339k = P02;
                            com.android.tools.r8.androidapi.f fVar = c4516j14.f37261e;
                            a17.f37340l = fVar;
                            a17.f37341m = fVar;
                            C4516j1.a a18 = a17.a(c4516j14.k1());
                            a18.f37332d = c4516j14.A0();
                            c4516j12 = a18.a();
                            if (!z10 && c4516j14.getAccessFlags().i() && !c4516j12.getAccessFlags().i()) {
                                throw new AssertionError();
                            }
                            c5000Cq2.f39368b.put(c4516j12.Z0(), c4516j12);
                            c4516j13 = c4516j12;
                        } else {
                            c4516j12 = a13;
                            c4516j13 = null;
                        }
                        final com.android.tools.r8.graph.H5 h52 = new com.android.tools.r8.graph.H5(this.f50359g, c4516j12);
                        this.f50353a.r().a(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                C8446md.this.a(h52, c4516j14, (C11500x1) obj);
                            }
                        });
                        this.f50355c.a(c4516j14, a13, c4516j13, c4516j1);
                        r62 = 0;
                    } else if (a13 != null) {
                        this.f50355c.a(c4516j14, a13, (C4516j1) r62, (C4516j1) r62);
                    } else {
                        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) c4516j14.getReference();
                        com.android.tools.r8.graph.H2 h26 = this.f50359g;
                        C4724u1 c4724u16 = this.f50354b;
                        a23.getClass();
                        com.android.tools.r8.graph.A2 a19 = a23.a(h26.getType(), c4724u16);
                        C4724u1 c4724u17 = this.f50354b;
                        c4516j14.L0();
                        C4516j1 a20 = c4516j14.a(a19, c4724u17, (Consumer) r62);
                        c5000Cq2.f39368b.put(a20.Z0(), a20);
                        this.f50355c.f46910d.a((com.android.tools.r8.graph.A2) c4516j14.getReference(), a20.getReference());
                    }
                }
                a(this.f50359g, this.f50358f, c5000Cq.f39368b.values(), c5000Cq2.f39368b.values());
                this.f50359g.g(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8446md.this.a((com.android.tools.r8.graph.H5) obj);
                    }
                }, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C8446md.b((C4516j1) obj);
                    }
                });
                final HashSet hashSet = new HashSet();
                Iterator<C4460g1> it2 = this.f50359g.I0().iterator();
                while (it2.hasNext()) {
                    hashSet.add(it2.next().getReference().f38298g);
                }
                Predicate predicate2 = new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C8446md.a(Set.this, (C4554l1) obj);
                    }
                };
                C4460g1[] a21 = a(this.f50358f.k1(), this.f50359g.k1(), predicate2, hashSet);
                C4460g1[] a24 = a(this.f50358f.A1(), this.f50359g.A1(), predicate2, hashSet);
                com.android.tools.r8.graph.M2[] m2Arr = this.f50359g.f36248h.f36675b;
                com.android.tools.r8.graph.M2[] m2Arr2 = this.f50358f.f36248h.f36675b;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Collections.addAll(linkedHashSet, m2Arr);
                Collections.addAll(linkedHashSet, m2Arr2);
                if (this.f50358f.isInterface()) {
                    linkedHashSet.remove(this.f50358f.f36245e);
                } else {
                    if (!f50352l && this.f50359g.isInterface()) {
                        throw new AssertionError();
                    }
                    this.f50359g.f36247g = this.f50358f.f36247g;
                }
                com.android.tools.r8.graph.H2 h27 = this.f50359g;
                if (linkedHashSet.isEmpty()) {
                    o22 = com.android.tools.r8.graph.O2.k0();
                } else {
                    o22 = new com.android.tools.r8.graph.O2((com.android.tools.r8.graph.M2[]) linkedHashSet.toArray(com.android.tools.r8.graph.M2.f36589h));
                }
                h27.f36248h = o22;
                Collection values = c5000Cq.f39368b.values();
                final C8696o40 c8696o40 = f50351k;
                Objects.requireNonNull(c8696o40);
                values.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8696o40.this.e((C4516j1) obj);
                    }
                });
                c5000Cq2.f39368b.values().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8696o40.this.e((C4516j1) obj);
                    }
                });
                for (int i12 = 0; i12 < this.f50358f.k1().size(); i12++) {
                    C8696o40 c8696o402 = f50351k;
                    C4460g1 c4460g1 = a21[i12];
                    c8696o402.getClass();
                    C8696o40.a(c4460g1);
                }
                for (int i13 = 0; i13 < this.f50358f.A1().size(); i13++) {
                    C8696o40 c8696o403 = f50351k;
                    C4460g1 c4460g12 = a24[i13];
                    c8696o403.getClass();
                    C8696o40.a(c4460g12);
                }
                com.android.tools.r8.graph.H2 h28 = this.f50359g;
                Collection<C4516j1> values2 = c5000Cq.f39368b.values();
                com.android.tools.r8.graph.N4 n42 = h28.f36252l;
                n42.getClass();
                if (!com.android.tools.r8.graph.N4.f36636d) {
                    for (C4516j1 c4516j15 : values2) {
                        if (!com.android.tools.r8.graph.N4.f36636d) {
                            n42.c(c4516j15);
                        }
                    }
                }
                C4516j1 c4516j16 = C4516j1.f37311v;
                n42.f36639c = c4516j16;
                n42.f36638b.a(values2);
                this.f50359g.a(c5000Cq2.f39368b.values());
                this.f50359g.a(a21);
                this.f50359g.b(a24);
                com.android.tools.r8.graph.N4 b02 = this.f50358f.b0();
                b02.getClass();
                b02.f36639c = c4516j16;
                b02.f36638b.a();
                this.f50358f.b0().f36638b.b();
                com.android.tools.r8.graph.H2 h29 = this.f50358f;
                List<C4460g1> k12 = h29.k1();
                h29.f36251k.f37700b.a();
                this.f50358f.F0();
                if (this.f50358f.getAccessFlags().I()) {
                    this.f50359g.getAccessFlags().a(16384);
                }
                if (this.f50358f.t1()) {
                    com.android.tools.r8.graph.H2 h210 = this.f50359g;
                    h210.f36255o = null;
                    h210.f36256p = this.f50358f.V0();
                }
                if (!f50352l) {
                    C4798y c4798y = this.f50353a;
                    R3.a a25 = com.android.tools.r8.graph.R3.b(c4798y, com.android.tools.r8.graph.M3.a(this.f50359g, c4798y)).a(this.f50359g);
                    a25.getClass();
                    if (a25 != R3.a.f36768f) {
                        throw new AssertionError();
                    }
                }
                this.f50356d.a(this.f50355c);
                C8507mx0 c8507mx0 = this.f50357e;
                com.android.tools.r8.graph.H2 h211 = this.f50358f;
                com.android.tools.r8.graph.H2 h212 = this.f50359g;
                c8507mx0.f50465a.a(h211.getType(), h212.getType());
                if (h211.isInterface()) {
                    if (h212.isInterface()) {
                        c8507mx0.f50467c.a(h211.getType(), h212.getType());
                        return;
                    } else {
                        c8507mx0.f50466b.a(h211.getType(), h212.getType());
                        return;
                    }
                }
                return;
            }
        }
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        if (this.f50362j.test(h52.d())) {
            if (h52.getAccessFlags().D()) {
                C4516j1 d10 = h52.d();
                if (this.f50353a.E().i()) {
                    com.android.tools.r8.graph.H2 h22 = this.f50358f;
                    com.android.tools.r8.graph.H2 h23 = this.f50359g;
                    if (h22.q1() && h23.q1() && h22.T0().a(h23.T0()) && !d10.w0() && !d10.j1()) {
                        com.android.tools.r8.graph.H2 h24 = this.f50358f;
                        com.android.tools.r8.graph.H2 h25 = this.f50359g;
                        C4798y c4798y = this.f50353a;
                        if (AbstractC4420e.a(h52, h24, h25, c4798y, (C4514j) c4798y.f()).d()) {
                            this.f50355c.a(h52.getReference(), h52, this.f50359g);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (h52.getAccessFlags().H()) {
                return;
            }
            if (this.f50358f.isInterface()) {
                this.f50355c.a(h52.getReference(), h52, this.f50359g);
                return;
            }
            com.android.tools.r8.graph.H2 h26 = this.f50359g;
            while (h26 != null && ((C11245i) this.f50353a.f()).e(h26, h52.getReference()).w()) {
                com.android.tools.r8.graph.A2 reference = h52.getReference();
                C4724u1 c4724u1 = this.f50354b;
                reference.getClass();
                this.f50355c.a(reference.a(h26.getType(), c4724u1), h52, this.f50359g);
                h26 = h26.i1() ? com.android.tools.r8.graph.H2.a(this.f50353a.g(h26.a1())) : null;
            }
        }
    }

    public static boolean b(C4516j1 c4516j1) {
        AbstractC4497i0 Q02 = c4516j1.Q0();
        Q02.getClass();
        return Q02 instanceof C4553l0;
    }

    public static boolean a(C5058Dq c5058Dq, C5000Cq c5000Cq, C5000Cq c5000Cq2, com.android.tools.r8.graph.A2 a22) {
        c5058Dq.getClass();
        a22.getClass();
        if (c5058Dq.f39661b.contains(new com.android.tools.r8.graph.D2(a22))) {
            return false;
        }
        c5000Cq.getClass();
        if (c5000Cq.f39368b.containsKey(new com.android.tools.r8.graph.D2(a22))) {
            return false;
        }
        c5000Cq2.getClass();
        return !c5000Cq2.f39368b.containsKey(new com.android.tools.r8.graph.D2(a22));
    }

    public final void a(Predicate predicate, C5000Cq c5000Cq, com.android.tools.r8.graph.H5 h52) {
        C4516j1 a10;
        C4516j1 d10 = h52.d();
        if (d10.f1()) {
            com.android.tools.r8.graph.A2 reference = d10.getReference();
            com.android.tools.r8.graph.H2 h22 = this.f50359g;
            C4724u1 c4724u1 = this.f50354b;
            reference.getClass();
            com.android.tools.r8.graph.A2 a11 = reference.a(h22.getType(), c4724u1);
            C4724u1 c4724u12 = this.f50354b;
            d10.L0();
            a10 = d10.a(a11, c4724u12, (Consumer) null);
        } else if (d10.j1()) {
            C4724u1 c4724u13 = this.f50354b;
            com.android.tools.r8.graph.A2 reference2 = d10.getReference();
            com.android.tools.r8.graph.H2 h23 = this.f50359g;
            C4724u1 c4724u14 = this.f50354b;
            reference2.getClass();
            com.android.tools.r8.graph.A2 a12 = reference2.a(h23.getType(), c4724u14);
            AbstractC7552hC abstractC7552hC = this.f50360h.f51821a;
            c4724u13.getClass();
            com.android.tools.r8.graph.A2 a13 = c4724u13.a(a12, abstractC7552hC, predicate, C6628bi.b());
            C4724u1 c4724u15 = this.f50354b;
            d10.L0();
            a10 = d10.a(a13, c4724u15, (Consumer) null);
        } else {
            a10 = a(d10, predicate, 2);
        }
        c5000Cq.getClass();
        c5000Cq.f39368b.put(a10.Z0(), a10);
        this.f50355c.f46910d.a(d10.getReference(), a10.getReference());
    }

    public static void a(C4516j1.a aVar) {
        aVar.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.L4) obj).y();
            }
        }).f37334f = AbstractC9530t40.f52519c;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, final C4516j1 c4516j1, final C11500x1 c11500x1) {
        c11500x1.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8446md.this.a(c11500x1, c4516j1, (com.android.tools.r8.shaking.H1) obj);
            }
        }, h52);
    }

    public final void a(C11500x1 c11500x1, C4516j1 c4516j1, com.android.tools.r8.shaking.H1 h12) {
        h12.a(c11500x1.a(this.f50358f, c4516j1).d());
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        C4798y c4798y = this.f50353a;
        C4553l0 c4553l0 = C4553l0.f37446e;
        C4553l0.a(c4798y, h52.getHolder().a1(), h52);
    }

    public static boolean a(Set set, C4554l1 c4554l1) {
        return !set.contains(c4554l1.f38298g);
    }

    public final void a(C5058Dq c5058Dq, C5058Dq c5058Dq2, com.android.tools.r8.graph.H5 h52) {
        h52.a(new C7739iK(this.f50353a, h52, c5058Dq, c5058Dq2, this.f50358f));
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, Collection collection, Collection collection2) {
        H3.b N02 = h22.N0();
        if (N02.a()) {
            collection.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C4516j1) obj).t();
                }
            });
            collection2.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C4516j1) obj).t();
                }
            });
            h23.I0().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C4460g1) obj).t();
                }
            });
            return;
        }
        final com.android.tools.r8.graph.U3 a10 = a(h22, h23);
        if (a10 == null) {
            h22.D0();
            h22.y1().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((AbstractC4479h1) obj).t();
                }
            });
            return;
        }
        H3.b N03 = h23.N0();
        if (!N03.a()) {
            N03 = N03.a(a10, a10.f36863d.b());
        }
        com.android.tools.r8.graph.J3 j32 = new com.android.tools.r8.graph.J3();
        j32.f36497a.addAll(N02.c());
        if (!h23.isInterface()) {
            if (N03.b()) {
                j32.f36498b = N03.d();
            } else {
                j32.f36498b = new H3.c(h23.f36247g);
            }
        } else {
            j32.f36498b = N02.d();
        }
        HashSet hashSet = new HashSet();
        if (h23.isInterface()) {
            hashSet.add(h23.f36245e);
        }
        for (H3.c cVar : N02.e()) {
            if (hashSet.add(cVar.q())) {
                j32.f36499c.add(cVar);
            }
        }
        if (N03.b()) {
            for (H3.c cVar2 : N03.e()) {
                if (!hashSet.contains(cVar2.q())) {
                    j32.f36499c.add(cVar2);
                }
            }
        } else {
            Iterator<com.android.tools.r8.graph.M2> it = h23.f36248h.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.M2 next = it.next();
                if (!hashSet.contains(next)) {
                    j32.f36499c.add(new H3.c(next));
                }
            }
        }
        h22.a(j32.a(this.f50354b));
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8446md.a(com.android.tools.r8.graph.U3.this, (C4516j1) obj);
            }
        };
        Collection[] collectionArr = {collection, collection2};
        for (int i10 = 0; i10 < 2; i10++) {
            collectionArr[i10].forEach(consumer);
        }
        h23.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8446md.a(com.android.tools.r8.graph.U3.this, (C4460g1) obj);
            }
        }, EnumC6871d70.f47286b);
    }

    public static void a(com.android.tools.r8.graph.U3 u32, C4516j1 c4516j1) {
        H3.g A02 = c4516j1.A0();
        if (A02.a()) {
            return;
        }
        H3.g a10 = u32.f(A02.c()).a(A02);
        if (!C4516j1.f37313x && a10 == null) {
            throw new AssertionError();
        }
        c4516j1.f37324q = a10;
    }

    public static void a(com.android.tools.r8.graph.U3 u32, C4460g1 c4460g1) {
        if (c4460g1.A0().a()) {
            return;
        }
        H3.e b10 = u32.b(c4460g1.A0());
        if (!C4460g1.f37201p && b10 == null) {
            throw new AssertionError();
        }
        c4460g1.f37206k = b10;
    }

    public final com.android.tools.r8.graph.U3 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
        boolean z10 = f50352l;
        if (!z10 && !h22.N0().b()) {
            throw new AssertionError();
        }
        List a10 = h22.N0().a(this.f50354b, h23.f36245e);
        if (a10 == null) {
            if (z10) {
                return null;
            }
            throw new AssertionError((Object) "Type should be present in generic signature");
        }
        HashMap hashMap = new HashMap();
        List<H3.f> c10 = h23.N0().c();
        if (a10.size() != c10.size()) {
            if (!a10.isEmpty()) {
                if (z10) {
                    return null;
                }
                throw new AssertionError((Object) "Invalid argument count to formals");
            }
        } else {
            for (int i10 = 0; i10 < c10.size(); i10++) {
                hashMap.put(c10.get(i10).a(), (H3.e) a10.get(i10));
            }
        }
        return com.android.tools.r8.graph.U3.a(this.f50353a, M3.a.a().a(hashMap), new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C8446md.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8446md.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final C4516j1 a(C4516j1 c4516j1) {
        C4516j1 q10 = ((C11245i) this.f50353a.f()).h(this.f50359g, c4516j1.getReference()).q();
        boolean z10 = f50352l;
        if (!z10 && q10 == null) {
            throw new AssertionError();
        }
        if (q10 == c4516j1) {
            return null;
        }
        if (z10 || q10.r1() == c4516j1.r1()) {
            return q10;
        }
        throw new AssertionError();
    }

    public final C4460g1[] a(List list, List list2, Predicate predicate, HashSet hashSet) {
        C4460g1[] c4460g1Arr = new C4460g1[list2.size() + list.size()];
        Iterator<E> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            C4460g1 c4460g1 = (C4460g1) it.next();
            C4460g1 a10 = c4460g1.a(this.f50353a, this.f50354b.a(this.f50359g.getType(), c4460g1.getType(), c4460g1.C0().toString(), predicate), C6628bi.b());
            hashSet.add(a10.C0());
            C9201r6 c9201r6 = this.f50355c.f46907a;
            c9201r6.f51964b.a(c4460g1.getReference(), a10.getReference(), true);
            c4460g1Arr[i10] = a10;
            i10++;
        }
        Iterator<E> it2 = list2.iterator();
        while (it2.hasNext()) {
            c4460g1Arr[i10] = (C4460g1) it2.next();
            i10++;
        }
        return c4460g1Arr;
    }

    public final C4516j1 a(C4516j1 c4516j1, Predicate predicate, int i10) {
        if (i10 == 2) {
            com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
            com.android.tools.r8.graph.H2 h22 = this.f50359g;
            C4724u1 c4724u1 = this.f50354b;
            reference.getClass();
            if (predicate.test(reference.a(h22.getType(), c4724u1))) {
                com.android.tools.r8.graph.A2 reference2 = c4516j1.getReference();
                com.android.tools.r8.graph.H2 h23 = this.f50359g;
                C4724u1 c4724u12 = this.f50354b;
                reference2.getClass();
                com.android.tools.r8.graph.A2 a10 = reference2.a(h23.getType(), c4724u12);
                C4724u1 c4724u13 = this.f50354b;
                c4516j1.L0();
                return c4516j1.a(a10, c4724u13, (Consumer) null);
            }
        }
        C4724u1 c4724u14 = this.f50354b;
        String j02 = c4516j1.C0().j0();
        com.android.tools.r8.graph.M2 type = this.f50358f.getType();
        com.android.tools.r8.graph.I2 X02 = c4516j1.X0();
        com.android.tools.r8.graph.M2 type2 = this.f50359g.getType();
        c4724u14.getClass();
        if (!C4724u1.f37814K6 && type == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a11 = c4724u14.a(j02, type, X02, type2, predicate, 0);
        C4724u1 c4724u15 = this.f50354b;
        c4516j1.L0();
        return c4516j1.a(a11, c4724u15, (Consumer) null);
    }
}
