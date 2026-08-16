package com.android.tools.r8.graph;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.KV;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC4479h1<D extends AbstractC4479h1<D, R>, R extends AbstractC4744v2<D, R>> extends AbstractC4365b1 {

    public final boolean f37260d;

    public com.android.tools.r8.androidapi.f f37261e;

    public final AbstractC4744v2 f37262f;

    public AbstractC4479h1(AbstractC4744v2 abstractC4744v2, C4723u0 c4723u0, boolean z10, com.android.tools.r8.androidapi.f fVar) {
        super(c4723u0);
        this.f37262f = abstractC4744v2;
        this.f37260d = z10;
        this.f37261e = fVar;
    }

    public abstract H3.d A0();

    public M2 B0() {
        return getReference().s0();
    }

    public L2 C0() {
        return getReference().t0();
    }

    public abstract KV D0();

    @Override
    public R getReference() {
        return (R) this.f37262f;
    }

    public boolean F0() {
        return this.f37260d;
    }

    public final boolean G0() {
        return getAccessFlags().h();
    }

    public final boolean H0() {
        return getAccessFlags().l();
    }

    public abstract Object a(Function function, Function function2);

    public final void a(final Consumer consumer, final Consumer consumer2) {
        a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC4479h1.a(Consumer.this, (C4460g1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC4479h1.a(Consumer.this, (C4516j1) obj);
            }
        });
    }

    public abstract com.android.tools.r8.kotlin.Q c0();

    @Override
    public final AbstractC4479h1 n0() {
        return this;
    }

    public abstract void t();

    @Override
    public final boolean u0() {
        return true;
    }

    @Override
    public boolean x0() {
        return w0();
    }

    public abstract void y0();

    public abstract com.android.tools.r8.androidapi.f z0();

    public static Object a(Consumer consumer, C4460g1 c4460g1) {
        consumer.accept(c4460g1);
        return null;
    }

    public static Object a(Consumer consumer, C4516j1 c4516j1) {
        consumer.accept(c4516j1);
        return null;
    }
}
