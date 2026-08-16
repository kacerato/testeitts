package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

public class C5000Cq implements Map {

    public final Map f39368b;

    public C5000Cq(Map map) {
        this.f39368b = map;
    }

    public final Object a(com.android.tools.r8.graph.F2 f22, Object obj) {
        return this.f39368b.put(f22, obj);
    }

    @Override
    public final void clear() {
        this.f39368b.clear();
    }

    @Override
    public final Object compute(Object obj, BiFunction biFunction) {
        return this.f39368b.compute((com.android.tools.r8.graph.F2) obj, biFunction);
    }

    @Override
    public final Object computeIfAbsent(Object obj, Function function) {
        return this.f39368b.computeIfAbsent((com.android.tools.r8.graph.F2) obj, function);
    }

    @Override
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        return this.f39368b.computeIfPresent((com.android.tools.r8.graph.F2) obj, biFunction);
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f39368b.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return this.f39368b.containsValue(obj);
    }

    @Override
    public final Set entrySet() {
        return this.f39368b.entrySet();
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        this.f39368b.forEach(biConsumer);
    }

    @Override
    public final Object get(Object obj) {
        return this.f39368b.get(obj);
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        return this.f39368b.getOrDefault(obj, obj2);
    }

    @Override
    public final boolean isEmpty() {
        return this.f39368b.isEmpty();
    }

    @Override
    public final Set o() {
        return this.f39368b.o();
    }

    @Override
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return this.f39368b.merge((com.android.tools.r8.graph.F2) obj, obj2, biFunction);
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        return this.f39368b.put((com.android.tools.r8.graph.F2) obj, obj2);
    }

    @Override
    public final void putAll(Map map) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5000Cq.this.a((com.android.tools.r8.graph.F2) obj, obj2);
            }
        });
    }

    @Override
    public final Object putIfAbsent(Object obj, Object obj2) {
        return this.f39368b.putIfAbsent((com.android.tools.r8.graph.F2) obj, obj2);
    }

    @Override
    public final boolean remove(Object obj, Object obj2) {
        return this.f39368b.remove(obj, obj2);
    }

    @Override
    public final Object replace(Object obj, Object obj2) {
        return this.f39368b.replace((com.android.tools.r8.graph.F2) obj, obj2);
    }

    @Override
    public final void replaceAll(BiFunction biFunction) {
        this.f39368b.replaceAll(biFunction);
    }

    @Override
    public final int size() {
        return this.f39368b.size();
    }

    @Override
    public final Collection values() {
        return this.f39368b.values();
    }

    public final Object a(com.android.tools.r8.graph.F2 f22, Function function) {
        return this.f39368b.computeIfAbsent(f22, function);
    }

    @Override
    public final Object remove(Object obj) {
        return this.f39368b.remove(obj);
    }

    public final void a(com.android.tools.r8.graph.F2 f22, BiFunction biFunction) {
        this.f39368b.compute(f22, biFunction);
    }

    @Override
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        return this.f39368b.replace((com.android.tools.r8.graph.F2) obj, obj2, obj3);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, BiFunction biFunction) {
        this.f39368b.compute(h52.x(), biFunction);
    }

    public final void a(C4516j1 c4516j1, com.android.tools.r8.graph.M2 m22, BiFunction biFunction) {
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        this.f39368b.merge(AbstractC9280rd.a(reference, reference), m22, biFunction);
    }
}
