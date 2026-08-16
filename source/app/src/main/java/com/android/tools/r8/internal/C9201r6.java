package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;

public final class C9201r6 implements UY, Map {

    public final C7045eA f51964b = new C7045eA(16);

    @Override
    public final void a(final BiConsumer biConsumer) {
        this.f51964b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.accept(Collections.singleton(obj), obj2);
            }
        });
    }

    @Override
    public final Object b(Object obj) {
        return this.f51964b.get(obj);
    }

    @Override
    public final Object c(Object obj) {
        return ((C6379aA) this.f51964b.f()).get(obj);
    }

    @Override
    public final void clear() {
        this.f51964b.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f51964b.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return this.f51964b.containsValue(obj);
    }

    @Override
    public final Set d(Object obj) {
        return this.f51964b.containsValue(obj) ? Collections.singleton(((C6379aA) this.f51964b.f()).get(obj)) : Collections.EMPTY_SET;
    }

    @Override
    public final Map e() {
        return this.f51964b;
    }

    @Override
    public final Set entrySet() {
        C7045eA c7045eA = this.f51964b;
        c7045eA.getClass();
        return new C8761oV(c7045eA);
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        this.f51964b.forEach(biConsumer);
    }

    @Override
    public final Object get(Object obj) {
        return this.f51964b.get(obj);
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = this.f51964b.get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override
    public final boolean isEmpty() {
        return this.f51964b.isEmpty();
    }

    @Override
    public final Set keySet() {
        C7045eA c7045eA = this.f51964b;
        c7045eA.getClass();
        return new C6879dA(c7045eA);
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        return this.f51964b.a(obj, obj2, true);
    }

    @Override
    public final void putAll(Map map) {
        this.f51964b.putAll(map);
    }

    @Override
    public final Object remove(Object obj) {
        return this.f51964b.remove(obj);
    }

    @Override
    public final int size() {
        return this.f51964b.f47620f;
    }

    @Override
    public final Collection values() {
        return ((C6379aA) this.f51964b.f()).o();
    }

    public final void a(C9201r6 c9201r6) {
        c9201r6.f51964b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9201r6.this.put(obj, obj2);
            }
        });
    }

    @Override
    public final Set mo743values() {
        return ((C6379aA) this.f51964b.f()).o();
    }
}
