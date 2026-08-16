package com.android.tools.r8.graph;

import java.util.function.Consumer;

public interface D4 extends I4 {
    @Override
    default void a(Consumer consumer, Consumer consumer2) {
        consumer.accept(this);
    }

    C4516j1 d();

    @Override
    default D4 e() {
        return this;
    }

    @Override
    default boolean f() {
        return true;
    }

    E0 getHolder();

    A2 getReference();

    H0 l();
}
