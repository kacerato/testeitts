package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;

public abstract class AbstractC4954Bw {

    public static final boolean f39039b = true;

    public final AbstractC5012Cw f39040a;

    public AbstractC4954Bw(AbstractC5012Cw abstractC5012Cw) {
        this.f39040a = abstractC5012Cw;
    }

    public final void a(W5 w52) {
        for (C7201f60 c7201f60 : w52.s()) {
            AbstractC5012Cw abstractC5012Cw = this.f39040a.f39389l;
            Objects.requireNonNull(abstractC5012Cw);
            if (c7201f60.e(new C6383aB0(abstractC5012Cw))) {
                boolean add = this.f39040a.f39688c.add(c7201f60);
                if (!AbstractC5070Dw.f39685f && !add) {
                    throw new AssertionError();
                }
            }
        }
    }

    public abstract AbstractC6333Zs0 b();

    /* JADX WARN: Removed duplicated region for block: B:37:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0119 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(AbstractC10561zE abstractC10561zE) {
        int i10;
        while (abstractC10561zE != null) {
            if (!f39039b && abstractC10561zE.e1()) {
                if (this.f39040a.f39688c.contains(abstractC10561zE.d())) {
                    throw new AssertionError();
                }
            }
            int r22 = abstractC10561zE.r2();
            if (r22 == 9) {
                C4 B10 = abstractC10561zE.B();
                if (this.f39040a.f39688c.contains(B10.v2())) {
                    boolean add = this.f39040a.f39688c.add(B10.d());
                    if (!AbstractC5070Dw.f39685f && !add) {
                        throw new AssertionError();
                    }
                }
            } else if (r22 == 10) {
                C7942jc D10 = abstractC10561zE.D();
                if (this.f39040a.f39688c.contains(D10.n())) {
                    boolean add2 = this.f39040a.f39688c.add(D10.d());
                    if (!AbstractC5070Dw.f39685f && !add2) {
                        throw new AssertionError();
                    }
                }
                if (this.f39040a.a()) {
                    i10 = a();
                    if (!AbstractC10506yw.a(i10)) {
                    }
                }
            } else if (r22 == 15) {
                abstractC10561zE.J();
            } else if (r22 == 16) {
                abstractC10561zE.K();
            } else if (r22 == 24) {
                W5 v22 = abstractC10561zE.U().v2();
                if (this.f39040a.f39689d.contains(v22)) {
                    i10 = a();
                    if (!AbstractC10506yw.a(i10)) {
                    }
                } else {
                    AbstractC5012Cw abstractC5012Cw = this.f39040a;
                    abstractC5012Cw.f39388k.c(new C4896Aw(abstractC5012Cw, v22));
                }
            } else {
                if (r22 == 30) {
                    i10 = a(abstractC10561zE.m());
                } else if (r22 == 56) {
                    abstractC10561zE.G0();
                    i10 = a();
                } else if (r22 != 65) {
                    if (r22 != 33 && r22 != 34) {
                        switch (r22) {
                            case 38:
                            case 39:
                            case 40:
                                break;
                            default:
                                i10 = a();
                                break;
                        }
                    }
                    i10 = a(abstractC10561zE.e0());
                } else if (this.f39040a.a()) {
                    i10 = a();
                }
                if (!AbstractC10506yw.a(i10)) {
                    return i10;
                }
                if (i10 == 3) {
                    return 2;
                }
                abstractC10561zE = abstractC10561zE.Y0();
            }
            i10 = 2;
            if (!AbstractC10506yw.a(i10)) {
            }
        }
        return 2;
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.Map, java.lang.Object] */
    public final int a(C9225rE c9225rE) {
        if (this.f39040a.a()) {
            AbstractC5012Cw abstractC5012Cw = this.f39040a;
            C4798y c4798y = abstractC5012Cw.f39384g;
            com.android.tools.r8.graph.H5 j10 = abstractC5012Cw.f39385h.j();
            c9225rE.getClass();
            if (c9225rE.a(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                return a();
            }
        }
        AbstractC5012Cw abstractC5012Cw2 = this.f39040a;
        C10340xw0 n10 = c9225rE.n();
        abstractC5012Cw2.getClass();
        if (n10.i() == abstractC5012Cw2.f39686a.d()) {
            AbstractC5012Cw abstractC5012Cw3 = this.f39040a;
            com.android.tools.r8.graph.F5 o10 = c9225rE.c(abstractC5012Cw3.f39384g, abstractC5012Cw3.f39385h.j()).o();
            if (o10 != null && this.f39040a.f39387j.f47879b.containsKey(o10.getReference())) {
                this.f39040a.f39690e.a(o10);
            }
            AbstractC5012Cw abstractC5012Cw4 = this.f39040a;
            C7207f80 c7207f80 = abstractC5012Cw4.f39387j;
            final AbstractC5012Cw abstractC5012Cw5 = abstractC5012Cw4.f39389l;
            Objects.requireNonNull(abstractC5012Cw5);
            V60 v60 = new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return AbstractC5012Cw.this.a((com.android.tools.r8.graph.F5) obj);
                }
            };
            c7207f80.getClass();
            if (AbstractC9907vK.a(c7207f80, v60)) {
                return 3;
            }
        }
        if (this.f39040a.a()) {
            return 2;
        }
        AbstractC5012Cw abstractC5012Cw6 = this.f39040a;
        if (!abstractC5012Cw6.f39688c.contains(c9225rE.value())) {
            return 2;
        }
        AbstractC5012Cw abstractC5012Cw7 = this.f39040a;
        if (!AbstractC5070Dw.f39685f && abstractC5012Cw7.a()) {
            throw new AssertionError();
        }
        abstractC5012Cw7.f39687b = c9225rE;
        return 2;
    }

    public final int a(VJ vj2) {
        if (vj2.a(this.f39040a.f39386i)) {
            AbstractC5012Cw abstractC5012Cw = this.f39040a;
            C10340xw0 b10 = vj2.b(0);
            abstractC5012Cw.getClass();
            if (b10.i() == abstractC5012Cw.f39686a.d()) {
                AbstractC5012Cw abstractC5012Cw2 = this.f39040a;
                com.android.tools.r8.graph.H0 p10 = vj2.f(abstractC5012Cw2.f39384g, abstractC5012Cw2.f39385h.j()).p();
                if (p10 != null && p10.getReference().a(this.f39040a.f39386i.f37859F4.f38228f)) {
                    return 2;
                }
            }
        }
        if (!this.f39040a.a()) {
            AbstractC5012Cw abstractC5012Cw3 = this.f39040a.f39389l;
            Objects.requireNonNull(abstractC5012Cw3);
            if (vj2.a(new C6383aB0(abstractC5012Cw3))) {
                AbstractC5012Cw abstractC5012Cw4 = this.f39040a;
                C4798y c4798y = abstractC5012Cw4.f39384g;
                com.android.tools.r8.graph.H5 j10 = abstractC5012Cw4.f39385h.j();
                if (vj2.b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                    AbstractC5012Cw abstractC5012Cw5 = this.f39040a;
                    if (!AbstractC5070Dw.f39685f && abstractC5012Cw5.a()) {
                        throw new AssertionError();
                    }
                    abstractC5012Cw5.f39687b = vj2;
                }
            }
        }
        if (this.f39040a.a()) {
            return a();
        }
        return 2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.Map, java.lang.Object] */
    public final int a() {
        for (com.android.tools.r8.graph.F5 f52 : this.f39040a.f39387j.f47879b.values()) {
            if (!this.f39040a.a(f52)) {
                int b10 = this.f39040a.b(f52);
                if (!f39039b && !AbstractC10506yw.a(b10) && b10 != 2) {
                    throw new AssertionError();
                }
                if (AbstractC10506yw.a(b10)) {
                    return b10;
                }
            }
        }
        return this.f39040a.f39387j.f47879b.isEmpty() ? 1 : 2;
    }
}
