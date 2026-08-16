package Yd;

import Zd.InterfaceC3462u;
import he.InterfaceC13462q;
import he.InterfaceC13464t;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class C3438x implements ee.r, Serializable {

    public static final long f30394e = -1034234728574286014L;

    public final ee.r f30395b;

    public transient InterfaceC13969c f30396c = null;

    public transient Sd.b f30397d = null;

    public class a implements InterfaceC3462u {

        public InterfaceC3462u f30398b;

        public a() {
            this.f30398b = C3438x.this.f30395b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30398b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30398b.hasNext();
        }

        @Override
        public double key() {
            return this.f30398b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30398b.value();
        }
    }

    public C3438x(ee.r rVar) {
        rVar.getClass();
        this.f30395b = rVar;
    }

    @Override
    public boolean A(double d10) {
        return this.f30395b.A(d10);
    }

    @Override
    public boolean Ga(double d10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char I2(double d10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30395b.K(interfaceC13462q);
    }

    @Override
    public boolean O(char c10) {
        return this.f30395b.O(c10);
    }

    @Override
    public void Qe(ee.r rVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char Rc(double d10, char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f30395b.W(dArr);
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30395b.Z(cArr);
    }

    @Override
    public char a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30395b.equals(obj);
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30395b.hashCode();
    }

    @Override
    public char i() {
        return this.f30395b.i();
    }

    @Override
    public char i9(double d10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean increment(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30395b.isEmpty();
    }

    @Override
    public InterfaceC3462u iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f30395b.j();
    }

    @Override
    public Sd.b k() {
        if (this.f30397d == null) {
            this.f30397d = Sd.c.c1(this.f30395b.k());
        }
        return this.f30397d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f30395b.k0(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f30396c == null) {
            this.f30396c = Sd.c.C2(this.f30395b.keySet());
        }
        return this.f30396c;
    }

    @Override
    public double l() {
        return this.f30395b.l();
    }

    @Override
    public char p0(double d10) {
        return this.f30395b.p0(d10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30395b.size();
    }

    public String toString() {
        return this.f30395b.toString();
    }

    @Override
    public boolean u3(InterfaceC13464t interfaceC13464t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] values() {
        return this.f30395b.values();
    }

    @Override
    public boolean y8(InterfaceC13464t interfaceC13464t) {
        return this.f30395b.y8(interfaceC13464t);
    }
}
