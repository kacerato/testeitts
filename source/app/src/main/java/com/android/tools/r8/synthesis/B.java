package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.D5;
import com.android.tools.r8.graph.M2;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class B implements A {

    public final ConcurrentHashMap f58043a = new ConcurrentHashMap();

    @Override
    public final void a(M2 m22, Collection collection) {
        final Set set = (Set) this.f58043a.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set newKeySet;
                newKeySet = ConcurrentHashMap.newKeySet();
                return newKeySet;
            }
        });
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((D5) obj).S());
            }
        });
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        this.f58043a.forEach(biConsumer);
    }

    @Override
    public final boolean isEmpty() {
        return this.f58043a.isEmpty();
    }
}
