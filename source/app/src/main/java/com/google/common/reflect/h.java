package com.google.common.reflect;

import com.google.common.collect.C0;
import com.google.common.collect.D0;
import com.google.common.collect.E1;
import com.google.common.collect.K0;
import com.google.common.collect.Q1;
import com.google.common.reflect.h;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import w2.H;
import w2.InterfaceC15902t;

@d
public final class h<B> extends C0<p<? extends B>, B> implements o<B> {

    public final Map<p<? extends B>, B> f67118b = Q1.Y();

    public static final class a<K, V> extends D0<K, V> {

        public final Map.Entry<K, V> f67119b;

        public class C1012a extends K0<Map.Entry<K, V>> {

            public final Set f67120b;

            public C1012a(Set set) {
                this.f67120b = set;
            }

            @Override
            public Set<Map.Entry<K, V>> k0() {
                return this.f67120b;
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                return a.w0(super.iterator());
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

        public a(Map.Entry<K, V> entry) {
            this.f67119b = (Map.Entry) H.E(entry);
        }

        public static a u0(Map.Entry entry) {
            return new a(entry);
        }

        public static <K, V> Iterator<Map.Entry<K, V>> w0(Iterator<Map.Entry<K, V>> it) {
            return E1.c0(it, new InterfaceC15902t() {
                @Override
                public final Object apply(Object obj) {
                    return h.a.u0((Map.Entry) obj);
                }
            });
        }

        public static <K, V> Set<Map.Entry<K, V>> x0(Set<Map.Entry<K, V>> set) {
            return new C1012a(set);
        }

        @Override
        public Map.Entry<K, V> k0() {
            return this.f67119b;
        }

        @Override
        public V setValue(V v10) {
            throw new UnsupportedOperationException();
        }
    }

    @CheckForNull
    private <T extends B> T C0(p<T> pVar) {
        return this.f67118b.get(pVar);
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public B put(p<? extends B> pVar, B b10) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @CheckForNull
    public final <T extends B> T D0(p<T> pVar, T t10) {
        return this.f67118b.put(pVar, t10);
    }

    @Override
    @I2.a
    @CheckForNull
    public <T extends B> T Qc(p<T> pVar, T t10) {
        return (T) D0(pVar.V(), t10);
    }

    @Override
    @I2.a
    @CheckForNull
    public <T extends B> T a2(Class<T> cls, T t10) {
        return (T) D0(p.T(cls), t10);
    }

    @Override
    public Set<Map.Entry<p<? extends B>, B>> entrySet() {
        return a.x0(super.entrySet());
    }

    @Override
    @CheckForNull
    public <T extends B> T k2(Class<T> cls) {
        return (T) C0(p.T(cls));
    }

    @Override
    public Map<p<? extends B>, B> k0() {
        return this.f67118b;
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void putAll(Map<? extends p<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @Override
    @CheckForNull
    public <T extends B> T u6(p<T> pVar) {
        return (T) C0(pVar.V());
    }
}
