package com.jme3.anim.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Primitives {
    private static final Map<Class<?>, Class<?>> PRIMITIVE_TO_WRAPPER_TYPE;

    static {
        HashMap hashMap = new HashMap(16);
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(Void.TYPE, Void.class);
        PRIMITIVE_TO_WRAPPER_TYPE = Collections.unmodifiableMap(hashMap);
    }

    private Primitives() {
    }

    public static <T> Class<T> wrap(Class<T> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("type is null");
        }
        Class<T> cls2 = (Class) PRIMITIVE_TO_WRAPPER_TYPE.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
