package Yd;

import Zd.InterfaceC3451i;
import ee.InterfaceC13066g;
import he.InterfaceC13452g;
import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3418i<V> implements InterfaceC13066g<V>, Serializable {

    public static final long f30244e = -1034234728574286014L;

    public final InterfaceC13066g<V> f30245b;

    public transient InterfaceC13967a f30246c = null;

    public transient Collection<V> f30247d = null;

    public class a implements InterfaceC3451i<V> {

        public InterfaceC3451i<V> f30248b;

        public a() {
            this.f30248b = C3418i.this.f30245b.iterator();
        }

        @Override
        public void g() {
            this.f30248b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30248b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30248b.key();
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
            return this.f30248b.value();
        }
    }

    public C3418i(InterfaceC13066g<V> interfaceC13066g) {
        interfaceC13066g.getClass();
        this.f30245b = interfaceC13066g;
    }

    @Override
    public boolean D(byte b10) {
        return this.f30245b.D(b10);
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        return this.f30245b.S(k0Var);
    }

    @Override
    public boolean Tc(InterfaceC13452g<? super V> interfaceC13452g) {
        return this.f30245b.Tc(interfaceC13452g);
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30245b.X(bArr);
    }

    @Override
    public V ab(byte b10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f30245b.containsValue(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30245b.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.f30245b.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f30245b.isEmpty();
    }

    @Override
    public InterfaceC3451i<V> iterator() {
        return new a();
    }

    @Override
    public byte[] j() {
        return this.f30245b.j();
    }

    @Override
    public Collection<V> k() {
        if (this.f30247d == null) {
            this.f30247d = Collections.unmodifiableCollection(this.f30245b.k());
        }
        return this.f30247d;
    }

    @Override
    public V k4(byte b10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30246c == null) {
            this.f30246c = Sd.c.A2(this.f30245b.keySet());
        }
        return this.f30246c;
    }

    @Override
    public byte l() {
        return this.f30245b.l();
    }

    @Override
    public V m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V s0(byte b10) {
        return this.f30245b.s0(b10);
    }

    @Override
    public int size() {
        return this.f30245b.size();
    }

    @Override
    public void t6(InterfaceC13066g<? extends V> interfaceC13066g) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.f30245b.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        return this.f30245b.v0(vArr);
    }

    @Override
    public boolean v4(InterfaceC13452g<? super V> interfaceC13452g) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Object[] values() {
        return this.f30245b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30245b.w(interfaceC13453h);
    }
}
