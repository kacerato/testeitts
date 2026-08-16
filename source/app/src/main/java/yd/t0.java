package Yd;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class t0<K> implements ee.c0<K>, Serializable {

    public static final long f30362e = -1034234728574286014L;

    public final ee.c0<K> f30363b;

    public transient Set<K> f30364c = null;

    public transient Sd.g f30365d = null;

    public class a implements Zd.j0<K> {

        public Zd.j0<K> f30366b;

        public a() {
            this.f30366b = t0.this.f30363b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30366b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30366b.hasNext();
        }

        @Override
        public K key() {
            return this.f30366b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f30366b.value();
        }
    }

    public t0(ee.c0<K> c0Var) {
        c0Var.getClass();
        this.f30363b = c0Var;
    }

    @Override
    public void Ba(ee.c0<? extends K> c0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Be(he.h0<? super K> h0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public K[] C0(K[] kArr) {
        return this.f30363b.C0(kArr);
    }

    @Override
    public int Eb(K k10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return this.f30363b.G(k0Var);
    }

    @Override
    public boolean Q(int i10) {
        return this.f30363b.Q(i10);
    }

    @Override
    public int Y9(K k10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int a4(K k10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f30363b.containsKey(obj);
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f30363b.e0(iArr);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30363b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int get(Object obj) {
        return this.f30363b.get(obj);
    }

    @Override
    public int hashCode() {
        return this.f30363b.hashCode();
    }

    @Override
    public int i() {
        return this.f30363b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30363b.isEmpty();
    }

    @Override
    public Zd.j0<K> iterator() {
        return new a();
    }

    @Override
    public Object[] j() {
        return this.f30363b.j();
    }

    @Override
    public Sd.g k() {
        if (this.f30365d == null) {
            this.f30365d = Sd.c.f1(this.f30363b.k());
        }
        return this.f30365d;
    }

    @Override
    public Set<K> keySet() {
        if (this.f30364c == null) {
            this.f30364c = Collections.unmodifiableSet(this.f30363b.keySet());
        }
        return this.f30364c;
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f30363b.m0(s10);
    }

    @Override
    public boolean n9(he.h0<? super K> h0Var) {
        return this.f30363b.n9(h0Var);
    }

    @Override
    public void putAll(Map<? extends K, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean s5(K k10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30363b.size();
    }

    public String toString() {
        return this.f30363b.toString();
    }

    @Override
    public int[] values() {
        return this.f30363b.values();
    }

    @Override
    public boolean x0(K k10) {
        throw new UnsupportedOperationException();
    }
}
