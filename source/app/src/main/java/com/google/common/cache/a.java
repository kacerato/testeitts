package com.google.common.cache;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.Q1;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@v2.b
@g
public abstract class a<K, V> implements c<K, V> {

    public static final class C0976a implements b {

        public final l f65376a = m.a();

        public final l f65377b = m.a();

        public final l f65378c = m.a();

        public final l f65379d = m.a();

        public final l f65380e = m.a();

        public final l f65381f = m.a();

        public static long h(long j10) {
            if (j10 >= 0) {
                return j10;
            }
            return Long.MAX_VALUE;
        }

        @Override
        public void a(int i10) {
            this.f65376a.M0(i10);
        }

        @Override
        public void b() {
            this.f65381f.N0();
        }

        @Override
        public void c(long j10) {
            this.f65378c.N0();
            this.f65380e.M0(j10);
        }

        @Override
        public void d(int i10) {
            this.f65377b.M0(i10);
        }

        @Override
        public void e(long j10) {
            this.f65379d.N0();
            this.f65380e.M0(j10);
        }

        @Override
        public f f() {
            return new f(h(this.f65376a.o()), h(this.f65377b.o()), h(this.f65378c.o()), h(this.f65379d.o()), h(this.f65380e.o()), h(this.f65381f.o()));
        }

        public void g(b bVar) {
            f f10 = bVar.f();
            this.f65376a.M0(f10.c());
            this.f65377b.M0(f10.j());
            this.f65378c.M0(f10.h());
            this.f65379d.M0(f10.f());
            this.f65380e.M0(f10.n());
            this.f65381f.M0(f10.b());
        }
    }

    public interface b {
        void a(int i10);

        void b();

        void c(long j10);

        void d(int i10);

        void e(long j10);

        f f();
    }

    @Override
    public AbstractC12529i1<K, V> R(Iterable<? extends Object> iterable) {
        V r10;
        LinkedHashMap c02 = Q1.c0();
        for (Object obj : iterable) {
            if (!c02.containsKey(obj) && (r10 = r(obj)) != null) {
                c02.put(obj, r10);
            }
        }
        return AbstractC12529i1.n(c02);
    }

    @Override
    public void b0(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void cleanUp() {
    }

    @Override
    public void j0() {
        throw new UnsupportedOperationException();
    }

    @Override
    public ConcurrentMap<K, V> k() {
        throw new UnsupportedOperationException();
    }

    @Override
    public V m(K k10, Callable<? extends V> callable) throws ExecutionException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public void s(Iterable<? extends Object> iterable) {
        Iterator<? extends Object> it = iterable.iterator();
        while (it.hasNext()) {
            b0(it.next());
        }
    }

    @Override
    public long size() {
        throw new UnsupportedOperationException();
    }

    @Override
    public f stats() {
        throw new UnsupportedOperationException();
    }
}
