package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5829Qz;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.YS;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import org.apache.commons.math3.geometry.VectorFormat;

public class C2 extends AbstractC4406d4 implements InterfaceC4596n5, YS {

    public static final boolean f36189i = true;

    public final B2 f36190e;

    public final AbstractC4744v2<? extends AbstractC4592n1, ? extends AbstractC4744v2<?, ?>> f36191f;

    public final boolean f36192g;

    public final A2 f36193h;

    public C2(B2 b22, AbstractC4744v2 abstractC4744v2, boolean z10, A2 a22) {
        this.f36190e = b22;
        this.f36191f = abstractC4744v2;
        this.f36192g = z10;
        this.f36193h = a22;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 6;
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return a((C2) ys, abstractC8953pf);
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        a(abstractC9213rA);
    }

    @Override
    public final boolean c(Object obj) {
        if (obj instanceof C2) {
            C2 c22 = (C2) obj;
            if (this.f36190e.equals(c22.f36190e) && this.f36191f.equals(c22.f36191f) && this.f36192g == c22.f36192g && Objects.equals(this.f36193h, c22.f36193h)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final String i0() {
        return toString();
    }

    @Override
    public final int k0() {
        return Objects.hash(this.f36190e, Integer.valueOf(this.f36191f.k0()), Boolean.valueOf(this.f36192g), this.f36193h);
    }

    public final C4554l1 l0() {
        if (f36189i || this.f36190e.a()) {
            return (C4554l1) this.f36191f;
        }
        throw new AssertionError();
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C2.a(abstractC5754Pq0);
            }
        };
    }

    public final A2 m0() {
        if (f36189i || this.f36190e.d()) {
            return (A2) this.f36191f;
        }
        throw new AssertionError();
    }

    public final boolean n0() {
        return this.f36190e.a();
    }

    public final boolean o0() {
        return this.f36190e.d();
    }

    public final String toString() {
        return "MethodHandle: {" + ((Object) this.f36190e) + ", " + this.f36191f.j0() + VectorFormat.DEFAULT_SUFFIX;
    }

    public static C2 a(C5829Qz c5829Qz, C4482h4 c4482h4, M2 m22) {
        AbstractC4744v2 a10;
        B2 a11 = B2.a(c5829Qz, c4482h4, m22);
        if (a11.a()) {
            String str = c5829Qz.f43769b;
            String str2 = c5829Qz.f43770c;
            String str3 = c5829Qz.f43771d;
            a10 = c4482h4.f37267a.f50660a.a(c4482h4.f(str), c4482h4.e(str3), c4482h4.d(str2));
        } else {
            String str4 = c5829Qz.f43769b;
            a10 = c4482h4.a(c4482h4.f(str4), c5829Qz.f43770c, c5829Qz.f43771d);
        }
        return c4482h4.f37267a.f50660a.a(a11, a10, c5829Qz.f43772e, (A2) null);
    }

    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        if (m10.a(this)) {
            if (this.f36191f.p0()) {
                this.f36191f.l0().a(c4798y, m10);
                return;
            }
            A2 n02 = this.f36191f.n0();
            if (this.f36193h != null) {
                if (n02.b(c4798y, m10)) {
                    this.f36193h.c(c4798y, m10);
                }
            } else if (n02.b(c4798y, m10)) {
                n02.c(c4798y, m10);
            }
        }
    }

    public final C5829Qz a(AbstractC10992r0 abstractC10992r0) {
        String d10;
        String l22;
        String l23;
        boolean z10;
        int i10;
        if (this.f36190e.d()) {
            A2 m02 = m0();
            d10 = abstractC10992r0.d(m02.f38297f);
            A2 a22 = this.f36193h;
            if (a22 != null) {
                l22 = abstractC10992r0.a(a22).toString();
            } else {
                l22 = abstractC10992r0.a(m02).toString();
            }
            l23 = m02.f36127i.a(abstractC10992r0);
            if (m02.f38297f.V0().equals("Ljava/lang/invoke/LambdaMetafactory;")) {
                if (!f36189i && this.f36192g) {
                    throw new AssertionError();
                }
                z10 = false;
            } else {
                z10 = this.f36192g;
            }
        } else {
            if (!f36189i && !this.f36190e.a()) {
                throw new AssertionError();
            }
            C4554l1 l02 = l0();
            d10 = abstractC10992r0.d(l02.f38297f);
            l22 = abstractC10992r0.a(l02).toString();
            l23 = abstractC10992r0.c(l02.f37449i).toString();
            z10 = this.f36192g;
        }
        String str = l23;
        boolean z11 = z10;
        String str2 = d10;
        String str3 = l22;
        switch (this.f36190e.ordinal()) {
            case 0:
                i10 = 4;
                break;
            case 1:
                i10 = 2;
                break;
            case 2:
                i10 = 3;
                break;
            case 3:
                i10 = 1;
                break;
            case 4:
                i10 = 6;
                break;
            case 5:
                i10 = 5;
                break;
            case 6:
                i10 = 8;
                break;
            case 7:
            case 9:
                i10 = 7;
                break;
            case 8:
                i10 = 9;
                break;
            default:
                throw new C5417Jv0();
        }
        return new C5829Qz(i10, str2, str3, str, z11);
    }

    public static int a(C2 c22) {
        return c22.f36190e.f36158b;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return C2.a((C2) obj);
            }
        }).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C2) obj).l0();
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C2) obj).n0();
            }
        }).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C2) obj).m0();
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C2) obj).o0();
            }
        }).b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean z10;
                z10 = ((C2) obj).f36192g;
                return z10;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                A2 a22;
                a22 = ((C2) obj).f36193h;
                return a22;
            }
        });
    }

    @Override
    public final int a(C4766w5 c4766w5) {
        return C4766w5.a(this, c4766w5.f38345l);
    }
}
