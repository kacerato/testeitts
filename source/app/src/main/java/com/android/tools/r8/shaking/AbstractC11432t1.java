package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.internal.C8570nJ;
import java.util.function.Function;

public abstract class AbstractC11432t1 {

    public static final boolean f57830j = true;

    public final boolean f57831a;

    public final boolean f57832b;

    public final boolean f57833c;

    public final boolean f57834d;

    public final boolean f57835e;

    public final boolean f57836f;

    public final boolean f57837g;

    public final AbstractC11247i1 f57838h;

    public final AbstractC11247i1 f57839i;

    public AbstractC11432t1(AbstractC11398r1 abstractC11398r1) {
        boolean z10 = abstractC11398r1.f57753b;
        boolean z11 = abstractC11398r1.f57754c;
        boolean e10 = abstractC11398r1.e();
        boolean f10 = abstractC11398r1.f();
        boolean g10 = abstractC11398r1.g();
        boolean z12 = abstractC11398r1.f57758g;
        boolean z13 = abstractC11398r1.f57759h;
        AbstractC11247i1 a10 = abstractC11398r1.f57760i.a();
        AbstractC11247i1 a11 = abstractC11398r1.f57761j.a();
        this.f57831a = z10;
        this.f57832b = z11;
        this.f57833c = e10;
        this.f57834d = f10;
        this.f57835e = g10;
        this.f57836f = z12;
        this.f57837g = z13;
        this.f57838h = a10;
        this.f57839i = a11;
    }

    public static int a(int i10, boolean z10) {
        if (z10) {
            return 1 << i10;
        }
        return 0;
    }

    public boolean b(Q0 q02) {
        return ((C8570nJ) q02).R() && this.f57833c;
    }

    public boolean c(Q0 q02) {
        return ((C8570nJ) q02).T() && this.f57834d;
    }

    public final boolean d(Q0 q02) {
        return (c(q02) && e(q02)) ? false : true;
    }

    public boolean e(Q0 q02) {
        return ((C8570nJ) q02).W() && this.f57835e;
    }

    public final boolean f(Q0 q02) {
        C8570nJ c8570nJ = (C8570nJ) q02;
        C11350o3 c11350o3 = c8570nJ.f50688i;
        if (c11350o3 != null) {
            return !(c8570nJ.f50674d1 && c11350o3.f().f56573e) && this.f57836f;
        }
        return false;
    }

    public I1 a() {
        return null;
    }

    public static AbstractC11415s1 a(C4554l1 c4554l1) {
        return C11382q1.f57709o.c();
    }

    public int b() {
        boolean z10 = f57830j;
        if (!z10 && !this.f57838h.b()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f57839i.b()) {
            throw new AssertionError();
        }
        int a10 = a(6, this.f57837g) + a(5, this.f57836f) + a(4, this.f57835e) + a(3, this.f57834d) + a(2, this.f57833c) + a(1, this.f57832b) + a(0, this.f57831a);
        AbstractC11247i1 abstractC11247i1 = this.f57838h;
        abstractC11247i1.getClass();
        int a11 = a(7, abstractC11247i1 instanceof C11230h1) + a10;
        AbstractC11247i1 abstractC11247i12 = this.f57839i;
        abstractC11247i12.getClass();
        return a(8, abstractC11247i12 instanceof C11230h1) + a11;
    }

    public static AbstractC11415s1 a(com.android.tools.r8.graph.A2 a22) {
        return I1.f56549D.d();
    }

    public static AbstractC11415s1 a(com.android.tools.r8.graph.M2 m22) {
        return C11297l1.f57491t.d();
    }

    public static AbstractC11415s1 a(com.android.tools.r8.graph.J2 j22) {
        return (AbstractC11415s1) j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC11432t1.a((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC11432t1.a((C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC11432t1.a((com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public static boolean a(C8570nJ c8570nJ, C4666r0 c4666r0, boolean z10, AbstractC11247i1 abstractC11247i1, boolean z11, boolean z12) {
        if (!z10) {
            return true;
        }
        if (!abstractC11247i1.a(c4666r0)) {
            return false;
        }
        if (c8570nJ.f50674d1) {
            if (c4666r0.m0() == 1) {
                return !z11;
            }
            if (c4666r0.m0() == 0) {
                return !z12;
            }
        }
        return true;
    }

    public final boolean a(Q0 q02) {
        C8570nJ c8570nJ = (C8570nJ) q02;
        if (c8570nJ.f50688i.f().f56571c) {
            return (c8570nJ.f50674d1 || d(q02)) ? false : true;
        }
        return true;
    }

    public boolean a(AbstractC11432t1 abstractC11432t1) {
        boolean z10 = f57830j;
        if (!z10 && !this.f57838h.b()) {
            throw new AssertionError();
        }
        if (z10 || this.f57839i.b()) {
            return getClass() == abstractC11432t1.getClass() && this.f57831a == abstractC11432t1.f57831a && this.f57832b == abstractC11432t1.f57832b && this.f57833c == abstractC11432t1.f57833c && this.f57834d == abstractC11432t1.f57834d && this.f57835e == abstractC11432t1.f57835e && this.f57836f == abstractC11432t1.f57836f && this.f57837g == abstractC11432t1.f57837g && this.f57838h == abstractC11432t1.f57838h && this.f57839i == abstractC11432t1.f57839i;
        }
        throw new AssertionError();
    }
}
