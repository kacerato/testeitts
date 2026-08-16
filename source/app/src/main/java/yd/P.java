package Yd;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import ke.InterfaceC13970d;

public class P<V> implements ee.E<V>, Serializable {

    public static final long f30112e = -1034234728574286014L;

    public final ee.E<V> f30113b;

    public transient InterfaceC13970d f30114c = null;

    public transient Collection<V> f30115d = null;

    public class a implements Zd.J<V> {

        public Zd.J<V> f30116b;

        public a() {
            this.f30116b = P.this.f30113b.iterator();
        }

        @Override
        public void g() {
            this.f30116b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30116b.hasNext();
        }

        @Override
        public float key() {
            return this.f30116b.key();
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
            return this.f30116b.value();
        }
    }

    public P(ee.E<V> e10) {
        e10.getClass();
        this.f30113b = e10;
    }

    @Override
    public boolean H(float f10) {
        return this.f30113b.H(f10);
    }

    @Override
    public boolean He(he.H<? super V> h10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V Me(float f10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        return this.f30113b.S(k0Var);
    }

    @Override
    public V c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f30113b.containsValue(obj);
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30113b.d0(fArr);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30113b.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.f30113b.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f30113b.isEmpty();
    }

    @Override
    public Zd.J<V> iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30113b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30113b.j0(i10);
    }

    @Override
    public Collection<V> k() {
        if (this.f30115d == null) {
            this.f30115d = Collections.unmodifiableCollection(this.f30113b.k());
        }
        return this.f30115d;
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30114c == null) {
            this.f30114c = Sd.c.D2(this.f30113b.keySet());
        }
        return this.f30114c;
    }

    @Override
    public float l() {
        return this.f30113b.l();
    }

    @Override
    public V l9(float f10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean n6(he.H<? super V> h10) {
        return this.f30113b.n6(h10);
    }

    @Override
    public void p6(ee.E<? extends V> e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V q0(float f10) {
        return this.f30113b.q0(f10);
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30113b.size();
    }

    public String toString() {
        return this.f30113b.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        return this.f30113b.v0(vArr);
    }

    @Override
    public Object[] values() {
        return this.f30113b.values();
    }
}
