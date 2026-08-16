package Yd;

import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class W implements ee.I, Serializable {

    public static final long f30141e = -1034234728574286014L;

    public final ee.I f30142b;

    public transient InterfaceC13971e f30143c = null;

    public transient Sd.e f30144d = null;

    public class a implements Zd.N {

        public Zd.N f30145b;

        public a() {
            this.f30145b = W.this.f30142b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30145b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30145b.hasNext();
        }

        @Override
        public int key() {
            return this.f30145b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30145b.value();
        }
    }

    public W(ee.I i10) {
        i10.getClass();
        this.f30142b = i10;
    }

    @Override
    public boolean F(int i10) {
        return this.f30142b.F(i10);
    }

    @Override
    public boolean F0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double F6(int i10, double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Fb(int i10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30142b.I(interfaceC13470z);
    }

    @Override
    public double Id(int i10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30142b.J(s10);
    }

    @Override
    public boolean T(double d10) {
        return this.f30142b.T(d10);
    }

    @Override
    public double W4(int i10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void W7(ee.I i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30142b.b0(dArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30142b.equals(obj);
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30142b.f0(iArr);
    }

    @Override
    public double get(int i10) {
        return this.f30142b.get(i10);
    }

    public int hashCode() {
        return this.f30142b.hashCode();
    }

    @Override
    public double i() {
        return this.f30142b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30142b.isEmpty();
    }

    @Override
    public Zd.N iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30142b.j();
    }

    @Override
    public Sd.e k() {
        if (this.f30144d == null) {
            this.f30144d = Sd.c.d1(this.f30142b.k());
        }
        return this.f30144d;
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30143c == null) {
            this.f30143c = Sd.c.E2(this.f30142b.keySet());
        }
        return this.f30143c;
    }

    @Override
    public int l() {
        return this.f30142b.l();
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean p3(he.M m10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean qc(he.M m10) {
        return this.f30142b.qc(m10);
    }

    @Override
    public double remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30142b.size();
    }

    public String toString() {
        return this.f30142b.toString();
    }

    @Override
    public double[] values() {
        return this.f30142b.values();
    }
}
