package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.IntFunction;

public abstract class SR {

    public static final boolean f44206a = true;

    public static Map a(Map map, IntFunction intFunction, BiFunction biFunction, InterfaceC7495gt0 interfaceC7495gt0, InterfaceC7495gt0 interfaceC7495gt02, InterfaceC7495gt0 interfaceC7495gt03) {
        final Map map2 = null;
        ArrayList arrayList = null;
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            Object apply = biFunction.apply(key, value);
            Object a10 = interfaceC7495gt0.a(key, value, apply);
            if (a10 != null) {
                Object a11 = interfaceC7495gt02.a(key, value, apply);
                if (a10 == key && a11 == value) {
                    if (map2 == null) {
                    }
                } else if (map2 == null) {
                    map2 = (Map) intFunction.apply(map.size());
                    Objects.requireNonNull(map2);
                    TU.a(map, new BiConsumer() {
                        @Override
                        public final void accept(Object obj, Object obj2) {
                            Map.this.put(obj, obj2);
                        }
                    }, key);
                    if (arrayList != null) {
                        if (!f44206a && arrayList.isEmpty()) {
                            throw new AssertionError();
                        }
                        map2.o().removeAll(arrayList);
                        arrayList = null;
                    }
                }
                Object obj = map2.get(a10);
                if (obj != null) {
                    a11 = interfaceC7495gt03.a(a10, a11, obj);
                }
                map2.put(a10, a11);
            } else if (map2 == null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(key);
            }
        }
        if (map2 != null) {
            if (!f44206a && arrayList != null) {
                throw new AssertionError();
            }
            int size = map.size();
            boolean z10 = TU.f44487a;
            if (map2.size() >= size) {
                return map2;
            }
            Map map3 = (Map) intFunction.apply(map2.size());
            map3.putAll(map2);
            return map3;
        }
        if (arrayList == null) {
            return map;
        }
        if (!f44206a && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        map.o().removeAll(arrayList);
        boolean z11 = TU.f44487a;
        Map map4 = (Map) intFunction.apply(map.size());
        map4.putAll(map);
        return map4;
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.J2 j22, Consumer consumer) {
        com.android.tools.r8.graph.J2 b10 = abstractC5308Hz.b(j22, (AbstractC5308Hz) null);
        b10.getClass();
        if ((b10 instanceof com.android.tools.r8.graph.M2) && b10.o0().P0()) {
            return;
        }
        consumer.accept(b10);
    }
}
