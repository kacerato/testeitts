package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.YS;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.Reference;
import java.io.UTFDataFormatException;
import java.util.Collections;
import java.util.function.Consumer;
import java.util.function.Function;

public class C4554l1 extends AbstractC4744v2<C4460g1, C4554l1> {

    public static final C4554l1[] f37448j = new C4554l1[0];

    public final M2 f37449i;

    public C4554l1(M2 m22, M2 m23, L2 l22, boolean z10) {
        super(l22, m22);
        boolean z11;
        this.f37449i = m23;
        if (z10) {
            return;
        }
        l22.getClass();
        try {
            z11 = C4932Bl.D(L2.a(l22.f36561e, l22.f36562f));
        } catch (UTFDataFormatException unused) {
            z11 = false;
        }
        if (z11) {
            return;
        }
        throw new C5325If("Field name '" + l22.toString() + "' cannot be represented in dex format.");
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 3;
    }

    public final boolean a(C4554l1 c4554l1) {
        return this == c4554l1;
    }

    @Override
    public final boolean c(Object obj) {
        if (obj instanceof C4554l1) {
            C4554l1 c4554l1 = (C4554l1) obj;
            if (this.f38297f.equals(c4554l1.f38297f) && this.f37449i.equals(c4554l1.f37449i) && this.f38298g.equals(c4554l1.f38298g)) {
                return true;
            }
        }
        return false;
    }

    public M2 getType() {
        return this.f37449i;
    }

    @Override
    public final String i0() {
        String i02 = this.f38297f.i0();
        L2 l22 = this.f38298g;
        return i02 + "->" + ((Object) l22) + b3.s.f32937c + this.f37449i.i0();
    }

    @Override
    public String j0() {
        return this.f37449i.j0() + " " + this.f38297f.j0() + "." + this.f38298g.j0();
    }

    @Override
    public final int k0() {
        return (this.f38298g.hashCode() * 31) + (this.f37449i.hashCode() * 7) + this.f38297f.hashCode();
    }

    @Override
    public C4554l1 l0() {
        return this;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4554l1.a(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final boolean p0() {
        return true;
    }

    public final String toString() {
        return "Field " + ((Object) this.f37449i) + " " + ((Object) this.f38297f) + "." + ((Object) this.f38298g);
    }

    @Override
    public final Iterable u0() {
        return Collections.singleton(this.f37449i);
    }

    public FieldReference v0() {
        return Reference.field(Reference.classFromDescriptor(this.f38297f.V0()), this.f38298g.toString(), Reference.typeFromDescriptor(this.f37449i.V0()));
    }

    public final String w0() {
        return ((Object) this.f38297f) + "." + ((Object) this.f38298g);
    }

    @Override
    public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C4554l1) interfaceC5580Mq0);
    }

    @Override
    public final int b(J2 j22) {
        if (j22.p0()) {
            return compareTo(j22.l0());
        }
        if (j22.r0()) {
            int compareTo = s0().compareTo(j22.S());
            if (compareTo != 0) {
                return compareTo;
            }
            return -1;
        }
        int compareTo2 = s0().compareTo(j22.o0());
        if (compareTo2 != 0) {
            return compareTo2;
        }
        return 1;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4554l1) obj).s0();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4554l1) obj).t0();
            }
        }).e(new Le());
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C4554l1) ys);
    }

    @Override
    public final C4460g1 b(E0 e02) {
        if (e02 != null) {
            return e02.f36251k.f37700b.a(this);
        }
        return null;
    }

    @Override
    public C4554l1 a(J2 j22, C4724u1 c4724u1) {
        return c4724u1.a(j22.S(), this.f37449i, this.f38298g);
    }

    @Override
    public final G0 a(E0 e02) {
        if (e02 != null) {
            return e02.a(this);
        }
        return null;
    }

    @Override
    public final Object a(Function function, Function function2) {
        return function.apply(this);
    }

    @Override
    public final Object a(Function function, Function function2, Function function3) {
        return function2.apply(this);
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        consumer2.accept(this);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        if (m10.a(this)) {
            this.f38297f.a(c4798y, m10);
            this.f37449i.a(c4798y, m10);
            L2 a10 = c4798y.s().a(this);
            a10.getClass();
            m10.a(a10);
        }
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        abstractC9213rA.getClass();
        m().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final int a(C4766w5 c4766w5) {
        return C4766w5.a(this, c4766w5.f38342i);
    }
}
