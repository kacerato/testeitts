package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.M2;
import java.util.Collection;
import java.util.function.BiConsumer;

public interface A {
    void a(M2 m22, Collection collection);

    void forEach(BiConsumer biConsumer);

    boolean isEmpty();
}
