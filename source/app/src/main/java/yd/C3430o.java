package Yd;

import Zd.InterfaceC3455m;
import ee.InterfaceC13070k;
import he.InterfaceC13457l;
import he.InterfaceC13462q;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3430o implements InterfaceC13070k, Serializable {

    public static final long f30300e = -1034234728574286014L;

    public final InterfaceC13070k f30301b;

    public transient InterfaceC13968b f30302c = null;

    public transient Sd.e f30303d = null;

    public class a implements InterfaceC3455m {

        public InterfaceC3455m f30304b;

        public a() {
            this.f30304b = C3430o.this.f30301b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30304b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30304b.hasNext();
        }

        @Override
        public char key() {
            return this.f30304b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30304b.value();
        }
    }

    public C3430o(InterfaceC13070k interfaceC13070k) {
        interfaceC13070k.getClass();
        this.f30301b = interfaceC13070k;
    }

    @Override
    public double A9(char c10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double B4(char c10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean C(char c10) {
        return this.f30301b.C(c10);
    }

    @Override
    public double C5(char c10, double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean D0(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Hd(InterfaceC13457l interfaceC13457l) {
        return this.f30301b.Hd(interfaceC13457l);
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30301b.I(interfaceC13470z);
    }

    @Override
    public boolean M8(InterfaceC13457l interfaceC13457l) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T(double d10) {
        return this.f30301b.T(d10);
    }

    @Override
    public boolean Ud(char c10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30301b.V(cArr);
    }

    @Override
    public double b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30301b.b0(dArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30301b.equals(obj);
    }

    public int hashCode() {
        return this.f30301b.hashCode();
    }

    @Override
    public double i() {
        return this.f30301b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30301b.isEmpty();
    }

    @Override
    public InterfaceC3455m iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30301b.j();
    }

    @Override
    public Sd.e k() {
        if (this.f30303d == null) {
            this.f30303d = Sd.c.d1(this.f30301b.k());
        }
        return this.f30303d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30302c == null) {
            this.f30302c = Sd.c.B2(this.f30301b.keySet());
        }
        return this.f30302c;
    }

    @Override
    public char l() {
        return this.f30301b.l();
    }

    @Override
    public void l6(InterfaceC13070k interfaceC13070k) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double o0(char c10) {
        return this.f30301b.o0(c10);
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30301b.size();
    }

    public String toString() {
        return this.f30301b.toString();
    }

    @Override
    public double[] values() {
        return this.f30301b.values();
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30301b.y(interfaceC13462q);
    }
}
