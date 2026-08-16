package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class V0<K, V> extends W0<K, V> {

    public static final int f66317l = 2;

    @v2.c
    public static final long f66318m = 0;

    @v2.d
    public transient int f66319k;

    public V0() {
        this(12, 2);
    }

    public static <K, V> V0<K, V> M() {
        return new V0<>();
    }

    public static <K, V> V0<K, V> O(int i10, int i11) {
        return new V0<>(i10, i11);
    }

    public static <K, V> V0<K, V> P(S1<? extends K, ? extends V> s12) {
        return new V0<>(s12);
    }

    @v2.c
    private void Q(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f66319k = 2;
        int h10 = B2.h(objectInputStream);
        G(C12526h2.d(12));
        B2.e(this, objectInputStream, h10);
    }

    @v2.c
    private void R(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        B2.j(this, objectOutputStream);
    }

    @Override
    public Set<V> x() {
        return C12526h2.e(this.f66319k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public boolean Z(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.Z(obj, iterable);
    }

    @Override
    @I2.a
    public Set c(@CheckForNull Object obj) {
        return super.c(obj);
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return super.containsKey(obj);
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Set d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.d((V0<K, V>) obj, iterable);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.g0(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set y(@InterfaceC12518f2 Object obj) {
        return super.y((V0<K, V>) obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public V1 j() {
        return super.j();
    }

    @Override
    public Map k() {
        return super.k();
    }

    @Override
    public Set keySet() {
        return super.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public boolean put(@InterfaceC12518f2 Object obj, @InterfaceC12518f2 Object obj2) {
        return super.put(obj, obj2);
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Set v() {
        return super.v();
    }

    @Override
    public Collection values() {
        return super.values();
    }

    @Override
    @I2.a
    public boolean w(S1 s12) {
        return super.w(s12);
    }

    public V0(int i10, int i11) {
        super(C12526h2.d(i10));
        this.f66319k = 2;
        w2.H.d(i11 >= 0);
        this.f66319k = i11;
    }

    public V0(S1<? extends K, ? extends V> s12) {
        super(C12526h2.d(s12.keySet().size()));
        this.f66319k = 2;
        w(s12);
    }
}
