package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AH;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10371y60;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C9374s8;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.InterfaceC5426Ka;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.SG;
import com.android.tools.r8.internal.WS;
import java.util.function.Consumer;

public abstract class AbstractC4497i0 extends E {

    public static final boolean f37284d = true;

    public final boolean A0() {
        return o0() != null;
    }

    public boolean B0() {
        return this instanceof C4553l0;
    }

    public J0 C() {
        return null;
    }

    public boolean C0() {
        return this instanceof C4553l0;
    }

    public void D0() {
    }

    public C4351a6 Q() {
        return null;
    }

    public G V() {
        throw new C5417Jv0(getClass().getCanonicalName() + ".asCfCode()");
    }

    public abstract C7215fB a(H5 h52, C4798y c4798y, EW.a aVar);

    public C9374s8 a(InterfaceC5426Ka interfaceC5426Ka) {
        return null;
    }

    public abstract String a(C4516j1 c4516j1, C9970vk0 c9970vk0);

    public abstract void a(H5 h52, AbstractC4446f6 abstractC4446f6);

    public abstract void a(C4421e0 c4421e0, C5563Mi c5563Mi);

    public int k(int i10) {
        throw new C5417Jv0(getClass().getName());
    }

    public P l0() {
        throw new C5417Jv0(getClass().getCanonicalName() + ".asCfWritableCode()");
    }

    public InterfaceC4443f3 m0() {
        throw new C5417Jv0(getClass().getCanonicalName() + ".asDexWritableCode()");
    }

    public C4727u4 n0() {
        throw new C5417Jv0(getClass().getCanonicalName() + ".asLazyCfCode()");
    }

    public WS o0() {
        return null;
    }

    public void p0() {
    }

    public abstract int q0();

    public boolean r0() {
        return this instanceof J;
    }

    public boolean s0() {
        return false;
    }

    public boolean t0() {
        return false;
    }

    public abstract String toString();

    public boolean u0() {
        return this instanceof C4553l0;
    }

    public boolean v0() {
        return false;
    }

    public boolean w0() {
        return this instanceof C4553l0;
    }

    public abstract boolean x0();

    public boolean y0() {
        return false;
    }

    public boolean z0() {
        return false;
    }

    public void a(A2 a22, boolean z10, Consumer consumer) {
    }

    public C7215fB a(H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        throw new C5417Jv0("Unexpected attempt to build IR graph for inlining from: " + getClass().getCanonicalName());
    }

    public SG a(C4798y c4798y, C4516j1 c4516j1) {
        throw new C5417Jv0();
    }

    @Override
    public void a(com.android.tools.r8.dex.X x10) {
        throw new C5417Jv0();
    }

    public AbstractC4497i0 a(A2 a22, boolean z10, A2 a23, boolean z11, C4724u1 c4724u1) {
        throw new C5417Jv0();
    }

    public static B60 a(B60 b60, B60 b602, boolean z10) {
        InterfaceC5580Mq0 interfaceC5580Mq0;
        B60 h10 = b602.h();
        boolean z11 = f37284d;
        if (!z11 && h10.f38811f != z10) {
            throw new AssertionError();
        }
        if (!z10) {
            if (z11 || !h10.p()) {
                return b602.a(b60);
            }
            throw new AssertionError();
        }
        if (!h10.p() && !h10.f38810e) {
            return b602.a(h10, b60);
        }
        b60.getClass();
        boolean z12 = b60 instanceof C10371y60;
        if (z12 && h10.p()) {
            AH ah2 = b60.a().f53940h;
            int f10 = h10.f();
            B60 b603 = null;
            for (int i10 = 0; i10 <= f10; i10++) {
                int i11 = 0;
                while (true) {
                    int[] iArr = ah2.f38588b;
                    if (i11 >= iArr.length) {
                        interfaceC5580Mq0 = null;
                        break;
                    }
                    if (iArr[i11] == i10) {
                        interfaceC5580Mq0 = (InterfaceC5580Mq0) ah2.f38589c.get(i11);
                        break;
                    }
                    i11++;
                }
                B60 b604 = (B60) interfaceC5580Mq0;
                if (b604 != null) {
                    b603 = b604;
                }
            }
            if (!f37284d && b603 == null) {
                throw new AssertionError();
            }
            if (b60.k()) {
                b603 = b603.a(b60.f38809d);
            }
            return b602.k() ? b602.a(h10, b603) : b603;
        }
        if (!z11 && b60.p()) {
            throw new AssertionError();
        }
        B60.a a10 = h10.b().a(b60.f38808c);
        if (b60.k()) {
            a10.f38814c = b60.f38809d;
        }
        if (h10.p()) {
            if (!z11 && z12) {
                throw new AssertionError();
            }
            if (!z11 && !b60.f38811f) {
                throw new AssertionError();
            }
            if (!z11 && b60.f() != 0) {
                throw new AssertionError();
            }
        } else {
            a10.a(h10.f());
        }
        if (b60.f38810e) {
            a10.f38815d = true;
        }
        return b602.a(h10, a10.a());
    }

    public AbstractC5308Hz a(C4798y c4798y) {
        return c4798y.f38414g;
    }
}
