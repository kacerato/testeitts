package com.android.tools.r8.shaking;

import java.util.function.Consumer;

public final class C11365p1 extends E1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11365p1(C11382q1 c11382q1) {
        super(new C11348o1(c11382q1));
        c11382q1.getClass();
    }

    @Override
    public final C11365p1 b() {
        return this;
    }

    @Override
    public final AbstractC11415s1 m() {
        return this;
    }

    public final C11365p1 q() {
        ((C11348o1) this.f57790a).f57577l = false;
        return this;
    }

    public final C11365p1 r() {
        ((C11348o1) this.f57790a).f57578m = false;
        return this;
    }

    @Override
    public final C11365p1 a(C11365p1 c11365p1) {
        return (C11365p1) ((C11365p1) ((C11365p1) a((E1) c11365p1)).a(!((C11348o1) c11365p1.f57790a).f57577l, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C11365p1) obj).q();
            }
        })).a(!((C11348o1) c11365p1.f57790a).f57578m, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C11365p1) obj).r();
            }
        });
    }
}
