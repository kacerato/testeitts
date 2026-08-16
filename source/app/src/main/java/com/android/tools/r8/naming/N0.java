package com.android.tools.r8.naming;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC10280xc0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC9112qc0;
import com.android.tools.r8.internal.AbstractC9617te;
import com.android.tools.r8.internal.C10113wc0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7549hB;
import com.android.tools.r8.internal.C9946vc0;
import com.android.tools.r8.internal.InterfaceC10118we;
import com.android.tools.r8.internal.OJ;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;

public final class N0 extends AbstractC9617te {

    public static final boolean f55712f = true;

    public final C9946vc0 f55713e;

    public N0(C4798y c4798y) {
        super(c4798y);
        this.f55713e = c4798y.m() ? new C9946vc0() : null;
    }

    @Override
    public final String a() {
        return "RecordInvokeDynamicInvokeCustomRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        boolean z10;
        OJ oj2;
        C7549hB p10 = c7215fB.p();
        boolean z11 = false;
        boolean z12 = false;
        while (p10.hasNext()) {
            OJ b02 = p10.next().b0();
            if (b02 != null) {
                H5 j10 = c7215fB.j();
                if (AbstractC10280xc0.a(b02.f42851l, this.f52646a, j10)) {
                    C4798y c4798y = this.f52646a;
                    if (!AbstractC10280xc0.f53783a && !AbstractC10280xc0.a(b02.f42851l, c4798y, j10)) {
                        throw new AssertionError();
                    }
                    C10113wc0 a10 = AbstractC10280xc0.a(b02.f42851l, c4798y);
                    AbstractC9112qc0 a11 = AbstractC9112qc0.a(a10.f53531c, a10.f53532d);
                    com.android.tools.r8.graph.M2 type = a10.f53533e.getType();
                    C4798y c4798y2 = this.f52646a;
                    com.android.tools.r8.graph.L2 a12 = a11.a(type, c4798y2, c4798y2.s());
                    C9946vc0 c9946vc0 = this.f55713e;
                    AbstractC5308Hz v10 = this.f52646a.v();
                    c9946vc0.getClass();
                    ArrayList arrayList = new ArrayList();
                    C4554l1[] c4554l1Arr = a10.f53532d;
                    int length = c4554l1Arr.length;
                    for (int i10 = z11 ? 1 : 0; i10 < length; i10++) {
                        C4554l1 c4554l1 = c4554l1Arr[i10];
                        if (a10.f53533e.f36251k.f37700b.b(v10.d(AbstractC5308Hz.g(), c4554l1)) != null) {
                            arrayList.add(c4554l1);
                        }
                    }
                    int size = arrayList.size();
                    C4554l1[] c4554l1Arr2 = new C4554l1[size];
                    for (int i11 = z11 ? 1 : 0; i11 < arrayList.size(); i11++) {
                        c4554l1Arr2[i11] = (C4554l1) arrayList.get(i11);
                    }
                    com.android.tools.r8.graph.L2 l22 = a10.f53529a;
                    com.android.tools.r8.graph.I2 i22 = a10.f53530b;
                    com.android.tools.r8.graph.M2 m22 = a10.f53534f;
                    C4724u1 b10 = this.f52646a.b();
                    com.android.tools.r8.graph.C2 a13 = b10.a(com.android.tools.r8.graph.B2.f36151g, b10.f38112n6.f37287a, z11, (com.android.tools.r8.graph.A2) null);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new R2.l(m22));
                    arrayList2.add(new R2.k(a12));
                    int i12 = z11 ? 1 : 0;
                    while (i12 < size) {
                        C4554l1 c4554l12 = c4554l1Arr2[i12];
                        arrayList2.add(new com.android.tools.r8.graph.X2(b10.a(com.android.tools.r8.graph.B2.f36150f, (AbstractC4744v2) b10.a(m22, c4554l12.f37449i, c4554l12.f38298g), false, (com.android.tools.r8.graph.A2) null)));
                        i12++;
                        z11 = false;
                        m22 = m22;
                        size = size;
                    }
                    z10 = z11;
                    com.android.tools.r8.graph.D0 d02 = new com.android.tools.r8.graph.D0(l22, i22, a13, arrayList2);
                    com.android.tools.r8.graph.M2 o02 = d02.f36213f.o0();
                    boolean z13 = f55712f;
                    if (!z13 && !o02.F0() && !o02.L0() && !o02.a(b10.f38052g2)) {
                        throw new AssertionError();
                    }
                    if (!z13 && !b02.d().u().equals(o02.b(this.f52646a))) {
                        throw new AssertionError();
                    }
                    oj2 = new OJ(d02, b02.d(), b02.f54321f);
                } else {
                    z10 = z11 ? 1 : 0;
                    oj2 = b02;
                }
                if (oj2 != b02) {
                    p10.a(oj2, (C10696a) null);
                    z12 = true;
                }
            } else {
                z10 = z11 ? 1 : 0;
            }
            z11 = z10;
        }
        return z12 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f55713e != null && c7215fB.j().getHolder().x1() && c7215fB.f47902i.a(32);
    }
}
