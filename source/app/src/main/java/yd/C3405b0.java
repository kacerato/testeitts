package Yd;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import ke.InterfaceC13971e;

public class C3405b0<V> implements ee.M<V>, Serializable {

    public static final long f30179e = -1034234728574286014L;

    public final ee.M<V> f30180b;

    public transient InterfaceC13971e f30181c = null;

    public transient Collection<V> f30182d = null;

    public class a implements Zd.T<V> {

        public Zd.T<V> f30183b;

        public a() {
            this.f30183b = C3405b0.this.f30180b.iterator();
        }

        @Override
        public void g() {
            this.f30183b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30183b.hasNext();
        }

        @Override
        public int key() {
            return this.f30183b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public V setValue(V v10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V value() {
            return this.f30183b.value();
        }
    }

    public C3405b0(ee.M<V> m10) {
        m10.getClass();
        this.f30180b = m10;
    }

    @Override
    public boolean F(int i10) {
        return this.f30180b.F(i10);
    }

    @Override
    public V Gd(int i10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30180b.J(s10);
    }

    @Override
    public void Ja(ee.M<? extends V> m10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Mb(he.Q<? super V> q10) {
        return this.f30180b.Mb(q10);
    }

    @Override
    public boolean Pb(he.Q<? super V> q10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        return this.f30180b.S(k0Var);
    }

    @Override
    public V ae(int i10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f30180b.containsValue(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30180b.equals(obj);
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30180b.f0(iArr);
    }

    @Override
    public V get(int i10) {
        return this.f30180b.get(i10);
    }

    @Override
    public int hashCode() {
        return this.f30180b.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f30180b.isEmpty();
    }

    @Override
    public Zd.T<V> iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30180b.j();
    }

    @Override
    public Collection<V> k() {
        if (this.f30182d == null) {
            this.f30182d = Collections.unmodifiableCollection(this.f30180b.k());
        }
        return this.f30182d;
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30181c == null) {
            this.f30181c = Sd.c.E2(this.f30180b.keySet());
        }
        return this.f30181c;
    }

    @Override
    public int l() {
        return this.f30180b.l();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30180b.size();
    }

    public String toString() {
        return this.f30180b.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        return this.f30180b.v0(vArr);
    }

    @Override
    public Object[] values() {
        return this.f30180b.values();
    }
}
