package Yd;

import ee.InterfaceC13074o;
import he.InterfaceC13461p;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3434t<V> implements InterfaceC13074o<V>, Serializable {

    public static final long f30356e = -1034234728574286014L;

    public final InterfaceC13074o<V> f30357b;

    public transient InterfaceC13968b f30358c = null;

    public transient Collection<V> f30359d = null;

    public class a implements Zd.r<V> {

        public Zd.r<V> f30360b;

        public a() {
            this.f30360b = C3434t.this.f30357b.iterator();
        }

        @Override
        public void g() {
            this.f30360b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30360b.hasNext();
        }

        @Override
        public char key() {
            return this.f30360b.key();
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
            return this.f30360b.value();
        }
    }

    public C3434t(InterfaceC13074o<V> interfaceC13074o) {
        interfaceC13074o.getClass();
        this.f30357b = interfaceC13074o;
    }

    @Override
    public boolean C(char c10) {
        return this.f30357b.C(c10);
    }

    @Override
    public V I3(char c10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean N5(InterfaceC13461p<? super V> interfaceC13461p) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        return this.f30357b.S(k0Var);
    }

    @Override
    public boolean Tb(InterfaceC13461p<? super V> interfaceC13461p) {
        return this.f30357b.Tb(interfaceC13461p);
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30357b.V(cArr);
    }

    @Override
    public V b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V cc(char c10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f30357b.containsValue(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30357b.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.f30357b.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f30357b.isEmpty();
    }

    @Override
    public Zd.r<V> iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30357b.j();
    }

    @Override
    public Collection<V> k() {
        if (this.f30359d == null) {
            this.f30359d = Collections.unmodifiableCollection(this.f30357b.k());
        }
        return this.f30359d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30358c == null) {
            this.f30358c = Sd.c.B2(this.f30357b.keySet());
        }
        return this.f30358c;
    }

    @Override
    public char l() {
        return this.f30357b.l();
    }

    @Override
    public V o0(char c10) {
        return this.f30357b.o0(c10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r8(InterfaceC13074o<? extends V> interfaceC13074o) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30357b.size();
    }

    public String toString() {
        return this.f30357b.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        return this.f30357b.v0(vArr);
    }

    @Override
    public Object[] values() {
        return this.f30357b.values();
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30357b.y(interfaceC13462q);
    }
}
