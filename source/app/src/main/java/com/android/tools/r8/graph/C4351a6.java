package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C5062Ds;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C6269Yp;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7821ir;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.RR;
import java.nio.ShortBuffer;
import java.util.Objects;

public final class C4351a6 extends AbstractC4497i0 implements InterfaceC4443f3 {

    public static final boolean f37048f = true;

    public final M2 f37049e;

    public C4351a6(M2 m22) {
        this.f37049e = m22;
    }

    @Override
    public final boolean B0() {
        return true;
    }

    @Override
    public final boolean C0() {
        return true;
    }

    @Override
    public final AbstractC4497i0 P() {
        return this;
    }

    @Override
    public final C4351a6 Q() {
        return this;
    }

    @Override
    public final int T() {
        return 1;
    }

    @Override
    public final int Y() {
        return 6;
    }

    @Override
    public final int a(H5 h52) {
        return 1;
    }

    @Override
    public final int b(H5 h52) {
        return 0;
    }

    @Override
    public final void c(H5 h52) {
    }

    @Override
    public final int k(int i10) {
        return 6 <= i10 ? 6 : -1;
    }

    @Override
    public final int k0() {
        return Objects.hash(AbstractC4291c.a(4), Integer.valueOf(this.f37049e.hashCode()));
    }

    @Override
    public final int l() {
        return 4;
    }

    @Override
    public final InterfaceC4443f3 m0() {
        return this;
    }

    @Override
    public final J0.a[] o() {
        return new J0.a[0];
    }

    @Override
    public final int q0() {
        return 6;
    }

    @Override
    public final J0.b[] r() {
        return new J0.b[0];
    }

    @Override
    public final String toString() {
        return "ThrowExceptionCode";
    }

    @Override
    public final Z0 u() {
        return null;
    }

    @Override
    public final boolean w0() {
        return true;
    }

    @Override
    public final boolean x0() {
        return false;
    }

    @Override
    public final InterfaceC4443f3 a(H5 h52, C4766w5 c4766w5, C4798y c4798y, boolean z10) {
        return this;
    }

    @Override
    public final boolean c(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4351a6) {
            return Objects.equals(this.f37049e, ((C4351a6) obj).f37049e);
        }
        return false;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
    }

    @Override
    public final void a(com.android.tools.r8.dex.r rVar) {
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(AbstractC4291c.b(4));
        abstractC9213rA.a(this.f37049e);
    }

    @Override
    public final C7215fB a(H5 h52, C4798y c4798y, EW.a aVar) {
        throw new C5417Jv0("Should not be called");
    }

    @Override
    public final C7215fB a(H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        throw new C5417Jv0("Should not be called");
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, H5 h52, RR rr) {
        if (!f37048f && !this.f37049e.a(c4798y.v().c(abstractC5308Hz, this.f37049e))) {
            throw new AssertionError();
        }
        C4724u1 b10 = rr.f43897a.b();
        A2 a10 = b10.a(this.f37049e, b10.a(b10.f37905M1, new M2[0]), b10.f38067i1);
        if (a10.b(c4798y, m10)) {
            a10.c(c4798y, m10);
        }
    }

    @Override
    public final void a(H5 h52, AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.d(this.f37049e);
        C4724u1 b10 = abstractC4446f6.f37176a.b();
        abstractC4446f6.a(b10.a(this.f37049e, b10.a(b10.f37905M1, new M2[0]), b10.f38067i1));
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        throw new C5417Jv0("Should not be called");
    }

    @Override
    public final void a(C4766w5 c4766w5, H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        new C7821ir(0, this.f37049e).a(c4766w5, h52, abstractC5308Hz, abstractC5308Hz2, rr, shortBuffer);
        C4724u1 b10 = rr.f43897a.b();
        new C6269Yp(1, b10.a(this.f37049e, b10.a(b10.f37905M1, new M2[0]), b10.f38067i1), 0, 0, 0, 0, 0).a(c4766w5, h52, abstractC5308Hz, abstractC5308Hz2, rr, shortBuffer);
        new C5062Ds(0).a(c4766w5, h52, abstractC5308Hz, abstractC5308Hz2, rr, shortBuffer);
    }

    @Override
    public final InterfaceC4424e3 a(H5 h52, C4724u1 c4724u1) {
        return new C4405d3(this, this.f37049e, 0, 1);
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return "ThrowExceptionCode";
    }
}
