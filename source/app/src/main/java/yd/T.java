package Yd;

import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class T implements ee.G, Serializable {

    public static final long f30125e = -1034234728574286014L;

    public final ee.G f30126b;

    public transient InterfaceC13971e f30127c = null;

    public transient Sd.a f30128d = null;

    public class a implements Zd.L {

        public Zd.L f30129b;

        public a() {
            this.f30129b = T.this.f30126b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30129b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30129b.hasNext();
        }

        @Override
        public int key() {
            return this.f30129b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30129b.value();
        }
    }

    public T(ee.G g10) {
        g10.getClass();
        this.f30126b = g10;
    }

    @Override
    public boolean F(int i10) {
        return this.f30126b.F(i10);
    }

    @Override
    public boolean F0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Ib(int i10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30126b.J(s10);
    }

    @Override
    public boolean K6(he.K k10) {
        return this.f30126b.K6(k10);
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30126b.M(interfaceC13453h);
    }

    @Override
    public boolean P(byte b10) {
        return this.f30126b.P(b10);
    }

    @Override
    public byte Td(int i10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte V4(int i10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30126b.a0(bArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30126b.equals(obj);
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30126b.f0(iArr);
    }

    @Override
    public byte get(int i10) {
        return this.f30126b.get(i10);
    }

    public int hashCode() {
        return this.f30126b.hashCode();
    }

    @Override
    public byte i() {
        return this.f30126b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30126b.isEmpty();
    }

    @Override
    public Zd.L iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30126b.j();
    }

    @Override
    public Sd.a k() {
        if (this.f30128d == null) {
            this.f30128d = Sd.c.b1(this.f30126b.k());
        }
        return this.f30128d;
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30127c == null) {
            this.f30127c = Sd.c.E2(this.f30126b.keySet());
        }
        return this.f30127c;
    }

    @Override
    public int l() {
        return this.f30126b.l();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30126b.size();
    }

    @Override
    public void t7(ee.G g10) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.f30126b.toString();
    }

    @Override
    public byte[] values() {
        return this.f30126b.values();
    }

    @Override
    public boolean x5(he.K k10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte z7(int i10, byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }
}
