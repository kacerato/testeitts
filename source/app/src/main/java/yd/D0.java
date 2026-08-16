package Yd;

import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class D0 implements ee.f0, Serializable {

    public static final long f30002e = -1034234728574286014L;

    public final ee.f0 f30003b;

    public transient InterfaceC13973g f30004c = null;

    public transient Sd.a f30005d = null;

    public class a implements Zd.n0 {

        public Zd.n0 f30006b;

        public a() {
            this.f30006b = D0.this.f30003b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30006b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30006b.hasNext();
        }

        @Override
        public short key() {
            return this.f30006b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30006b.value();
        }
    }

    public D0(ee.f0 f0Var) {
        f0Var.getClass();
        this.f30003b = f0Var;
    }

    @Override
    public boolean I0(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte K3(short s10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30003b.M(interfaceC13453h);
    }

    @Override
    public boolean P(byte b10) {
        return this.f30003b.P(b10);
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30003b.Y(sArr);
    }

    @Override
    public boolean Z7(short s10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30003b.a0(bArr);
    }

    @Override
    public byte a7(short s10, byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte d(short s10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30003b.equals(obj);
    }

    public int hashCode() {
        return this.f30003b.hashCode();
    }

    @Override
    public void hd(ee.f0 f0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte i() {
        return this.f30003b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30003b.isEmpty();
    }

    @Override
    public Zd.n0 iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30003b.j();
    }

    @Override
    public byte ja(short s10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.a k() {
        if (this.f30005d == null) {
            this.f30005d = Sd.c.b1(this.f30003b.k());
        }
        return this.f30005d;
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30004c == null) {
            this.f30004c = Sd.c.G2(this.f30003b.keySet());
        }
        return this.f30004c;
    }

    @Override
    public short l() {
        return this.f30003b.l();
    }

    @Override
    public byte n0(short s10) {
        return this.f30003b.n0(s10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30003b.size();
    }

    public String toString() {
        return this.f30003b.toString();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30003b.v(t0Var);
    }

    @Override
    public byte[] values() {
        return this.f30003b.values();
    }

    @Override
    public boolean xc(he.m0 m0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean z(short s10) {
        return this.f30003b.z(s10);
    }

    @Override
    public boolean z5(he.m0 m0Var) {
        return this.f30003b.z5(m0Var);
    }
}
