package Yd;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class u0<K> implements ee.d0<K>, Serializable {

    public static final long f30369e = -1034234728574286014L;

    public final ee.d0<K> f30370b;

    public transient Set<K> f30371c = null;

    public transient Sd.h f30372d = null;

    public class a implements Zd.k0<K> {

        public Zd.k0<K> f30373b;

        public a() {
            this.f30373b = u0.this.f30370b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30373b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30373b.hasNext();
        }

        @Override
        public K key() {
            return this.f30373b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30373b.value();
        }
    }

    public u0(ee.d0<K> d0Var) {
        d0Var.getClass();
        this.f30370b = d0Var;
    }

    @Override
    public K[] C0(K[] kArr) {
        return this.f30370b.C0(kArr);
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return this.f30370b.G(k0Var);
    }

    @Override
    public long J6(K k10, long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f30370b.R(j10);
    }

    @Override
    public void R2(ee.d0<? extends K> d0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U7(he.i0<? super K> i0Var) {
        return this.f30370b.U7(i0Var);
    }

    @Override
    public long ba(K k10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f30370b.containsKey(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30370b.equals(obj);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f30370b.g0(jArr);
    }

    @Override
    public long g4(K k10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long get(Object obj) {
        return this.f30370b.get(obj);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int hashCode() {
        return this.f30370b.hashCode();
    }

    @Override
    public long i() {
        return this.f30370b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30370b.isEmpty();
    }

    @Override
    public Zd.k0<K> iterator() {
        return new a();
    }

    @Override
    public Object[] j() {
        return this.f30370b.j();
    }

    @Override
    public Sd.h k() {
        if (this.f30372d == null) {
            this.f30372d = Sd.c.g1(this.f30370b.k());
        }
        return this.f30372d;
    }

    @Override
    public Set<K> keySet() {
        if (this.f30371c == null) {
            this.f30371c = Collections.unmodifiableSet(this.f30370b.keySet());
        }
        return this.f30371c;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean q5(K k10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30370b.size();
    }

    public String toString() {
        return this.f30370b.toString();
    }

    @Override
    public boolean u4(he.i0<? super K> i0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long[] values() {
        return this.f30370b.values();
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f30370b.x(b0Var);
    }

    @Override
    public boolean x0(K k10) {
        throw new UnsupportedOperationException();
    }
}
