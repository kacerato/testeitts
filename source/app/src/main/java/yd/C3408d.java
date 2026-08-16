package Yd;

import Zd.InterfaceC3446d;
import ee.InterfaceC13062c;
import he.InterfaceC13448c;
import he.InterfaceC13453h;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3408d implements InterfaceC13062c, Serializable {

    public static final long f30190e = -1034234728574286014L;

    public final InterfaceC13062c f30191b;

    public transient InterfaceC13967a f30192c = null;

    public transient Sd.e f30193d = null;

    public class a implements InterfaceC3446d {

        public InterfaceC3446d f30194b;

        public a() {
            this.f30194b = C3408d.this.f30191b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30194b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30194b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30194b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30194b.value();
        }
    }

    public C3408d(InterfaceC13062c interfaceC13062c) {
        interfaceC13062c.getClass();
        this.f30191b = interfaceC13062c;
    }

    @Override
    public boolean Ac(InterfaceC13448c interfaceC13448c) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean D(byte b10) {
        return this.f30191b.D(b10);
    }

    @Override
    public boolean E0(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30191b.I(interfaceC13470z);
    }

    @Override
    public void Jb(InterfaceC13062c interfaceC13062c) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T(double d10) {
        return this.f30191b.T(d10);
    }

    @Override
    public double T4(byte b10, double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double U3(byte b10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30191b.X(bArr);
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30191b.b0(dArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30191b.equals(obj);
    }

    @Override
    public double fa(byte b10, double d10) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30191b.hashCode();
    }

    @Override
    public double i() {
        return this.f30191b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30191b.isEmpty();
    }

    @Override
    public InterfaceC3446d iterator() {
        return new a();
    }

    @Override
    public byte[] j() {
        return this.f30191b.j();
    }

    @Override
    public Sd.e k() {
        if (this.f30193d == null) {
            this.f30193d = Sd.c.d1(this.f30191b.k());
        }
        return this.f30193d;
    }

    @Override
    public boolean ke(byte b10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30192c == null) {
            this.f30192c = Sd.c.A2(this.f30191b.keySet());
        }
        return this.f30192c;
    }

    @Override
    public byte l() {
        return this.f30191b.l();
    }

    @Override
    public double m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double s0(byte b10) {
        return this.f30191b.s0(b10);
    }

    @Override
    public int size() {
        return this.f30191b.size();
    }

    @Override
    public boolean t3(InterfaceC13448c interfaceC13448c) {
        return this.f30191b.t3(interfaceC13448c);
    }

    public String toString() {
        return this.f30191b.toString();
    }

    @Override
    public double[] values() {
        return this.f30191b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30191b.w(interfaceC13453h);
    }
}
