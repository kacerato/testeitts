package Yd;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3427m0<V> implements ee.V<V>, Serializable {

    public static final long f30289e = -1034234728574286014L;

    public final ee.V<V> f30290b;

    public transient InterfaceC13972f f30291c = null;

    public transient Collection<V> f30292d = null;

    public class a implements Zd.d0<V> {

        public Zd.d0<V> f30293b;

        public a() {
            this.f30293b = C3427m0.this.f30290b.iterator();
        }

        @Override
        public void g() {
            this.f30293b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30293b.hasNext();
        }

        @Override
        public long key() {
            return this.f30293b.key();
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
            return this.f30293b.value();
        }
    }

    public C3427m0(ee.V<V> v10) {
        v10.getClass();
        this.f30290b = v10;
    }

    @Override
    public V Bd(long j10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean E(long j10) {
        return this.f30290b.E(j10);
    }

    @Override
    public void L6(ee.V<? extends V> v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        return this.f30290b.S(k0Var);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f30290b.containsValue(obj);
    }

    @Override
    public V e(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30290b.equals(obj);
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30290b.h0(jArr);
    }

    @Override
    public int hashCode() {
        return this.f30290b.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f30290b.isEmpty();
    }

    @Override
    public Zd.d0<V> iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30290b.j();
    }

    @Override
    public boolean j5(he.a0<? super V> a0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Collection<V> k() {
        if (this.f30292d == null) {
            this.f30292d = Collections.unmodifiableCollection(this.f30290b.k());
        }
        return this.f30292d;
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30291c == null) {
            this.f30291c = Sd.c.F2(this.f30290b.keySet());
        }
        return this.f30291c;
    }

    @Override
    public long l() {
        return this.f30290b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30290b.l0(b0Var);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30290b.size();
    }

    @Override
    public boolean tb(he.a0<? super V> a0Var) {
        return this.f30290b.tb(a0Var);
    }

    @Override
    public V td(long j10, V v10) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.f30290b.toString();
    }

    @Override
    public V u(long j10) {
        return this.f30290b.u(j10);
    }

    @Override
    public V[] v0(V[] vArr) {
        return this.f30290b.v0(vArr);
    }

    @Override
    public Object[] values() {
        return this.f30290b.values();
    }
}
