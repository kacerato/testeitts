package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class C12566s<K, V> extends AbstractC12570t<K, V> {

    public static final int f66850l = 3;

    @v2.c
    public static final long f66851m = 0;

    @v2.d
    public transient int f66852k;

    public C12566s() {
        this(12, 3);
    }

    public static <K, V> C12566s<K, V> M() {
        return new C12566s<>();
    }

    public static <K, V> C12566s<K, V> O(int i10, int i11) {
        return new C12566s<>(i10, i11);
    }

    public static <K, V> C12566s<K, V> P(S1<? extends K, ? extends V> s12) {
        return new C12566s<>(s12);
    }

    @v2.c
    private void Q(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f66852k = 3;
        int h10 = B2.h(objectInputStream);
        G(D.s());
        B2.e(this, objectInputStream, h10);
    }

    @v2.c
    private void S(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        B2.j(this, objectOutputStream);
    }

    @Override
    public List<V> x() {
        return new ArrayList(this.f66852k);
    }

    @Deprecated
    public void R() {
        Iterator<Collection<V>> it = u().values().iterator();
        while (it.hasNext()) {
            ((ArrayList) it.next()).trimToSize();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public boolean Z(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.Z(obj, iterable);
    }

    @Override
    @I2.a
    public List c(@CheckForNull Object obj) {
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
    public List d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.d((C12566s<K, V>) obj, iterable);
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
    public List y(@InterfaceC12518f2 Object obj) {
        return super.y((C12566s<K, V>) obj);
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
    public Collection v() {
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

    public C12566s(int i10, int i11) {
        super(C12526h2.d(i10));
        B.b(i11, "expectedValuesPerKey");
        this.f66852k = i11;
    }

    public C12566s(S1<? extends K, ? extends V> s12) {
        this(s12.keySet().size(), s12 instanceof C12566s ? ((C12566s) s12).f66852k : 3);
        w(s12);
    }
}
