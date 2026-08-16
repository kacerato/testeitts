package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C8570nJ;
import java.util.function.Function;

public class C11297l1 extends AbstractC11432t1 {

    public static final C11297l1 f57490s;

    public static final C11297l1 f57491t;

    public static final boolean f57492u = true;

    public final boolean f57493k;

    public final boolean f57494l;

    public final boolean f57495m;

    public final boolean f57496n;

    public final boolean f57497o;

    public final boolean f57498p;

    public final boolean f57499q;

    public final boolean f57500r;

    static {
        C11263j1 i10 = new C11263j1().i();
        i10.f57440k = false;
        C11263j1 j10 = i10.j();
        j10.f57441l = false;
        C11263j1 j11 = j10.j();
        j11.f57442m = false;
        C11263j1 j12 = j11.j();
        j12.f57443n = false;
        C11263j1 j13 = j12.j();
        j13.f57445p = false;
        C11263j1 j14 = j13.j();
        j14.f57446q = false;
        f57490s = (C11297l1) j14.j().a();
        C11263j1 l10 = new C11263j1().l();
        l10.f57440k = true;
        C11263j1 j15 = l10.j();
        j15.f57441l = true;
        C11263j1 j16 = j15.j();
        j16.f57442m = true;
        C11263j1 j17 = j16.j();
        j17.f57443n = true;
        C11263j1 j18 = j17.j();
        j18.f57445p = true;
        C11263j1 j19 = j18.j();
        j19.f57446q = true;
        f57491t = (C11297l1) j19.j().a();
    }

    public C11297l1(C11263j1 c11263j1) {
        super(c11263j1);
        this.f57493k = c11263j1.f57440k;
        this.f57494l = c11263j1.f57441l;
        this.f57495m = c11263j1.f57442m;
        this.f57496n = c11263j1.f57443n;
        this.f57497o = c11263j1.f57444o;
        this.f57498p = c11263j1.f57445p;
        this.f57499q = c11263j1.f57446q;
        this.f57500r = c11263j1.f57447r;
    }

    public static C11280k1 e() {
        return f57491t.d();
    }

    @Override
    public final boolean a(AbstractC11432t1 abstractC11432t1) {
        C11297l1 c11297l1 = (C11297l1) abstractC11432t1;
        return super.a(c11297l1) && this.f57493k == c11297l1.f57493k && this.f57494l == c11297l1.f57494l && this.f57495m == c11297l1.f57495m && this.f57496n == c11297l1.f57496n && this.f57497o == c11297l1.f57497o && this.f57498p == c11297l1.f57498p && this.f57499q == c11297l1.f57499q && this.f57500r == c11297l1.f57500r;
    }

    @Override
    public final int b() {
        return AbstractC11432t1.a(16, this.f57500r) + AbstractC11432t1.a(15, this.f57499q) + AbstractC11432t1.a(14, this.f57498p) + AbstractC11432t1.a(13, this.f57497o) + AbstractC11432t1.a(12, this.f57496n) + AbstractC11432t1.a(11, this.f57495m) + AbstractC11432t1.a(10, this.f57494l) + AbstractC11432t1.a(9, this.f57493k) + super.b();
    }

    public C11263j1 c() {
        return new C11263j1(this);
    }

    public C11280k1 d() {
        if (f57492u || !equals(f57490s)) {
            return new C11280k1(this);
        }
        throw new AssertionError();
    }

    public final boolean a(C8570nJ c8570nJ, boolean z10) {
        if (!z10 || !d(c8570nJ) || !c8570nJ.f50688i.f().f56579k) {
            return true;
        }
        if (c8570nJ.f50674d1) {
            return false;
        }
        AbstractC11247i1 abstractC11247i1 = this.f57838h;
        abstractC11247i1.getClass();
        return abstractC11247i1 instanceof C11145c1;
    }

    public static boolean a(C4724u1 c4724u1, C8570nJ c8570nJ, Function function, Function function2) {
        com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) function.apply(c4724u1.f37858F3);
        return e02 == null || e02.v1() || !((C11297l1) function2.apply(e02.d0())).e(c8570nJ);
    }
}
