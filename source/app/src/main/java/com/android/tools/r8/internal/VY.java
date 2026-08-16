package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import java.util.function.Consumer;

public final class VY extends AbstractC10005vw {

    public static final boolean f45078e = true;

    public int f45080b;

    public F1 f45079a = C10504yv0.f54195b;

    public int f45081c = 0;

    public AbstractC10330xt f45082d = AbstractC10330xt.m();

    @Override
    public final KV a() {
        return this;
    }

    @Override
    public final VY b() {
        return this;
    }

    @Override
    public final boolean e() {
        return (this.f45080b & 1) != 0;
    }

    @Override
    public final F1 f() {
        return this.f45079a;
    }

    @Override
    public final AbstractC10330xt g() {
        return this.f45082d;
    }

    @Override
    public final int h() {
        return this.f45081c;
    }

    @Override
    public final boolean i() {
        return (this.f45080b & 2) != 0;
    }

    @Override
    public final boolean j() {
        return (this.f45080b & 4) != 0;
    }

    public final void k() {
        this.f45082d = AbstractC10330xt.m();
    }

    public final void a(boolean z10, Consumer consumer, Consumer consumer2) {
        if (z10) {
            consumer.accept(this);
        } else {
            consumer2.accept(this);
        }
    }

    public final VY a(F1 f12, C4460g1 c4460g1) {
        if (!f45078e) {
            f12.getClass();
            if ((f12 instanceof C5283Hm0) && !c4460g1.getType().Q0()) {
                throw new AssertionError();
            }
        }
        this.f45079a = f12;
        return this;
    }
}
