package com.google.protobuf;

import com.google.protobuf.R0;
import java.util.Map;

public class V0 implements U0 {
    public static <K, V> int a(int number, Object mapField, Object defaultEntryObject) {
        int i10 = 0;
        if (mapField == null) {
            return 0;
        }
        Map<K, V> j10 = ((S0) mapField).j();
        Q0 q02 = (Q0) defaultEntryObject;
        if (j10.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : j10.entrySet()) {
            i10 += CodedOutputStream.X0(number) + CodedOutputStream.D0(R0.b(q02.t6(), entry.getKey(), entry.getValue()));
        }
        return i10;
    }

    public static <K, V> Object j(Object destMapField, Object srcMapField) {
        S0 s02 = (S0) destMapField;
        S0<K, V> s03 = (S0) srcMapField;
        if (!s02.n()) {
            s02.g();
        }
        s02.p(s03);
        return s02;
    }

    @Override
    public Object b(Object destMapField, Object srcMapField) {
        return j(destMapField, srcMapField);
    }

    @Override
    public R0.b<?, ?> c(Object mapDefaultEntry) {
        return ((Q0) mapDefaultEntry).t6();
    }

    @Override
    public Object d(Object mapField) {
        ((S0) mapField).o();
        return mapField;
    }

    @Override
    public int e(int number, Object mapField, Object mapDefaultEntry) {
        return a(number, mapField, mapDefaultEntry);
    }

    @Override
    public Map<?, ?> f(Object mapField) {
        return ((S0) mapField).m();
    }

    @Override
    public Object g(Object mapDefaultEntry) {
        return S0.q((Q0) mapDefaultEntry);
    }

    @Override
    public Map<?, ?> h(Object mapField) {
        return ((S0) mapField).j();
    }

    @Override
    public boolean i(Object mapField) {
        return !((S0) mapField).n();
    }
}
