package com.google.common.primitives;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import w2.H;

@f
@v2.c
public final class r {

    public static final Map<Class<?>, Class<?>> f67071a;

    public static final Map<Class<?>, Class<?>> f67072b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(16);
        a(linkedHashMap, linkedHashMap2, Boolean.TYPE, Boolean.class);
        a(linkedHashMap, linkedHashMap2, Byte.TYPE, Byte.class);
        a(linkedHashMap, linkedHashMap2, Character.TYPE, Character.class);
        a(linkedHashMap, linkedHashMap2, Double.TYPE, Double.class);
        a(linkedHashMap, linkedHashMap2, Float.TYPE, Float.class);
        a(linkedHashMap, linkedHashMap2, Integer.TYPE, Integer.class);
        a(linkedHashMap, linkedHashMap2, Long.TYPE, Long.class);
        a(linkedHashMap, linkedHashMap2, Short.TYPE, Short.class);
        a(linkedHashMap, linkedHashMap2, Void.TYPE, Void.class);
        f67071a = Collections.unmodifiableMap(linkedHashMap);
        f67072b = Collections.unmodifiableMap(linkedHashMap2);
    }

    public static void a(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static Set<Class<?>> b() {
        return f67071a.o();
    }

    public static Set<Class<?>> c() {
        return f67072b.o();
    }

    public static boolean d(Class<?> cls) {
        return f67072b.containsKey(H.E(cls));
    }

    public static <T> Class<T> e(Class<T> cls) {
        H.E(cls);
        Class<T> cls2 = (Class) f67072b.get(cls);
        return cls2 == null ? cls : cls2;
    }

    public static <T> Class<T> f(Class<T> cls) {
        H.E(cls);
        Class<T> cls2 = (Class) f67071a.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
