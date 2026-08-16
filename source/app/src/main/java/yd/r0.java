package Yd;

import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class r0<K> implements ee.a0<K>, Serializable {

    public static final long f30338e = -1034234728574286014L;

    public final ee.a0<K> f30339b;

    public transient Set<K> f30340c = null;

    public transient Sd.e f30341d = null;

    public class a implements Zd.h0<K> {

        public Zd.h0<K> f30342b;

        public a() {
            this.f30342b = r0.this.f30339b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30342b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30342b.hasNext();
        }

        @Override
        public K key() {
            return this.f30342b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30342b.value();
        }
    }

    public r0(ee.a0<K> a0Var) {
        a0Var.getClass();
        this.f30339b = a0Var;
    }

    @Override
    public K[] C0(K[] kArr) {
        return this.f30339b.C0(kArr);
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return this.f30339b.G(k0Var);
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30339b.I(interfaceC13470z);
    }

    @Override
    public double La(K k10, double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Pd(he.f0<? super K> f0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T(double d10) {
        return this.f30339b.T(d10);
    }

    @Override
    public void Z6(ee.a0<? extends K> a0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30339b.b0(dArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f30339b.containsKey(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30339b.equals(obj);
    }

    @Override
    public boolean f8(he.f0<? super K> f0Var) {
        return this.f30339b.f8(f0Var);
    }

    @Override
    public double get(Object obj) {
        return this.f30339b.get(obj);
    }

    @Override
    public int hashCode() {
        return this.f30339b.hashCode();
    }

    @Override
    public double i() {
        return this.f30339b.i();
    }

    @Override
    public double i4(K k10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean i5(K k10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30339b.isEmpty();
    }

    @Override
    public Zd.h0<K> iterator() {
        return new a();
    }

    @Override
    public Object[] j() {
        return this.f30339b.j();
    }

    @Override
    public Sd.e k() {
        if (this.f30341d == null) {
            this.f30341d = Sd.c.d1(this.f30339b.k());
        }
        return this.f30341d;
    }

    @Override
    public Set<K> keySet() {
        if (this.f30340c == null) {
            this.f30340c = Collections.unmodifiableSet(this.f30339b.keySet());
        }
        return this.f30340c;
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends K, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double sa(K k10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30339b.size();
    }

    public String toString() {
        return this.f30339b.toString();
    }

    @Override
    public double[] values() {
        return this.f30339b.values();
    }

    @Override
    public boolean x0(K k10) {
        throw new UnsupportedOperationException();
    }
}
