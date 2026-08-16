package Yd;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class v0<K> implements ee.e0<K>, Serializable {

    public static final long f30381e = -1034234728574286014L;

    public final ee.e0<K> f30382b;

    public transient Set<K> f30383c = null;

    public transient Sd.i f30384d = null;

    public class a implements Zd.l0<K> {

        public Zd.l0<K> f30385b;

        public a() {
            this.f30385b = v0.this.f30382b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30385b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30385b.hasNext();
        }

        @Override
        public K key() {
            return this.f30385b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30385b.value();
        }
    }

    public v0(ee.e0<K> e0Var) {
        e0Var.getClass();
        this.f30382b = e0Var;
    }

    @Override
    public K[] C0(K[] kArr) {
        return this.f30382b.C0(kArr);
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return this.f30382b.G(k0Var);
    }

    @Override
    public void Ic(ee.e0<? extends K> e0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean L(short s10) {
        return this.f30382b.L(s10);
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30382b.N(t0Var);
    }

    @Override
    public short N3(K k10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean S4(K k10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T6(he.l0<? super K> l0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short U2(K k10, short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f30382b.containsKey(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30382b.equals(obj);
    }

    @Override
    public short ga(K k10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short get(Object obj) {
        return this.f30382b.get(obj);
    }

    @Override
    public int hashCode() {
        return this.f30382b.hashCode();
    }

    @Override
    public short i() {
        return this.f30382b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30382b.i0(sArr);
    }

    @Override
    public boolean isEmpty() {
        return this.f30382b.isEmpty();
    }

    @Override
    public Zd.l0<K> iterator() {
        return new a();
    }

    @Override
    public Object[] j() {
        return this.f30382b.j();
    }

    @Override
    public Sd.i k() {
        if (this.f30384d == null) {
            this.f30384d = Sd.c.h1(this.f30382b.k());
        }
        return this.f30384d;
    }

    @Override
    public Set<K> keySet() {
        if (this.f30383c == null) {
            this.f30383c = Collections.unmodifiableSet(this.f30382b.keySet());
        }
        return this.f30383c;
    }

    @Override
    public boolean l3(he.l0<? super K> l0Var) {
        return this.f30382b.l3(l0Var);
    }

    @Override
    public void putAll(Map<? extends K, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30382b.size();
    }

    public String toString() {
        return this.f30382b.toString();
    }

    @Override
    public short[] values() {
        return this.f30382b.values();
    }

    @Override
    public boolean x0(K k10) {
        throw new UnsupportedOperationException();
    }
}
