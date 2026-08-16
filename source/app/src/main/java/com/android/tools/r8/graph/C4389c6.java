package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C5062Ds;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C7145eo;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.EX;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.nio.ShortBuffer;
import java.util.Iterator;

public final class C4389c6 extends AbstractC4497i0 implements P, InterfaceC4443f3 {

    public static final C4389c6 f37098e = new C4389c6();

    public static int d(H5 h52) {
        int i10 = !h52.getAccessFlags().n() ? 1 : 0;
        Iterator<M2> it = h52.C().iterator();
        while (it.hasNext()) {
            i10 += it.next().B0();
        }
        return i10;
    }

    @Override
    public final int A() {
        return 3;
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
    public final int T() {
        return 0;
    }

    @Override
    public final int Y() {
        return 2;
    }

    @Override
    public final InterfaceC4443f3 a(H5 h52, C4766w5 c4766w5, C4798y c4798y, boolean z10) {
        return this;
    }

    @Override
    public final int b(H5 h52) {
        return d(h52);
    }

    @Override
    public final void c(H5 h52) {
    }

    @Override
    public final int k(int i10) {
        return 2 <= i10 ? 2 : -1;
    }

    @Override
    public final int k0() {
        return System.identityHashCode(this);
    }

    @Override
    public final int l() {
        return 3;
    }

    @Override
    public final P l0() {
        return this;
    }

    @Override
    public final InterfaceC4443f3 m0() {
        return this;
    }

    @Override
    public final J0.a[] o() {
        return J0.a.f36468f;
    }

    @Override
    public final int q0() {
        return 2;
    }

    @Override
    public final J0.b[] r() {
        return J0.b.f36474d;
    }

    @Override
    public final String toString() {
        return "ThrowNullCode";
    }

    @Override
    public final Z0 u() {
        return null;
    }

    @Override
    public final boolean u0() {
        return true;
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
    public final void a(com.android.tools.r8.dex.X x10) {
    }

    @Override
    public final boolean c(Object obj) {
        return this == obj;
    }

    @Override
    public final void a(com.android.tools.r8.dex.r rVar) {
    }

    @Override
    public final void a(H5 h52, AbstractC4446f6 abstractC4446f6) {
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, H5 h52, RR rr) {
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(AbstractC4291c.b(3));
    }

    @Override
    public final C7215fB a(H5 h52, C4798y c4798y, EW.a aVar) {
        return C6382aB.a(h52, c4798y, new C4370b6(h52, h52.d().W0())).a(h52, aVar);
    }

    @Override
    public final C7215fB a(H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        return new C6382aB(h53, c4798y, abstractC5308Hz, new C4370b6(h53, h53.d().a(b60)), jVar, c10523z10).a(h52, EW.d());
    }

    @Override
    public final int a(H5 h52) {
        return Math.max(d(h52), 1);
    }

    @Override
    public final void a(H5 h52, C5313Ib c5313Ib, C4798y c4798y, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(1);
        ex.a(191);
        ex.c(1, d(h52));
    }

    @Override
    public final void a(C4766w5 c4766w5, H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        new C7145eo(0, 0).a(c4766w5, h52, abstractC5308Hz, abstractC5308Hz2, rr, shortBuffer);
        new C5062Ds(0).a(c4766w5, h52, abstractC5308Hz, abstractC5308Hz2, rr, shortBuffer);
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return "ThrowNullCode";
    }

    @Override
    public final InterfaceC4424e3 a(H5 h52, C4724u1 c4724u1) {
        return new C4405d3(this, this, d(h52), Math.max(d(h52), 1));
    }
}
