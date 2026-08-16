package Yd;

import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class G0 implements ee.h0, Serializable {

    public static final long f30031e = -1034234728574286014L;

    public final ee.h0 f30032b;

    public transient InterfaceC13973g f30033c = null;

    public transient Sd.e f30034d = null;

    public class a implements Zd.p0 {

        public Zd.p0 f30035b;

        public a() {
            this.f30035b = G0.this.f30032b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30035b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30035b.hasNext();
        }

        @Override
        public short key() {
            return this.f30035b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30035b.value();
        }
    }

    public G0(ee.h0 h0Var) {
        h0Var.getClass();
        this.f30032b = h0Var;
    }

    @Override
    public double E3(short s10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30032b.I(interfaceC13470z);
    }

    @Override
    public boolean I0(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Nc(he.o0 o0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void Q7(ee.h0 h0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T(double d10) {
        return this.f30032b.T(d10);
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30032b.Y(sArr);
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30032b.b0(dArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public double d(short s10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30032b.equals(obj);
    }

    @Override
    public boolean g8(short s10, double d10) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30032b.hashCode();
    }

    @Override
    public double i() {
        return this.f30032b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30032b.isEmpty();
    }

    @Override
    public Zd.p0 iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30032b.j();
    }

    @Override
    public Sd.e k() {
        if (this.f30034d == null) {
            this.f30034d = Sd.c.d1(this.f30032b.k());
        }
        return this.f30034d;
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30033c == null) {
            this.f30033c = Sd.c.G2(this.f30032b.keySet());
        }
        return this.f30033c;
    }

    @Override
    public short l() {
        return this.f30032b.l();
    }

    @Override
    public double lc(short s10, double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean m8(he.o0 o0Var) {
        return this.f30032b.m8(o0Var);
    }

    @Override
    public double ma(short s10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double n0(short s10) {
        return this.f30032b.n0(s10);
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30032b.size();
    }

    public String toString() {
        return this.f30032b.toString();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30032b.v(t0Var);
    }

    @Override
    public double[] values() {
        return this.f30032b.values();
    }

    @Override
    public boolean z(short s10) {
        return this.f30032b.z(s10);
    }
}
