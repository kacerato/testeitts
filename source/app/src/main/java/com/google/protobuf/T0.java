package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class T0<K, V> extends LinkedHashMap<K, V> {

    public static final T0<?, ?> f68916c;

    public boolean f68917b;

    static {
        T0<?, ?> t02 = new T0<>();
        f68916c = t02;
        t02.m();
    }

    public T0() {
        this.f68917b = true;
    }

    public static boolean I1(Object a10, Object b10) {
        return ((a10 instanceof byte[]) && (b10 instanceof byte[])) ? Arrays.equals((byte[]) a10, (byte[]) b10) : a10.equals(b10);
    }

    public static <K, V> int a(Map<K, V> a10) {
        int i10 = 0;
        for (Map.Entry<K, V> entry : a10.entrySet()) {
            i10 += b(entry.getValue()) ^ b(entry.getKey());
        }
        return i10;
    }

    public static int b(Object a10) {
        if (a10 instanceof byte[]) {
            return D0.m((byte[]) a10);
        }
        if (a10 instanceof D0.c) {
            throw new UnsupportedOperationException();
        }
        return a10.hashCode();
    }

    public static void c(Map<?, ?> m10) {
        for (Object obj : m10.o()) {
            D0.d(obj);
            D0.d(m10.get(obj));
        }
    }

    public static Object d(Object object) {
        if (!(object instanceof byte[])) {
            return object;
        }
        byte[] bArr = (byte[]) object;
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> Map<K, V> e(Map<K, V> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), d(entry.getValue()));
        }
        return linkedHashMap;
    }

    public static <K, V> T0<K, V> i() {
        return (T0<K, V>) f68916c;
    }

    public static <K, V> boolean k(Map<K, V> a10, Map<K, V> b10) {
        if (a10 == b10) {
            return true;
        }
        if (a10.size() != b10.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : a10.entrySet()) {
            if (!b10.containsKey(entry.getKey()) || !I1(entry.getValue(), b10.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void clear() {
        j();
        super.clear();
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override
    public boolean equals(Object object) {
        return (object instanceof Map) && k(this, (Map) object);
    }

    @Override
    public int hashCode() {
        return a(this);
    }

    public final void j() {
        if (!l()) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean l() {
        return this.f68917b;
    }

    public void m() {
        this.f68917b = false;
    }

    public void n(T0<K, V> other) {
        j();
        if (other.isEmpty()) {
            return;
        }
        putAll(other);
    }

    public T0<K, V> o() {
        return isEmpty() ? new T0<>() : new T0<>(this);
    }

    public V p(Map.Entry<K, V> entry) {
        return put(entry.getKey(), entry.getValue());
    }

    @Override
    public V put(K k10, V v10) {
        j();
        D0.d(k10);
        D0.d(v10);
        return (V) super.put(k10, v10);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> m10) {
        j();
        c(m10);
        super.putAll(m10);
    }

    @Override
    public V remove(Object obj) {
        j();
        return (V) super.remove(obj);
    }

    public T0(Map<K, V> mapData) {
        super(mapData);
        this.f68917b = true;
    }
}
