package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public abstract class W9 implements InterfaceC5426Ka {

    public static final boolean f45317b = true;

    public boolean A() {
        return !(this instanceof G9);
    }

    public abstract int B();

    public int C() {
        if (f45317b || E()) {
            return B();
        }
        throw new AssertionError();
    }

    public C8103ka D() {
        return null;
    }

    public boolean E() {
        return !(this instanceof C9544t9);
    }

    public boolean F() {
        return false;
    }

    public boolean G() {
        return false;
    }

    public boolean H() {
        return this instanceof T9;
    }

    public boolean I() {
        return false;
    }

    public boolean J() {
        return this instanceof U9;
    }

    public boolean K() {
        return false;
    }

    public boolean L() {
        return false;
    }

    public boolean M() {
        return false;
    }

    public boolean N() {
        return false;
    }

    public boolean O() {
        return false;
    }

    public boolean P() {
        return false;
    }

    public boolean Q() {
        return false;
    }

    public boolean R() {
        return this instanceof M9;
    }

    public boolean S() {
        return this instanceof C6440ab;
    }

    public boolean T() {
        return false;
    }

    public boolean U() {
        return false;
    }

    public abstract int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10);

    public abstract H9 a(H9 h92, C4798y c4798y, O8 o82);

    public Z8 a() {
        return null;
    }

    public abstract void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex);

    public abstract void a(C6063Va c6063Va);

    public abstract void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb);

    public abstract void a(AbstractC9213rA abstractC9213rA);

    public C7710i9 b() {
        return null;
    }

    public C9544t9 c() {
        return null;
    }

    public C9711u9 d() {
        return null;
    }

    public A9 e() {
        return null;
    }

    public F9 f() {
        return null;
    }

    public G9 g() {
        return null;
    }

    public U9 h() {
        return null;
    }

    public V9 i() {
        return null;
    }

    public C7437ga j() {
        return null;
    }

    public C7604ha k() {
        return null;
    }

    public AbstractC7936ja l() {
        return null;
    }

    public C8103ka m() {
        return null;
    }

    public C8938pa n() {
        return null;
    }

    @Override
    public final boolean o() {
        return z();
    }

    public C10106wa p() {
        return null;
    }

    public C5541Ma q() {
        return null;
    }

    @Override
    public final W9 r() {
        return this;
    }

    @Override
    public final AbstractC5635Np s() {
        return null;
    }

    public C6120Wa t() {
        return null;
    }

    public String toString() {
        C6063Va c6063Va = new C6063Va();
        a(c6063Va);
        return c6063Va.toString();
    }

    public C9942vb u() {
        return null;
    }

    public C10109wb v() {
        return null;
    }

    public C10443yb w() {
        return null;
    }

    public InterfaceC5081Eb x() {
        return null;
    }

    public int y() {
        throw new C5417Jv0("Instruction must specify size");
    }

    public boolean z() {
        return this instanceof W8;
    }

    public void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
    }

    public final void a(final Consumer consumer, W9 w92) {
        a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return W9.a(Consumer.this, (W9) obj, obj2);
            }
        }, w92, (H9) null);
    }

    public static AbstractC6333Zs0 a(Consumer consumer, W9 w92, Object obj) {
        consumer.accept(w92);
        return C6276Ys0.f46097c;
    }

    public AbstractC6333Zs0 a(BiFunction biFunction, W9 w92, H9 h92) {
        boolean z10 = f45317b;
        if (!z10 && Q()) {
            throw new AssertionError();
        }
        if (w92 != null) {
            return (AbstractC6333Zs0) biFunction.apply(w92, h92);
        }
        if (!z10 && !(this instanceof C8103ka)) {
            throw new AssertionError();
        }
        return new C6276Ys0(h92);
    }
}
