package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC4893Au0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C9374s8;
import com.android.tools.r8.internal.EnumC8071kK;
import com.android.tools.r8.internal.InterfaceC5368Ja;
import com.android.tools.r8.internal.InterfaceC5484La;
import java.util.ListIterator;

public abstract class AbstractC4446f6 {

    public static final boolean f37175d = true;

    public final C4798y f37176a;

    public final J5 f37177b;

    public AbstractC6333Zs0 f37178c = C6276Ys0.f46097c;

    public AbstractC4446f6(C4798y c4798y, J5 j52) {
        this.f37176a = c4798y;
        this.f37177b = j52;
    }

    public void a(int i10) {
    }

    public abstract void a(A2 a22);

    public abstract void a(C4554l1 c4554l1);

    public AbstractC5308Hz b() {
        boolean z10 = f37175d;
        if (!z10 && !this.f37177b.I()) {
            throw new AssertionError();
        }
        if (z10 || this.f37177b.I()) {
            return this.f37177b.b().d().Q0().a(this.f37176a);
        }
        throw new AssertionError();
    }

    public abstract void b(A2 a22);

    public abstract void b(M2 m22);

    public void c(A2 a22) {
        boolean z10 = f37175d;
        if (!z10 && !this.f37177b.I()) {
            throw new AssertionError();
        }
        EnumC8071kK a10 = EnumC8071kK.a(a22, this.f37177b.b(), this.f37176a, b());
        if (a10 == EnumC8071kK.f49580d) {
            a(a22);
        } else {
            if (!z10 && !a10.d()) {
                throw new AssertionError();
            }
            f(a22);
        }
    }

    public abstract void c(C4554l1 c4554l1);

    public abstract void d(A2 a22);

    public void d(C4554l1 c4554l1) {
        c(c4554l1);
    }

    public void e(A2 a22) {
        d(a22);
    }

    public abstract void e(C4554l1 c4554l1);

    public abstract void f(A2 a22);

    public abstract void f(M2 m22);

    public void f(C4554l1 c4554l1) {
        e(c4554l1);
    }

    public abstract void g(A2 a22);

    public abstract void g(C4554l1 c4554l1);

    public void h(C4554l1 c4554l1) {
        g(c4554l1);
    }

    public void a(C4804y5 c4804y5) {
    }

    public void d(M2 m22) {
        f(m22);
    }

    public void e(M2 m22) {
        a(m22, true);
    }

    public void a(D0 d02) {
        C4724u1 b10 = this.f37176a.b();
        A2 m02 = d02.f36214g.m0();
        if (m02 != b10.f38168u6 && m02 != b10.f38176v6) {
            a(2, d02.f36214g);
        }
        f(d02.f36213f.f36440e);
        a(d02, d02.f36215h.size());
    }

    public void b(C4554l1 c4554l1) {
        a(c4554l1);
    }

    public void b(C4554l1 c4554l1, C9374s8 c9374s8) {
        e(c4554l1);
    }

    public void c() {
        f(this.f37176a.b().f38092l2);
    }

    public void c(M2 m22) {
        f(m22);
    }

    public final void a() {
        if (!f37175d && !this.f37178c.d()) {
            throw new AssertionError();
        }
        this.f37178c = C6162Ws0.f45559c;
    }

    public void a(B60 b60) {
        if (!f37175d && !b60.k()) {
            throw new AssertionError();
        }
    }

    public void a(C4554l1 c4554l1, C9374s8 c9374s8) {
        a(c4554l1);
    }

    public void a(InterfaceC5368Ja interfaceC5368Ja) {
        a(interfaceC5368Ja.getField());
    }

    public void a(InterfaceC5484La interfaceC5484La) {
        e(interfaceC5484La.getField());
    }

    public void a(M2 m22, ListIterator listIterator, boolean z10) {
        f(m22);
    }

    public void a(M2 m22, boolean z10) {
        f(m22);
    }

    public void a(M2 m22) {
        f(m22);
    }

    public void a(int i10, C2 c22) {
        switch (c22.f36190e.ordinal()) {
            case 0:
                h(c22.l0());
                return;
            case 1:
                f(c22.l0());
                return;
            case 2:
                d(c22.l0());
                return;
            case 3:
                b(c22.l0());
                return;
            case 4:
                d(c22.m0());
                return;
            case 5:
                g(c22.m0());
                return;
            case 6:
                A2 m02 = c22.m0();
                d(m02.f38297f);
                a(m02);
                return;
            case 7:
                a(c22.m0());
                return;
            case 8:
                b(c22.m0());
                return;
            case 9:
                f(c22.m0());
                return;
            default:
                throw new AssertionError();
        }
    }

    public final void a(D0 d02, int i10) {
        C4724u1 b10 = this.f37176a.b();
        A2 m02 = d02.f36214g.m0();
        boolean z10 = m02 == b10.f38168u6 || m02 == b10.f38176v6;
        if (!f37175d && i10 > d02.f36215h.size()) {
            throw new AssertionError();
        }
        for (int i11 = 0; i11 < i10; i11++) {
            R2 r22 = (R2) d02.f36215h.get(i11);
            int ordinal = r22.G0().ordinal();
            if (ordinal == 7) {
                a((I2) r22.A0().f36759d);
            } else if (ordinal == 8) {
                a(z10 ? 1 : 2, (C2) r22.z0().f36759d);
            } else if (ordinal == 10) {
                f((M2) r22.E0().f36759d);
            } else if (ordinal != 18) {
                if (!f37175d && !r22.N0() && !r22.O0() && !r22.M0() && !r22.L0() && !r22.R0() && !(r22 instanceof C4367b3)) {
                    throw new AssertionError();
                }
            } else if (AbstractC4893Au0.b(d02, this.f37176a.b())) {
                S2 r02 = r22.r0();
                if (!f37175d && !this.f37177b.I()) {
                    throw new AssertionError();
                }
                C4554l1 a10 = AbstractC4893Au0.a(r02, this.f37177b.b(), this.f37176a);
                if (a10 != null) {
                    e(a10);
                }
            } else {
                throw new C5325If(this.f37177b.getOrigin(), "Unsupported const dynamic in call site " + ((Object) r22), null);
            }
            if (this.f37178c.c()) {
                return;
            }
        }
    }

    public final void a(I2 i22) {
        f(i22.f36440e);
        for (M2 m22 : i22.f36441f.f36675b) {
            f(m22);
        }
    }
}
