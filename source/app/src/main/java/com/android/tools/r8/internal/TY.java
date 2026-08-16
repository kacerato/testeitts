package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

public interface TY extends InterfaceC8367m6 {
    Set a(Object obj);

    default void a(C8200l6 c8200l6) {
        c8200l6.b(new C9266rX0(this));
    }

    void a(Iterable iterable, Object obj);

    Object a(Object obj, Object obj2);

    default void putAll(Map map) {
        ((IdentityHashMap) map).forEach(new C9266rX0(this));
    }

    default void a(Set set) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TY.this.a(obj);
            }
        });
    }
}
