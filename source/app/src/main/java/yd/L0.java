package Yd;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import ke.InterfaceC13973g;

public class L0<V> implements ee.l0<V>, Serializable {

    public static final long f30085e = -1034234728574286014L;

    public final ee.l0<V> f30086b;

    public transient InterfaceC13973g f30087c = null;

    public transient Collection<V> f30088d = null;

    public class a implements Zd.u0<V> {

        public Zd.u0<V> f30089b;

        public a() {
            this.f30089b = L0.this.f30086b.iterator();
        }

        @Override
        public void g() {
            this.f30089b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30089b.hasNext();
        }

        @Override
        public short key() {
            return this.f30089b.key();
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
            return this.f30089b.value();
        }
    }

    public L0(ee.l0<V> l0Var) {
        l0Var.getClass();
        this.f30086b = l0Var;
    }

    @Override
    public V Aa(short s10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V O4(short s10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        return this.f30086b.S(k0Var);
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30086b.Y(sArr);
    }

    @Override
    public boolean Zc(he.s0<? super V> s0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f30086b.containsValue(obj);
    }

    @Override
    public V d(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30086b.equals(obj);
    }

    @Override
    public boolean f4(he.s0<? super V> s0Var) {
        return this.f30086b.f4(s0Var);
    }

    @Override
    public int hashCode() {
        return this.f30086b.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f30086b.isEmpty();
    }

    @Override
    public Zd.u0<V> iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30086b.j();
    }

    @Override
    public Collection<V> k() {
        if (this.f30088d == null) {
            this.f30088d = Collections.unmodifiableCollection(this.f30086b.k());
        }
        return this.f30088d;
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30087c == null) {
            this.f30087c = Sd.c.G2(this.f30086b.keySet());
        }
        return this.f30087c;
    }

    @Override
    public short l() {
        return this.f30086b.l();
    }

    @Override
    public V n0(short s10) {
        return this.f30086b.n0(s10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30086b.size();
    }

    public String toString() {
        return this.f30086b.toString();
    }

    @Override
    public void ua(ee.l0<? extends V> l0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30086b.v(t0Var);
    }

    @Override
    public V[] v0(V[] vArr) {
        return this.f30086b.v0(vArr);
    }

    @Override
    public Object[] values() {
        return this.f30086b.values();
    }

    @Override
    public boolean z(short s10) {
        return this.f30086b.z(s10);
    }
}
