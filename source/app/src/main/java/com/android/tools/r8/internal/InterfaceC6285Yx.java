package com.android.tools.r8.internal;

import java.util.function.Consumer;

public interface InterfaceC6285Yx<T> {
    default void a(final ZH zh2) {
        final IH ih2 = new IH();
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ZH.this.a(ih2.b(), obj);
            }
        });
    }

    void forEach(Consumer<T> consumer);
}
