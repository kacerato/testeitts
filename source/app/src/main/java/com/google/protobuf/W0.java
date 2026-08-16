package com.google.protobuf;

import com.google.protobuf.R0;
import java.util.Map;

@B
public class W0 implements U0 {
    public static <K, V> int a(int fieldNumber, Object mapField, Object defaultEntry) {
        T0 t02 = (T0) mapField;
        R0 r02 = (R0) defaultEntry;
        int i10 = 0;
        if (t02.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : t02.entrySet()) {
            i10 += r02.a(fieldNumber, entry.getKey(), entry.getValue());
        }
        return i10;
    }

    public static <K, V> T0<K, V> j(Object destMapField, Object srcMapField) {
        T0<K, V> t02 = (T0) destMapField;
        T0<K, V> t03 = (T0) srcMapField;
        if (!t03.isEmpty()) {
            if (!t02.l()) {
                t02 = t02.o();
            }
            t02.n(t03);
        }
        return t02;
    }

    @Override
    public Object b(Object destMapField, Object srcMapField) {
        return j(destMapField, srcMapField);
    }

    @Override
    public R0.b<?, ?> c(Object mapDefaultEntry) {
        return ((R0) mapDefaultEntry).d();
    }

    @Override
    public Object d(Object mapField) {
        ((T0) mapField).m();
        return mapField;
    }

    @Override
    public int e(int fieldNumber, Object mapField, Object mapDefaultEntry) {
        return a(fieldNumber, mapField, mapDefaultEntry);
    }

    @Override
    public Map<?, ?> f(Object mapField) {
        return (T0) mapField;
    }

    @Override
    public Object g(Object unused) {
        return T0.i().o();
    }

    @Override
    public Map<?, ?> h(Object mapField) {
        return (T0) mapField;
    }

    @Override
    public boolean i(Object mapField) {
        return !((T0) mapField).l();
    }
}
