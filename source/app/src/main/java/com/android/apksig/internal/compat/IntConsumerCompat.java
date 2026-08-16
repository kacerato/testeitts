package com.android.apksig.internal.compat;

import com.android.apksig.internal.compat.IntConsumerCompat;
import java.util.Objects;

@FunctionalInterface
public interface IntConsumerCompat {
    default void lambda$andThen$0(IntConsumerCompat intConsumerCompat, int i10) {
        accept(i10);
        intConsumerCompat.accept(i10);
    }

    void accept(int i10);

    default IntConsumerCompat andThen(final IntConsumerCompat intConsumerCompat) {
        Objects.requireNonNull(intConsumerCompat);
        return new IntConsumerCompat() {
            @Override
            public final void accept(int i10) {
                IntConsumerCompat.this.lambda$andThen$0(intConsumerCompat, i10);
            }
        };
    }
}
