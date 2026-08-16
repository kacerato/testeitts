package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Set;
import java.util.function.BiConsumer;

public final class C8534n6 extends C8200l6 implements TY, InterfaceC8701o6 {

    public static final boolean f50506f = true;

    public final IdentityHashMap f50507e;

    public C8534n6(IdentityHashMap identityHashMap, IdentityHashMap identityHashMap2, IdentityHashMap identityHashMap3) {
        super(identityHashMap, identityHashMap2);
        this.f50507e = identityHashMap3;
    }

    public static C8534n6 a() {
        return new C8534n6(new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap());
    }

    @Override
    public final Object b(Object obj) {
        return this.f49890b.get(obj);
    }

    @Override
    public final Object c(Object obj) {
        Set d10 = d(obj);
        if (d10.isEmpty()) {
            return null;
        }
        if (d10.size() == 1) {
            return d10.iterator().next();
        }
        if (f50506f || this.f50507e.containsKey(obj)) {
            return this.f50507e.get(obj);
        }
        throw new AssertionError();
    }

    @Override
    public final Object f(Object obj) {
        Object f10 = super.f(obj);
        if (this.f50507e.containsKey(f10) && (d(f10).size() <= 1 || c(f10) == obj)) {
            this.f50507e.remove(f10);
        }
        return f10;
    }

    public final void a(final InterfaceC7328ft0 interfaceC7328ft0) {
        a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8534n6.this.a(interfaceC7328ft0, (Set) obj, obj2);
            }
        });
    }

    public final void a(InterfaceC7328ft0 interfaceC7328ft0, Set set, Object obj) {
        interfaceC7328ft0.a(set, obj, this.f50507e.containsKey(obj) ? c(obj) : null);
    }

    public final void a(C8534n6 c8534n6) {
        c8534n6.a(new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                C8534n6.this.a((Set) obj, obj2, obj3);
            }
        });
    }

    public final void a(Set set, Object obj, Object obj2) {
        a((Iterable) set, obj);
        if (obj2 != null) {
            this.f50507e.put(obj, obj2);
        }
    }

    @Override
    public final Set a(Object obj) {
        Set a10 = super.a(obj);
        this.f50507e.remove(obj);
        return a10;
    }
}
