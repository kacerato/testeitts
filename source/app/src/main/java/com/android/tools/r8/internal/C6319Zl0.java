package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.OptionalLong;
import java.util.Set;
import java.util.function.Supplier;

public final class C6319Zl0 {

    public static final boolean f46343g = true;

    public final C6807cm0 f46344a;

    public final C4724u1 f46345b;

    public final com.android.tools.r8.graph.H5 f46346c;

    public final C8570nJ f46347d;

    public final int f46348e;

    public final Set f46349f = AbstractC5513Ll0.c();

    public C6319Zl0(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        this.f46344a = c4798y.f38432y;
        this.f46345b = c4798y.b();
        this.f46346c = h52;
        this.f46347d = c4798y.E();
        Objects.requireNonNull(c4798y.E());
        this.f46348e = 1;
    }

    public final AbstractC6205Xl0 a(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE instanceof C4) {
            return C8188l2.f49866b;
        }
        if (abstractC10561zE.v1()) {
            return C8188l2.f49866b;
        }
        if (abstractC10561zE.T1()) {
            C8405mK k02 = abstractC10561zE.k0();
            if (k02.B2().a(this.f46345b.f37859F4.f38226d) && !k02.f1()) {
                C10340xw0 C22 = k02.C2();
                if (C22.u().t()) {
                    return C8188l2.f49866b;
                }
                C10340xw0 i10 = C22.i();
                if (i10.d(new NN0())) {
                    C8024k3 v10 = i10.r().v();
                    C6807cm0 c6807cm0 = this.f46344a;
                    int b10 = v10.b(true);
                    c6807cm0.getClass();
                    return c6807cm0.a(b10, C8854p10.b());
                }
            }
        }
        return C8602nZ.f50980b;
    }

    public final C6974dm0 b(EB eb2, int i10, int i11) {
        W5 u22 = eb2.u2();
        return a(u22, i10, i11, u22.f45293f.a());
    }

    public final C6974dm0 a(W5 w52, int i10, int i11, AbstractC10561zE abstractC10561zE) {
        if (this.f46349f.add(w52) && !w52.z() && !w52.i().m2() && i10 <= 3) {
            AbstractC6205Xl0 abstractC6205Xl0 = C8188l2.f49866b;
            while (!abstractC10561zE.U1()) {
                boolean z10 = f46343g;
                if (!z10 && abstractC10561zE.k1()) {
                    throw new AssertionError();
                }
                if (!z10 && abstractC10561zE.A1()) {
                    throw new AssertionError();
                }
                AbstractC6205Xl0 a10 = a(abstractC10561zE);
                a10.getClass();
                if (a10 instanceof C8188l2) {
                    if (!z10 && !(abstractC10561zE instanceof C4) && !abstractC10561zE.v1()) {
                        throw new AssertionError();
                    }
                } else if (a10 instanceof C8602nZ) {
                    i11++;
                } else {
                    abstractC6205Xl0 = abstractC6205Xl0.a(a10);
                }
                abstractC10561zE = abstractC10561zE.Y0();
            }
            if (i11 > this.f46348e) {
                return C6974dm0.f47511c;
            }
            C6974dm0 a11 = a(abstractC10561zE.l0(), i10, i11);
            return new C6974dm0(a11.f47512a.a(abstractC6205Xl0), a11.f47513b);
        }
        return C6974dm0.f47511c;
    }

    public final C6974dm0 a(AbstractC9408sL abstractC9408sL, int i10, final int i11) {
        int r22 = abstractC9408sL.r2();
        if (r22 != 24) {
            if (r22 == 25) {
                final EB V10 = abstractC9408sL.V();
                C10340xw0 c10340xw0 = (C10340xw0) V10.f54321f.get(0);
                if (!c10340xw0.i().H()) {
                    c10340xw0 = null;
                }
                if (!V10.x2()) {
                    C10340xw0 y22 = V10.y2();
                    if (y22.i().H()) {
                        c10340xw0 = c10340xw0 != null ? null : y22;
                    }
                }
                if (c10340xw0 != null && !c10340xw0.f53893j) {
                    C10340xw0 a10 = V10.x2() ? null : V10.a(1 - V10.f54321f.indexOf(c10340xw0));
                    int b10 = c10340xw0.i().r().v().b(true);
                    C4516j1 d10 = this.f46346c.d();
                    com.android.tools.r8.graph.M2 a11 = d10.getReference().a(b10, d10.w0());
                    final int i12 = i10 + 1;
                    C6974dm0 a12 = a(b10, a11, a10, V10.f39789l).a(new Supplier() {
                        @Override
                        public final Object get() {
                            return C6319Zl0.this.a(V10, i12, i11);
                        }
                    });
                    C6974dm0 a13 = a(b10, a11, a10, V10.f39789l.b()).a(new Supplier() {
                        @Override
                        public final Object get() {
                            return C6319Zl0.this.b(V10, i12, i11);
                        }
                    });
                    AbstractC6205Xl0 abstractC6205Xl0 = a12.f47512a;
                    AbstractC6205Xl0 abstractC6205Xl02 = a13.f47512a;
                    abstractC6205Xl0.getClass();
                    if (!(abstractC6205Xl0 instanceof C8188l2)) {
                        abstractC6205Xl02.getClass();
                        if (!(abstractC6205Xl02 instanceof C8188l2)) {
                            if (!(abstractC6205Xl0 instanceof C8602nZ)) {
                                if (!(abstractC6205Xl02 instanceof C8602nZ)) {
                                    if (abstractC6205Xl0 instanceof C6641bm0) {
                                        abstractC6205Xl0 = abstractC6205Xl0.b().b(abstractC6205Xl02);
                                    } else if (abstractC6205Xl02 instanceof C6641bm0) {
                                        abstractC6205Xl0 = abstractC6205Xl02.b().b(abstractC6205Xl0);
                                    } else {
                                        boolean z10 = AbstractC6205Xl0.f45815a;
                                        if (!z10 && !abstractC6205Xl0.d() && !(abstractC6205Xl0 instanceof C6474am0)) {
                                            throw new AssertionError();
                                        }
                                        if (!z10 && !abstractC6205Xl02.d() && !(abstractC6205Xl02 instanceof C6474am0)) {
                                            throw new AssertionError();
                                        }
                                        AbstractC7552hC a14 = AbstractC7552hC.a(abstractC6205Xl0, abstractC6205Xl02);
                                        if (a14.size() <= 3) {
                                            abstractC6205Xl02 = new C6641bm0(a14);
                                        } else {
                                            abstractC6205Xl0 = C8602nZ.f50980b;
                                        }
                                    }
                                }
                                return new C6974dm0(abstractC6205Xl0, Math.max(a12.f47513b, a13.f47513b));
                            }
                            abstractC6205Xl0 = abstractC6205Xl02;
                            return new C6974dm0(abstractC6205Xl0, Math.max(a12.f47513b, a13.f47513b));
                        }
                    }
                    abstractC6205Xl0 = C8188l2.f49866b;
                    return new C6974dm0(abstractC6205Xl0, Math.max(a12.f47513b, a13.f47513b));
                }
            } else {
                if (r22 == 56) {
                    return new C6974dm0(C8188l2.f49866b, i11);
                }
                if (r22 == 62) {
                    C8319lq0 O02 = abstractC9408sL.O0();
                    C10340xw0 i13 = ((C10340xw0) O02.f54321f.get(0)).i();
                    if (!i13.d(new NN0())) {
                        return C6974dm0.f47511c;
                    }
                    int i14 = i10 + 1;
                    int i15 = i11;
                    for (W5 w52 : O02.b().p()) {
                        C6974dm0 a15 = a(w52, i14, i11, w52.f45293f.a());
                        AbstractC6205Xl0 abstractC6205Xl03 = a15.f47512a;
                        abstractC6205Xl03.getClass();
                        if (!(abstractC6205Xl03 instanceof C8188l2)) {
                            return C6974dm0.f47511c;
                        }
                        i15 = Math.max(i15, a15.f47513b);
                    }
                    C9626th a16 = this.f46344a.a(i13.r().v().b(true));
                    a16.getClass();
                    return new C6974dm0(a16, i15);
                }
                if (r22 == 65) {
                    if (abstractC9408sL.b().z()) {
                        return C6974dm0.f47511c;
                    }
                    return new C6974dm0(C8188l2.f49866b, i11);
                }
            }
            return C6974dm0.f47511c;
        }
        W5 v22 = abstractC9408sL.U().v2();
        return a(v22, i10, i11, v22.f45293f.a());
    }

    public final C6974dm0 a(EB eb2, int i10, int i11) {
        W5 v22 = eb2.v2();
        return a(v22, i10, i11, v22.f45293f.a());
    }

    public final AbstractC6205Xl0 a(int i10, com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0, NB nb2) {
        boolean z10 = c10340xw0 == null;
        int i11 = AbstractC6262Yl0.f46086a[nb2.ordinal()];
        if (i11 == 1) {
            if (z10) {
                if (m22.Q0()) {
                    C6807cm0 c6807cm0 = this.f46344a;
                    c6807cm0.getClass();
                    return c6807cm0.a(i10, C8854p10.c());
                }
                if (m22.F0()) {
                    return this.f46344a.a(i10, false);
                }
            } else if (m22.P0()) {
                OptionalLong a10 = a(c10340xw0);
                if (a10.isPresent()) {
                    C6807cm0 c6807cm02 = this.f46344a;
                    long asLong = a10.getAsLong();
                    c6807cm02.getClass();
                    return new C6667bv(i10, asLong);
                }
            }
            return C8602nZ.f50980b;
        }
        if (i11 != 2) {
            return C8602nZ.f50980b;
        }
        if (z10) {
            if (m22.Q0()) {
                C6807cm0 c6807cm03 = this.f46344a;
                c6807cm03.getClass();
                return c6807cm03.a(i10, C8854p10.b());
            }
            if (m22.F0()) {
                return this.f46344a.a(i10, true);
            }
        } else if (m22.P0()) {
            OptionalLong a11 = a(c10340xw0);
            if (a11.isPresent()) {
                C6807cm0 c6807cm04 = this.f46344a;
                long asLong2 = a11.getAsLong();
                c6807cm04.getClass();
                return new C7186f10(i10, asLong2);
            }
        }
        return C8602nZ.f50980b;
    }

    public static OptionalLong a(C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        if (i10.d(new C8009jy0())) {
            return OptionalLong.of(i10.r().J().w2());
        }
        return OptionalLong.empty();
    }
}
