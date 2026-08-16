package com.android.tools.r8.internal;

import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class C8163ku {
    public static <K, V> Consumer<Map.Entry<K, V>> a(final BiConsumer<K, V> biConsumer) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                BiConsumer.this.accept(r2.getKey(), ((Map.Entry) obj).getValue());
            }
        };
    }
}
