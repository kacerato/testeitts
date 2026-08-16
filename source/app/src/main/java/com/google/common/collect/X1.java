package com.google.common.collect;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.c
public final class X1<B> extends C0<Class<? extends B>, B> implements A<B>, Serializable {

    public final Map<Class<? extends B>, B> f66368b;

    public class a extends D0<Class<? extends B>, B> {

        public final Map.Entry f66369b;

        public a(Map.Entry entry) {
            this.f66369b = entry;
        }

        @Override
        public Map.Entry<Class<? extends B>, B> k0() {
            return this.f66369b;
        }

        @Override
        public B setValue(B b10) {
            return (B) super.setValue(X1.C0(getKey(), b10));
        }
    }

    public class b extends K0<Map.Entry<Class<? extends B>, B>> {

        public class a extends V2<Map.Entry<Class<? extends B>, B>, Map.Entry<Class<? extends B>, B>> {
            public a(b bVar, Iterator it) {
                super(it);
            }

            @Override
            public Map.Entry<Class<? extends B>, B> a(Map.Entry<Class<? extends B>, B> entry) {
                return X1.D0(entry);
            }
        }

        public b() {
        }

        @Override
        public Set<Map.Entry<Class<? extends B>, B>> k0() {
            return X1.this.k0().entrySet();
        }

        @Override
        public Iterator<Map.Entry<Class<? extends B>, B>> iterator() {
            return new a(this, k0().iterator());
        }

        @Override
        public Object[] toArray() {
            return z0();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) B0(tArr);
        }
    }

    public static final class c<B> implements Serializable {

        public static final long f66371c = 0;

        public final Map<Class<? extends B>, B> f66372b;

        public c(Map<Class<? extends B>, B> map) {
            this.f66372b = map;
        }

        public Object a() {
            return X1.F0(this.f66372b);
        }
    }

    public X1(Map<Class<? extends B>, B> map) {
        this.f66368b = (Map) w2.H.E(map);
    }

    @I2.a
    @CheckForNull
    public static <B, T extends B> T C0(Class<T> cls, @CheckForNull B b10) {
        return (T) com.google.common.primitives.r.f(cls).cast(b10);
    }

    public static <B> Map.Entry<Class<? extends B>, B> D0(Map.Entry<Class<? extends B>, B> entry) {
        return new a(entry);
    }

    public static <B> X1<B> E0() {
        return new X1<>(new HashMap());
    }

    public static <B> X1<B> F0(Map<Class<? extends B>, B> map) {
        return new X1<>(map);
    }

    private Object H0() {
        return new c(k0());
    }

    @Override
    @I2.a
    @CheckForNull
    public B put(Class<? extends B> cls, B b10) {
        return (B) super.put(cls, C0(cls, b10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    @CheckForNull
    public <T extends B> T a2(Class<T> cls, T t10) {
        return (T) C0(cls, put(cls, t10));
    }

    @Override
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new b();
    }

    @Override
    @CheckForNull
    public <T extends B> T k2(Class<T> cls) {
        return (T) C0(cls, get(cls));
    }

    @Override
    public Map<Class<? extends B>, B> k0() {
        return this.f66368b;
    }

    @Override
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            C0((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }
}
