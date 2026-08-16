package com.android.tools.r8.internal;

import java.util.function.Supplier;

public final class C9587tR extends C7 {

    public final C7215fB f52601b;

    public C9587tR(C7215fB c7215fB) {
        this.f52601b = c7215fB;
    }

    @Override
    public final C6993dt a() {
        return (C6993dt) a(new Supplier() {
            @Override
            public final Object get() {
                return C9587tR.this.d();
            }
        });
    }

    public final C6993dt d() {
        return new C6993dt(this.f52601b, 2);
    }
}
