package com.android.tools.r8.shaking;

import java.util.function.Consumer;

public abstract class E1 extends AbstractC11415s1 {
    public E1(D1 d12) {
        super(d12);
    }

    public final E1 a(E1 e12) {
        return (E1) ((E1) super.a((AbstractC11415s1) e12)).a(!((D1) e12.f57790a).f56392k, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((E1) obj).p();
            }
        });
    }

    @Override
    public final E1 c() {
        return this;
    }

    public final E1 p() {
        D1 d12 = (D1) this.f57790a;
        d12.f56392k = false;
        return (E1) m();
    }
}
