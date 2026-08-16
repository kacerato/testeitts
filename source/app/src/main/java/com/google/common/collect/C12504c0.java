package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class C12504c0<K extends Enum<K>, V> extends AbstractC12495a<K, V> {

    @v2.c
    public static final long f66475i = 0;

    public transient Class<K> f66476h;

    public C12504c0(Class<K> cls) {
        super(new EnumMap(cls), Q1.a0(cls.getEnumConstants().length));
        this.f66476h = cls;
    }

    public static <K extends Enum<K>, V> C12504c0<K, V> U0(Class<K> cls) {
        return new C12504c0<>(cls);
    }

    public static <K extends Enum<K>, V> C12504c0<K, V> V0(Map<K, ? extends V> map) {
        C12504c0<K, V> U02 = U0(C12500b0.X0(map));
        U02.putAll(map);
        return U02;
    }

    @v2.c
    private void Z0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f66476h = (Class) objectInputStream.readObject();
        O0(new EnumMap(this.f66476h), new HashMap((this.f66476h.getEnumConstants().length * 3) / 2));
        B2.b(this, objectInputStream);
    }

    @v2.c
    private void a1(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f66476h);
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
    @I2.a
    @CheckForNull
    public V U6(K k10, @InterfaceC12518f2 V v10) {
        return (V) super.U6(k10, v10);
    }

    public Class<K> X0() {
        return this.f66476h;
    }

    @Override
    @I2.a
    @CheckForNull
    public V put(K k10, @InterfaceC12518f2 V v10) {
        return (V) super.put(k10, v10);
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
