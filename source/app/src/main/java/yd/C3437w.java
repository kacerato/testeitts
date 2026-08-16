package Yd;

import Zd.InterfaceC3461t;
import ee.InterfaceC13076q;
import he.InterfaceC13453h;
import he.InterfaceC13463s;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class C3437w implements InterfaceC13076q, Serializable {

    public static final long f30387e = -1034234728574286014L;

    public final InterfaceC13076q f30388b;

    public transient InterfaceC13969c f30389c = null;

    public transient Sd.a f30390d = null;

    public class a implements InterfaceC3461t {

        public InterfaceC3461t f30391b;

        public a() {
            this.f30391b = C3437w.this.f30388b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30391b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30391b.hasNext();
        }

        @Override
        public double key() {
            return this.f30391b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30391b.value();
        }
    }

    public C3437w(InterfaceC13076q interfaceC13076q) {
        interfaceC13076q.getClass();
        this.f30388b = interfaceC13076q;
    }

    @Override
    public boolean A(double d10) {
        return this.f30388b.A(d10);
    }

    @Override
    public byte H2(double d10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Ia(double d10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30388b.M(interfaceC13453h);
    }

    @Override
    public boolean P(byte b10) {
        return this.f30388b.P(b10);
    }

    @Override
    public void Q5(InterfaceC13076q interfaceC13076q) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f30388b.W(dArr);
    }

    @Override
    public byte a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30388b.a0(bArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30388b.equals(obj);
    }

    @Override
    public byte fe(double d10, byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte g9(double d10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean h9(InterfaceC13463s interfaceC13463s) {
        return this.f30388b.h9(interfaceC13463s);
    }

    public int hashCode() {
        return this.f30388b.hashCode();
    }

    @Override
    public byte i() {
        return this.f30388b.i();
    }

    @Override
    public boolean increment(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30388b.isEmpty();
    }

    @Override
    public InterfaceC3461t iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f30388b.j();
    }

    @Override
    public Sd.a k() {
        if (this.f30390d == null) {
            this.f30390d = Sd.c.b1(this.f30388b.k());
        }
        return this.f30390d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f30388b.k0(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f30389c == null) {
            this.f30389c = Sd.c.C2(this.f30388b.keySet());
        }
        return this.f30389c;
    }

    @Override
    public double l() {
        return this.f30388b.l();
    }

    @Override
    public byte p0(double d10) {
        return this.f30388b.p0(d10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30388b.size();
    }

    public String toString() {
        return this.f30388b.toString();
    }

    @Override
    public byte[] values() {
        return this.f30388b.values();
    }

    @Override
    public boolean vc(InterfaceC13463s interfaceC13463s) {
        throw new UnsupportedOperationException();
    }
}
