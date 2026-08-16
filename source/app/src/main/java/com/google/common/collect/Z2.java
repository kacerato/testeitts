package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public class Z2<K, V> extends AbstractC12547n<K, V> {

    @v2.c
    public static final long f66397n = 0;

    public transient Comparator<? super K> f66398l;

    public transient Comparator<? super V> f66399m;

    public Z2(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        super(new TreeMap(comparator));
        this.f66398l = comparator;
        this.f66399m = comparator2;
    }

    public static <K extends Comparable, V extends Comparable> Z2<K, V> U() {
        return new Z2<>(Ordering.A(), Ordering.A());
    }

    public static <K extends Comparable, V extends Comparable> Z2<K, V> V(S1<? extends K, ? extends V> s12) {
        return new Z2<>(Ordering.A(), Ordering.A(), s12);
    }

    public static <K, V> Z2<K, V> W(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        return new Z2<>((Comparator) w2.H.E(comparator), (Comparator) w2.H.E(comparator2));
    }

    @v2.c
    private void b0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f66398l = (Comparator) w2.H.E((Comparator) objectInputStream.readObject());
        this.f66399m = (Comparator) w2.H.E((Comparator) objectInputStream.readObject());
        G(new TreeMap(this.f66398l));
        B2.d(this, objectInputStream);
    }

    @v2.c
    private void c0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(Y());
        objectOutputStream.writeObject(z());
        B2.j(this, objectOutputStream);
    }

    @Override
    public SortedSet<V> x() {
        return new TreeSet(this.f66399m);
    }

    @Override
    public NavigableMap<K, Collection<V>> k() {
        return (NavigableMap) super.k();
    }

    @Override
    @v2.c
    public NavigableSet<V> y(@InterfaceC12518f2 K k10) {
        return (NavigableSet) super.y((Z2<K, V>) k10);
    }

    @Deprecated
    public Comparator<? super K> Y() {
        return this.f66398l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public boolean Z(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.Z(obj, iterable);
    }

    @Override
    public Map<K, Collection<V>> a() {
        return A();
    }

    @Override
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override
    @I2.a
    public SortedSet c(@CheckForNull Object obj) {
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
    public SortedSet d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.d((Z2<K, V>) obj, iterable);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.g0(obj, obj2);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection<V> y(@InterfaceC12518f2 K k10) {
        if (k10 == 0) {
            Y().compare(k10, k10);
        }
        return super.y(k10);
    }

    @Override
    public Comparator<? super V> z() {
        return this.f66399m;
    }

    public Z2(Comparator<? super K> comparator, Comparator<? super V> comparator2, S1<? extends K, ? extends V> s12) {
        this(comparator, comparator2);
        w(s12);
    }
}
