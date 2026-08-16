package com.android.tools.r8.internal;

import java.util.function.IntConsumer;

public abstract class MH {
    public static void a(int i10) {
    }

    public static IntConsumer a() {
        return new IntConsumer() {
            @Override
            public final void accept(int i10) {
                MH.a(i10);
            }
        };
    }
}
