package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class C12500b0<K extends Enum<K>, V extends Enum<V>> extends AbstractC12495a<K, V> {

    @v2.c
    public static final long f66447j = 0;

    public transient Class<K> f66448h;

    public transient Class<V> f66449i;

    public C12500b0(Class<K> cls, Class<V> cls2) {
        super(new EnumMap(cls), new EnumMap(cls2));
        this.f66448h = cls;
        this.f66449i = cls2;
    }

    public static <K extends Enum<K>, V extends Enum<V>> C12500b0<K, V> V0(Class<K> cls, Class<V> cls2) {
        return new C12500b0<>(cls, cls2);
    }

    public static <K extends Enum<K>, V extends Enum<V>> C12500b0<K, V> W0(Map<K, V> map) {
        C12500b0<K, V> V02 = V0(X0(map), Y0(map));
        V02.putAll(map);
        return V02;
    }

    public static <K extends Enum<K>> Class<K> X0(Map<K, ?> map) {
        if (map instanceof C12500b0) {
            return ((C12500b0) map).Z0();
        }
        if (map instanceof C12504c0) {
            return ((C12504c0) map).X0();
        }
        w2.H.d(!map.isEmpty());
        return map.o().iterator().next().getDeclaringClass();
    }

    public static <V extends Enum<V>> Class<V> Y0(Map<?, V> map) {
        if (map instanceof C12500b0) {
            return ((C12500b0) map).f66449i;
        }
        w2.H.d(!map.isEmpty());
        return map.values().iterator().next().getDeclaringClass();
    }

    @v2.c
    private void a1(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f66448h = (Class) objectInputStream.readObject();
        this.f66449i = (Class) objectInputStream.readObject();
        O0(new EnumMap(this.f66448h), new EnumMap(this.f66449i));
        B2.b(this, objectInputStream);
    }

    @v2.c
    private void c1(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f66448h);
        objectOutputStream.writeObject(this.f66449i);
        B2.i(this, objectOutputStream);
    }

    @Override
    public InterfaceC12582w A8() {
        return super.A8();
    }

    @Override
    public K F0(K k10) {
        return (K) w2.H.E(k10);
    }

    @Override
    public V G0(V v10) {
        return (V) w2.H.E(v10);
    }

    @Override
    @I2.a
    @CheckForNull
    public Object U6(@InterfaceC12518f2 Object obj, @InterfaceC12518f2 Object obj2) {
        return super.U6(obj, obj2);
    }

    public Class<K> Z0() {
        return this.f66448h;
    }

    public Class<V> b1() {
        return this.f66449i;
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public Set o() {
        return super.o();
    }

    @Override
    @I2.a
    @CheckForNull
    public Object put(@InterfaceC12518f2 Object obj, @InterfaceC12518f2 Object obj2) {
        return super.put(obj, obj2);
    }

    @Override
    public void putAll(Map map) {
        super.putAll(map);
    }

    @Override
    @I2.a
    @CheckForNull
    public Object remove(@CheckForNull Object obj) {
        return super.remove(obj);
    }

    @Override
    public Set values() {
        return super.values();
    }
}
