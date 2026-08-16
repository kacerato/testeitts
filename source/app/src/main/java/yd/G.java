package Yd;

import ee.InterfaceC13082x;
import he.InterfaceC13444A;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class G implements InterfaceC13082x, Serializable {

    public static final long f30025e = -1034234728574286014L;

    public final InterfaceC13082x f30026b;

    public transient InterfaceC13969c f30027c = null;

    public transient Sd.i f30028d = null;

    public class a implements Zd.B {

        public Zd.B f30029b;

        public a() {
            this.f30029b = G.this.f30026b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30029b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30029b.hasNext();
        }

        @Override
        public double key() {
            return this.f30029b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30029b.value();
        }
    }

    public G(InterfaceC13082x interfaceC13082x) {
        interfaceC13082x.getClass();
        this.f30026b = interfaceC13082x;
    }

    @Override
    public boolean A(double d10) {
        return this.f30026b.A(d10);
    }

    @Override
    public void H4(InterfaceC13082x interfaceC13082x) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Je(InterfaceC13444A interfaceC13444A) {
        return this.f30026b.Je(interfaceC13444A);
    }

    @Override
    public boolean L(short s10) {
        return this.f30026b.L(s10);
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30026b.N(t0Var);
    }

    @Override
    public boolean Sa(double d10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f30026b.W(dArr);
    }

    @Override
    public short Y2(double d10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30026b.equals(obj);
    }

    public int hashCode() {
        return this.f30026b.hashCode();
    }

    @Override
    public short i() {
        return this.f30026b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30026b.i0(sArr);
    }

    @Override
    public boolean increment(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30026b.isEmpty();
    }

    @Override
    public Zd.B iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f30026b.j();
    }

    @Override
    public Sd.i k() {
        if (this.f30028d == null) {
            this.f30028d = Sd.c.h1(this.f30026b.k());
        }
        return this.f30028d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f30026b.k0(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f30027c == null) {
            this.f30027c = Sd.c.C2(this.f30026b.keySet());
        }
        return this.f30027c;
    }

    @Override
    public double l() {
        return this.f30026b.l();
    }

    @Override
    public short p0(double d10) {
        return this.f30026b.p0(d10);
    }

    @Override
    public short p8(double d10, short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short s9(double d10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30026b.size();
    }

    public String toString() {
        return this.f30026b.toString();
    }

    @Override
    public boolean u9(InterfaceC13444A interfaceC13444A) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short[] values() {
        return this.f30026b.values();
    }
}
