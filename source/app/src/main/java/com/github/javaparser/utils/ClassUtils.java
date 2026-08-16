package com.github.javaparser.utils;

import java.util.HashMap;
import java.util.Map;

public class ClassUtils {
    private static final Map<Class<?>, Class<?>> primitiveWrapperMap;
    private static final Map<Class<?>, Class<?>> wrapperPrimitiveMap;

    static {
        HashMap hashMap = new HashMap();
        primitiveWrapperMap = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        Class<Void> cls = Void.TYPE;
        hashMap.put(cls, cls);
        wrapperPrimitiveMap = new HashMap();
        for (K k10 : hashMap.o()) {
            Class<?> cls2 = primitiveWrapperMap.get(k10);
            if (!k10.equals(cls2)) {
                wrapperPrimitiveMap.put(cls2, k10);
            }
        }
    }

    public static boolean isPrimitiveOrWrapper(final Class<?> type) {
        if (type == null) {
            return false;
        }
        return type.isPrimitive() || isPrimitiveWrapper(type);
    }

    public static boolean isPrimitiveWrapper(final Class<?> type) {
        return wrapperPrimitiveMap.containsKey(type);
    }
}
