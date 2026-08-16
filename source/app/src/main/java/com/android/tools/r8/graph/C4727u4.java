package com.android.tools.r8.graph;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C6063Va;
import com.android.tools.r8.internal.C6072Vd;
import com.android.tools.r8.internal.C6501av0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.SG;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.ArrayList;
import java.util.Iterator;

public final class C4727u4 extends AbstractC4497i0 {

    public static final boolean f38271i = true;

    public final Origin f38272e;

    public C4482h4 f38273f;

    public G f38274g;

    public C4595n4 f38275h;

    public C4727u4(Origin origin, C4595n4 c4595n4, C4482h4 c4482h4) {
        this.f38272e = origin;
        this.f38275h = c4595n4;
        this.f38273f = c4482h4;
        c4595n4.f37510c.add(this);
    }

    @Override
    public final void D0() {
        if (f38271i) {
            return;
        }
        if (this.f38275h != null || this.f38273f != null) {
            throw new AssertionError();
        }
    }

    public final void E0() {
        C4595n4 c4595n4 = this.f38275h;
        C4482h4 c4482h4 = this.f38273f;
        boolean z10 = f38271i;
        if (!z10 && c4595n4 == null) {
            throw new AssertionError();
        }
        if (!z10 && c4482h4 == null) {
            throw new AssertionError();
        }
        C8570nJ c8570nJ = c4482h4.f37267a;
        boolean z11 = c8570nJ.f50599F1.f50843S0;
        if (!z11) {
            z11 = c8570nJ.f50697l instanceof ClassFileConsumer;
        }
        int i10 = z11 ? 8 : 4;
        C4652q4 c4652q4 = new C4652q4(i10);
        try {
            C4633p4 c4633p4 = new C4633p4(c4595n4.f37509b, new C4670r4(c4595n4), c4482h4, false, this.f38272e, c4652q4);
            byte[] bArr = c4595n4.f37508a;
            int length = bArr.length;
            new C6072Vd(bArr, true).a(c4633p4, new com.android.tools.r8.internal.K4[0], i10);
        } catch (C4689s4 unused) {
            ArrayList arrayList = c4595n4.f37510c;
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                AbstractC4497i0 abstractC4497i0 = (AbstractC4497i0) obj;
                abstractC4497i0.n0().f38274g = null;
                abstractC4497i0.n0().f38275h = c4595n4;
                abstractC4497i0.n0().f38273f = c4482h4;
            }
            try {
                C4633p4 c4633p42 = new C4633p4(c4595n4.f37509b, new C4670r4(c4595n4), this.f38273f, true, this.f38272e, c4652q4);
                byte[] bArr2 = c4595n4.f37508a;
                int length2 = bArr2.length;
                new C6072Vd(bArr2, true).a(c4633p42, new com.android.tools.r8.internal.K4[0], c4652q4.f37671a);
            } catch (C4689s4 e10) {
                throw new C5417Jv0(e10);
            }
        } catch (Exception e11) {
            throw new C5325If(this.f38272e, "Could not parse code", e11);
        }
        if (f38271i) {
            return;
        }
        E0 e02 = c4595n4.f37509b;
        Iterator<C4516j1> it = e02.D1().iterator();
        while (it.hasNext()) {
            AbstractC4497i0 Q02 = it.next().Q0();
            if (!f38271i && Q02 != null) {
                Q02.D0();
            }
        }
        Iterator<C4516j1> it2 = e02.H0().iterator();
        while (it2.hasNext()) {
            AbstractC4497i0 Q03 = it2.next().Q0();
            if (!f38271i && Q03 != null) {
                Q03.D0();
            }
        }
    }

    @Override
    public final G V() {
        if (this.f38274g == null) {
            AbstractC8333lv.a(this.f38272e, Position.UNKNOWN, new Runnable() {
                @Override
                public final void run() {
                    C4727u4.this.E0();
                }
            });
        }
        if (f38271i || this.f38274g != null) {
            return this.f38274g;
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC4497i0 a(A2 a22, boolean z10, A2 a23, boolean z11, C4724u1 c4724u1) {
        return V().a(a22, z10, a23, z11, c4724u1);
    }

    @Override
    public final boolean c(Object obj) {
        throw new C6501av0();
    }

    @Override
    public final int k(int i10) {
        return V().k(i10);
    }

    @Override
    public final int k0() {
        throw new C6501av0();
    }

    @Override
    public final P l0() {
        return V();
    }

    @Override
    public final C4727u4 n0() {
        return this;
    }

    @Override
    public final int q0() {
        return V().q0();
    }

    @Override
    public final boolean s0() {
        return V().s0();
    }

    @Override
    public final boolean t0() {
        return true;
    }

    @Override
    public final String toString() {
        G g10 = this.f38274g;
        return g10 != null ? g10.toString() : "<lazy-code>";
    }

    @Override
    public final boolean u0() {
        return true;
    }

    @Override
    public final boolean x0() {
        return V().x0();
    }

    @Override
    public final C7215fB a(H5 h52, C4798y c4798y, EW.a aVar) {
        return V().a(h52, c4798y, aVar);
    }

    @Override
    public final C7215fB a(H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        return V().a(h52, h53, c4798y, abstractC5308Hz, c10523z10, b60, jVar);
    }

    @Override
    public final void a(H5 h52, AbstractC4446f6 abstractC4446f6) {
        V().a(h52, abstractC4446f6);
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        V().a(c4421e0, c5563Mi);
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        G V10 = V();
        V10.getClass();
        return new C6063Va(V10, c4516j1, c9970vk0).toString();
    }

    @Override
    public final SG a(C4798y c4798y, C4516j1 c4516j1) {
        return V().a(c4798y, c4516j1);
    }
}
