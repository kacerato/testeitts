package com.android.tools.r8.graph;

import android.util.Half;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8028k40;
import com.android.tools.r8.internal.C5160Fj;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.RW;
import com.android.tools.r8.internal.SG;
import com.android.tools.r8.internal.TW;
import com.android.tools.r8.shaking.C11245i;
import java.util.BitSet;

public final class H5 extends H0 implements G5 {

    public static final boolean f36412f = true;

    public H5() {
    }

    @Override
    public final H5 H() {
        return this;
    }

    @Override
    public final G5 O() {
        return this;
    }

    public C7215fB a(C4798y<?> c4798y) {
        return a(c4798y, EW.b(c4798y));
    }

    @Override
    public final boolean a0() {
        return true;
    }

    @Override
    public final H0 b() {
        return this;
    }

    public final void c(C4798y c4798y) {
        boolean b10 = b(c4798y);
        if (b10) {
            L4 accessFlags = getAccessFlags();
            accessFlags.a();
            accessFlags.f37197c = (accessFlags.f37197c & (-2081)) | 1024;
            C4516j1 d10 = d();
            d10.getClass();
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            d10.f37322o = com.android.tools.r8.androidapi.g.f35607b;
            C4516j1 d11 = d();
            d11.L0();
            d11.f37317j = null;
            C8696o40 a10 = AbstractC8028k40.a();
            a10.getClass();
            if (A().d()) {
                a10.d(this);
                a10.f(d());
                a10.e(this);
                a10.f(this);
                a10.g(this);
                a10.c(this);
                a10.a(this);
                a10.h(this);
                a10.i(this);
                a10.k(this);
                a10.l(this);
                a10.m(this);
                a10.n(this);
                a10.o(this);
                a10.r(this);
                a10.q(this);
                a10.p(this);
                a10.s(this);
                a10.t(this);
            }
        }
        if (b10) {
            return;
        }
        d(c4798y);
    }

    @Override
    public final com.android.tools.r8.kotlin.Q c0() {
        return d().f37323p;
    }

    public final void d(C4798y c4798y) {
        getAccessFlags().f37197c &= Half.LOWEST_VALUE;
        d().f(c4798y.f38405T);
        a(C4389c6.f37098e, (C4798y<?>) c4798y);
        C8696o40 a10 = AbstractC8028k40.a();
        C4516j1 d10 = d();
        com.android.tools.r8.ir.optimize.O o10 = com.android.tools.r8.ir.optimize.O.f54787d;
        a10.getClass();
        d10.a(o10);
        C8696o40 a11 = AbstractC8028k40.a();
        a11.getClass();
        if (!c4798y.f().h() || c4798y.a(this).d(c4798y.E())) {
            if (RW.f43918a) {
                return;
            }
            TW A10 = A();
            A10.getClass();
            if (!(A10 instanceof C5160Fj)) {
                throw new AssertionError();
            }
            return;
        }
        if (A().d()) {
            a11.d(this);
            a11.f(d());
            a11.e(this);
            a11.f(this);
            a11.g(this);
            a11.c(this);
            a11.a(this);
            a11.h(this);
            a11.i(this);
            a11.k(this);
            a11.l(this);
            a11.m(this);
            a11.n(this);
            a11.o(this);
            a11.r(this);
            a11.q(this);
            a11.p(this);
            a11.s(this);
            a11.t(this);
        }
        a11.b(this);
        C4516j1 d11 = d();
        int a12 = d11.getReference().a(d11.w0());
        BitSet bitSet = new BitSet(a12);
        for (int i10 = 0; i10 < a12; i10++) {
            bitSet.set(i10, true);
        }
        d().T0().a(bitSet);
    }

    @Override
    public final InterfaceC4610o0 getContext() {
        return this;
    }

    public H5(H2 h22, C4516j1 c4516j1) {
        super(h22, c4516j1);
    }

    public C7215fB a(C4798y<?> c4798y, EW.a aVar) {
        C4516j1 d10 = d();
        if (d10.b1()) {
            return d10.Q0().a(this, c4798y, aVar);
        }
        return null;
    }

    @Override
    public final H5 b() {
        return this;
    }

    @Override
    public H2 getHolder() {
        E0 e02 = this.f36317b;
        if (f36412f || e02.e0()) {
            return e02.d0();
        }
        throw new AssertionError();
    }

    public final boolean b(C4798y c4798y) {
        c4798y.E().getClass();
        if ((!getHolder().l1() && !getHolder().isInterface()) || getAccessFlags().J() || getAccessFlags().h() || getAccessFlags().n() || d().j1()) {
            return false;
        }
        if (((C11245i) c4798y.f()).f57399n.contains(getReference())) {
            return (c4798y.E().f() || !getHolder().isInterface() || getAccessFlags().D()) ? false : true;
        }
        return true;
    }

    public final void a(AbstractC4446f6 abstractC4446f6) {
        AbstractC4497i0 Q02 = d().Q0();
        if (Q02 != null) {
            Q02.a(this, abstractC4446f6);
        }
    }

    @Override
    public final E0 a() {
        return getHolder();
    }

    @Override
    public final H2 a() {
        return getHolder();
    }

    public void a(AbstractC4497i0 abstractC4497i0, C4798y<?> c4798y) {
        AbstractC4497i0 Q02 = d().Q0();
        SG sg2 = d().f37326s;
        if (Q02 != null && Q02.t0() && d().f37326s == C4516j1.f37312w && (c4798y.H().f50905s0 || (!c4798y.E().f50690i1 && !getHolder().I1()))) {
            sg2 = Q02.a(c4798y, d());
        }
        d().a(abstractC4497i0, sg2);
    }

    public final H5 a(InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        A2 d10 = abstractC5308Hz.d(abstractC5308Hz2, getReference());
        if (d10.a(getReference()) && !d().f37327t) {
            boolean z10 = f36412f;
            if (!z10) {
                H0 b10 = interfaceC4403d1.b(getReference());
                if (!z10 && d() != b10.d()) {
                    throw new AssertionError();
                }
            }
            return this;
        }
        H0 b11 = interfaceC4403d1.b(d10);
        if (b11 != null) {
            return b11.H();
        }
        return null;
    }
}
