package Yd;

import ee.InterfaceC13081w;
import he.InterfaceC13469y;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import ke.InterfaceC13969c;

public class E<V> implements InterfaceC13081w<V>, Serializable {

    public static final long f30008e = -1034234728574286014L;

    public final InterfaceC13081w<V> f30009b;

    public transient InterfaceC13969c f30010c = null;

    public transient Collection<V> f30011d = null;

    public class a implements Zd.A<V> {

        public Zd.A<V> f30012b;

        public a() {
            this.f30012b = E.this.f30009b.iterator();
        }

        @Override
        public void g() {
            this.f30012b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30012b.hasNext();
        }

        @Override
        public double key() {
            return this.f30012b.key();
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
            return this.f30012b.value();
        }
    }

    public E(InterfaceC13081w<V> interfaceC13081w) {
        interfaceC13081w.getClass();
        this.f30009b = interfaceC13081w;
    }

    @Override
    public boolean A(double d10) {
        return this.f30009b.A(d10);
    }

    @Override
    public V Lb(double d10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        return this.f30009b.S(k0Var);
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f30009b.W(dArr);
    }

    @Override
    public V W2(double d10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f30009b.containsValue(obj);
    }

    @Override
    public boolean de(InterfaceC13469y<? super V> interfaceC13469y) {
        return this.f30009b.de(interfaceC13469y);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30009b.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.f30009b.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f30009b.isEmpty();
    }

    @Override
    public Zd.A<V> iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f30009b.j();
    }

    @Override
    public Collection<V> k() {
        if (this.f30011d == null) {
            this.f30011d = Collections.unmodifiableCollection(this.f30009b.k());
        }
        return this.f30011d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f30009b.k0(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f30010c == null) {
            this.f30010c = Sd.c.C2(this.f30009b.keySet());
        }
        return this.f30010c;
    }

    @Override
    public double l() {
        return this.f30009b.l();
    }

    @Override
    public V p0(double d10) {
        return this.f30009b.p0(d10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r7(InterfaceC13081w<? extends V> interfaceC13081w) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30009b.size();
    }

    public String toString() {
        return this.f30009b.toString();
    }

    @Override
    public boolean u8(InterfaceC13469y<? super V> interfaceC13469y) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V[] v0(V[] vArr) {
        return this.f30009b.v0(vArr);
    }

    @Override
    public Object[] values() {
        return this.f30009b.values();
    }
}
