package Yd;

import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class p0<K> implements ee.Y<K>, Serializable {

    public static final long f30318e = -1034234728574286014L;

    public final ee.Y<K> f30319b;

    public transient Set<K> f30320c = null;

    public transient Sd.a f30321d = null;

    public class a implements Zd.f0<K> {

        public Zd.f0<K> f30322b;

        public a() {
            this.f30322b = p0.this.f30319b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30322b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30322b.hasNext();
        }

        @Override
        public K key() {
            return this.f30322b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30322b.value();
        }
    }

    public p0(ee.Y<K> y10) {
        y10.getClass();
        this.f30319b = y10;
    }

    @Override
    public K[] C0(K[] kArr) {
        return this.f30319b.C0(kArr);
    }

    @Override
    public byte C9(K k10, byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return this.f30319b.G(k0Var);
    }

    @Override
    public boolean L7(he.d0<? super K> d0Var) {
        return this.f30319b.L7(d0Var);
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30319b.M(interfaceC13453h);
    }

    @Override
    public boolean P(byte b10) {
        return this.f30319b.P(b10);
    }

    @Override
    public void W8(ee.Y<? extends K> y10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Zd(he.d0<? super K> d0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30319b.a0(bArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f30319b.containsKey(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30319b.equals(obj);
    }

    @Override
    public byte get(Object obj) {
        return this.f30319b.get(obj);
    }

    @Override
    public int hashCode() {
        return this.f30319b.hashCode();
    }

    @Override
    public byte i() {
        return this.f30319b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30319b.isEmpty();
    }

    @Override
    public Zd.f0<K> iterator() {
        return new a();
    }

    @Override
    public Object[] j() {
        return this.f30319b.j();
    }

    @Override
    public Sd.a k() {
        if (this.f30321d == null) {
            this.f30321d = Sd.c.b1(this.f30319b.k());
        }
        return this.f30321d;
    }

    @Override
    public Set<K> keySet() {
        if (this.f30320c == null) {
            this.f30320c = Collections.unmodifiableSet(this.f30319b.keySet());
        }
        return this.f30320c;
    }

    @Override
    public boolean m5(K k10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte oa(K k10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends K, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte r4(K k10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30319b.size();
    }

    public String toString() {
        return this.f30319b.toString();
    }

    @Override
    public byte[] values() {
        return this.f30319b.values();
    }

    @Override
    public boolean x0(K k10) {
        throw new UnsupportedOperationException();
    }
}
