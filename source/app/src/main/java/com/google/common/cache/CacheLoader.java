package com.google.common.cache;

import com.google.common.util.concurrent.C12600a0;
import com.google.common.util.concurrent.Z;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import w2.H;
import w2.InterfaceC15902t;
import w2.Q;

@v2.b(emulated = true)
@g
public abstract class CacheLoader<K, V> {

    public static final class InvalidCacheLoadException extends RuntimeException {
        public InvalidCacheLoadException(String str) {
            super(str);
        }
    }

    public static final class UnsupportedLoadingOperationException extends UnsupportedOperationException {
    }

    public class a extends CacheLoader<K, V> {

        public final Executor f65368c;

        public class CallableC0975a implements Callable<V> {

            public final Object f65369b;

            public final Object f65370c;

            public CallableC0975a(Object obj, Object obj2) {
                this.f65369b = obj;
                this.f65370c = obj2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public V call() throws Exception {
                return CacheLoader.this.f(this.f65369b, this.f65370c).get();
            }
        }

        public a(Executor executor) {
            this.f65368c = executor;
        }

        @Override
        public V d(K k10) throws Exception {
            return (V) CacheLoader.this.d(k10);
        }

        @Override
        public Map<K, V> e(Iterable<? extends K> iterable) throws Exception {
            return CacheLoader.this.e(iterable);
        }

        @Override
        public Z<V> f(K k10, V v10) throws Exception {
            C12600a0 b10 = C12600a0.b(new CallableC0975a(k10, v10));
            this.f65368c.execute(b10);
            return b10;
        }
    }

    public static final class b<K, V> extends CacheLoader<K, V> implements Serializable {

        public static final long f65372c = 0;

        public final InterfaceC15902t<K, V> f65373b;

        public b(InterfaceC15902t<K, V> interfaceC15902t) {
            this.f65373b = (InterfaceC15902t) H.E(interfaceC15902t);
        }

        @Override
        public V d(K k10) {
            return (V) this.f65373b.apply(H.E(k10));
        }
    }

    public static final class c<V> extends CacheLoader<Object, V> implements Serializable {

        public static final long f65374c = 0;

        public final Q<V> f65375b;

        public c(Q<V> q10) {
            this.f65375b = (Q) H.E(q10);
        }

        @Override
        public V d(Object obj) {
            H.E(obj);
            return this.f65375b.get();
        }
    }

    @v2.c
    @I2.b
    public static <K, V> CacheLoader<K, V> a(CacheLoader<K, V> cacheLoader, Executor executor) {
        H.E(cacheLoader);
        H.E(executor);
        return new a(executor);
    }

    @I2.b
    public static <K, V> CacheLoader<K, V> b(InterfaceC15902t<K, V> interfaceC15902t) {
        return new b(interfaceC15902t);
    }

    @I2.b
    public static <V> CacheLoader<Object, V> c(Q<V> q10) {
        return new c(q10);
    }

    public abstract V d(K k10) throws Exception;

    public Map<K, V> e(Iterable<? extends K> iterable) throws Exception {
        throw new UnsupportedLoadingOperationException();
    }

    @v2.c
    public Z<V> f(K k10, V v10) throws Exception {
        H.E(k10);
        H.E(v10);
        return com.google.common.util.concurrent.Q.m(d(k10));
    }
}
