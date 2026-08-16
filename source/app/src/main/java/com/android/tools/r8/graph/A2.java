package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.YS;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import java.io.UTFDataFormatException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Consumer;
import java.util.function.Function;

public class A2 extends AbstractC4744v2<C4516j1, A2> {

    public final I2 f36127i;

    public A2(M2 m22, I2 i22, L2 l22, boolean z10) {
        super(l22, m22);
        boolean z11;
        this.f36127i = i22;
        if (z10) {
            return;
        }
        l22.getClass();
        try {
            z11 = C4932Bl.F(L2.a(l22.f36561e, l22.f36562f));
        } catch (UTFDataFormatException unused) {
            z11 = false;
        }
        if (z11) {
            return;
        }
        throw new C5325If("Method name '" + ((Object) l22) + "' in class '" + m22.j0() + "' cannot be represented in dex format.");
    }

    public String A0() {
        return ((Object) this.f38297f) + "." + ((Object) this.f38298g);
    }

    public String B0() {
        return a(false, true);
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 4;
    }

    public final boolean a(A2 a22) {
        return this == a22;
    }

    public final void c(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        L2 a10 = c4798y.s().a(this);
        a10.getClass();
        m10.a(a10);
    }

    @Override
    public String i0() {
        String i02 = this.f38297f.i0();
        L2 l22 = this.f38298g;
        I2 i22 = this.f36127i;
        i22.getClass();
        return i02 + "->" + ((Object) l22) + i22.a(AbstractC10992r0.a());
    }

    @Override
    public String j0() {
        return a(true, true);
    }

    public M2 k(int i10) {
        return this.f36127i.f36441f.f36675b[i10];
    }

    @Override
    public final int k0() {
        return (this.f38298g.hashCode() * 31) + (this.f36127i.hashCode() * 29) + (this.f38297f.hashCode() * 7);
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                A2.a(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final A2 n0() {
        return this;
    }

    @Override
    public final boolean r0() {
        return true;
    }

    public String toString() {
        return j0();
    }

    @Override
    public Iterable<M2> u0() {
        I2 i22 = this.f36127i;
        return AbstractC6114Vx.b(Collections.singleton(i22.f36440e), i22.f36441f);
    }

    public MethodReference v0() {
        ArrayList arrayList = new ArrayList();
        for (M2 m22 : this.f36127i.f36441f.f36675b) {
            arrayList.add(Reference.typeFromDescriptor(m22.V0()));
        }
        String V02 = this.f36127i.f36440e.V0();
        return Reference.method(Reference.classFromDescriptor(this.f38297f.V0()), this.f38298g.toString(), arrayList, V02.equals("V") ? null : Reference.typeFromDescriptor(V02));
    }

    public int w0() {
        return this.f36127i.f36441f.size();
    }

    public O2 x0() {
        return this.f36127i.f36441f;
    }

    public I2 y0() {
        return this.f36127i;
    }

    public M2 z0() {
        return this.f36127i.f36440e;
    }

    @Override
    public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (A2) interfaceC5580Mq0);
    }

    @Override
    public final int b(J2 j22) {
        if (j22.r0()) {
            return compareTo(j22.n0());
        }
        int compareTo = s0().compareTo(j22.S());
        if (compareTo != 0) {
            return compareTo;
        }
        return 1;
    }

    @Override
    public final boolean c(Object obj) {
        if (obj instanceof A2) {
            A2 a22 = (A2) obj;
            if (this.f38297f.equals(a22.f38297f) && this.f38298g.equals(a22.f38298g) && this.f36127i.equals(a22.f36127i)) {
                return true;
            }
        }
        return false;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((A2) obj).s0();
            }
        }).e(new C4503i6()).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                I2 i22;
                i22 = ((A2) obj).f36127i;
                return i22;
            }
        });
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        abstractC9213rA.getClass();
        m().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public final boolean b(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        if (!m10.a(this)) {
            return false;
        }
        this.f38297f.a(c4798y, m10);
        I2 i22 = this.f36127i;
        i22.getClass();
        if (!m10.a(i22)) {
            return true;
        }
        i22.f36440e.a(c4798y, m10);
        i22.f36441f.a(c4798y, m10);
        return true;
    }

    public final boolean c(A2 a22) {
        return a(a22) || a(a22.y0(), a22.t0());
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (A2) ys);
    }

    @Override
    public final C4516j1 b(E0 e02) {
        AbstractC4592n1 b10;
        if (e02 == null) {
            return null;
        }
        if (p0()) {
            b10 = e02.f36251k.f37700b.a((C4554l1) null);
        } else {
            b10 = e02.b(n0());
        }
        return (C4516j1) b10;
    }

    public final M2 a(int i10, boolean z10) {
        if (z10) {
            return k(i10);
        }
        if (i10 == 0) {
            return s0();
        }
        return k(i10 - 1);
    }

    public final boolean b(C4724u1 c4724u1) {
        c4724u1.getClass();
        return this.f38298g == c4724u1.f38067i1;
    }

    public final int a(boolean z10) {
        return C8704o7.a(!z10) + w0();
    }

    @Override
    public A2 a(J2 j22, C4724u1 c4724u1) {
        return c4724u1.a(j22.S(), this.f36127i, this.f38298g);
    }

    @Override
    public final Object a(Function function, Function function2) {
        return function2.apply(this);
    }

    @Override
    public final Object a(Function function, Function function2, Function function3) {
        return function3.apply(this);
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        consumer3.accept(this);
    }

    @Override
    public final G0 a(E0 e02) {
        if (e02 != null) {
            return e02.a(this);
        }
        return null;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        if (b(c4798y, m10)) {
            c(c4798y, m10);
        }
    }

    public final boolean a(I2 i22, L2 l22) {
        return this.f36127i.a(i22) && this.f38298g.g(l22);
    }

    public boolean a(C4516j1 c4516j1) {
        return c(c4516j1.getReference());
    }

    public final String a(boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        if (z11) {
            sb2.append(z0().j0());
            sb2.append(" ");
        }
        if (z10) {
            sb2.append(this.f38297f.j0());
            sb2.append(".");
        }
        sb2.append((Object) this.f38298g);
        sb2.append("(");
        for (int i10 = 0; i10 < w0(); i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append(this.f36127i.f36441f.f36675b[i10].j0());
        }
        sb2.append(")");
        return sb2.toString();
    }

    @Override
    public final int a(C4766w5 c4766w5) {
        return C4766w5.a(this, c4766w5.f38341h);
    }
}
