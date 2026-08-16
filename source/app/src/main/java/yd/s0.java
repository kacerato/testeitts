package Yd;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class s0<K> implements ee.b0<K>, Serializable {

    public static final long f30350e = -1034234728574286014L;

    public final ee.b0<K> f30351b;

    public transient Set<K> f30352c = null;

    public transient Sd.f f30353d = null;

    public class a implements Zd.i0<K> {

        public Zd.i0<K> f30354b;

        public a() {
            this.f30354b = s0.this.f30351b.iterator();
        }

        @Override
        public void g() {
            this.f30354b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30354b.hasNext();
        }

        @Override
        public K key() {
            return this.f30354b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public float setValue(float f10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public float value() {
            return this.f30354b.value();
        }
    }

    public s0(ee.b0<K> b0Var) {
        b0Var.getClass();
        this.f30351b = b0Var;
    }

    @Override
    public boolean B(he.I i10) {
        return this.f30351b.B(i10);
    }

    @Override
    public K[] C0(K[] kArr) {
        return this.f30351b.C0(kArr);
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return this.f30351b.G(k0Var);
    }

    @Override
    public boolean U(float f10) {
        return this.f30351b.U(f10);
    }

    @Override
    public void Z8(ee.b0<? extends K> b0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f30351b.c0(fArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f30351b.containsKey(obj);
    }

    @Override
    public boolean e5(K k10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30351b.equals(obj);
    }

    @Override
    public float get(Object obj) {
        return this.f30351b.get(obj);
    }

    @Override
    public int hashCode() {
        return this.f30351b.hashCode();
    }

    @Override
    public float i() {
        return this.f30351b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30351b.isEmpty();
    }

    @Override
    public Zd.i0<K> iterator() {
        return new a();
    }

    @Override
    public Object[] j() {
        return this.f30351b.j();
    }

    @Override
    public float j4(K k10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.f k() {
        if (this.f30353d == null) {
            this.f30353d = Sd.c.e1(this.f30351b.k());
        }
        return this.f30353d;
    }

    @Override
    public Set<K> keySet() {
        if (this.f30352c == null) {
            this.f30352c = Collections.unmodifiableSet(this.f30351b.keySet());
        }
        return this.f30352c;
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float pb(K k10, float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends K, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30351b.size();
    }

    @Override
    public boolean tc(he.g0<? super K> g0Var) {
        return this.f30351b.tc(g0Var);
    }

    public String toString() {
        return this.f30351b.toString();
    }

    @Override
    public boolean v9(he.g0<? super K> g0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] values() {
        return this.f30351b.values();
    }

    @Override
    public float wa(K k10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean x0(K k10) {
        throw new UnsupportedOperationException();
    }
}
