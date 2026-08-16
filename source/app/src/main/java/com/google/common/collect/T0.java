package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public class T0<R, C, V> extends Q2<R, C, V> {

    public static final long f66199j = 0;

    public static class a<C, V> implements w2.Q<Map<C, V>>, Serializable {

        public static final long f66200c = 0;

        public final int f66201b;

        public a(int i10) {
            this.f66201b = i10;
        }

        @Override
        public Map<C, V> get() {
            return Q1.e0(this.f66201b);
        }
    }

    public T0(Map<R, Map<C, V>> map, a<C, V> aVar) {
        super(map, aVar);
    }

    public static <R, C, V> T0<R, C, V> p() {
        return new T0<>(new LinkedHashMap(), new a(0));
    }

    public static <R, C, V> T0<R, C, V> q(int i10, int i11) {
        B.b(i11, "expectedCellsPerRow");
        return new T0<>(Q1.e0(i10), new a(i11));
    }

    public static <R, C, V> T0<R, C, V> r(S2<? extends R, ? extends C, ? extends V> s22) {
        T0<R, C, V> p10 = p();
        p10.Y(s22);
        return p10;
    }

    @Override
    public Map A() {
        return super.A();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Map B(Object obj) {
        return super.B(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    @CheckForNull
    public Object L(Object obj, Object obj2, Object obj3) {
        return super.L(obj, obj2, obj3);
    }

    @Override
    public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.Q(obj, obj2);
    }

    @Override
    public void Y(S2 s22) {
        super.Y(s22);
    }

    @Override
    public Set c0() {
        return super.c0();
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
    public Set d0() {
        return super.d0();
    }

    @Override
    @CheckForNull
    public Object e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.e(obj, obj2);
    }

    @Override
    public boolean e0(@CheckForNull Object obj) {
        return super.e0(obj);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g(@CheckForNull Object obj) {
        return super.g(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Map i0(Object obj) {
        return super.i0(obj);
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    @I2.a
    @CheckForNull
    public Object remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
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
    public Map u() {
        return super.u();
    }

    @Override
    public Collection values() {
        return super.values();
    }

    @Override
    public Set x() {
        return super.x();
    }
}
