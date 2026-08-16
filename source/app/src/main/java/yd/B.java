package Yd;

import Zd.InterfaceC3465x;
import ee.InterfaceC13079u;
import he.InterfaceC13467w;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class B implements InterfaceC13079u, Serializable {

    public static final long f29986e = -1034234728574286014L;

    public final InterfaceC13079u f29987b;

    public transient InterfaceC13969c f29988c = null;

    public transient Sd.g f29989d = null;

    public class a implements InterfaceC3465x {

        public InterfaceC3465x f29990b;

        public a() {
            this.f29990b = B.this.f29987b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f29990b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f29990b.hasNext();
        }

        @Override
        public double key() {
            return this.f29990b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f29990b.value();
        }
    }

    public B(InterfaceC13079u interfaceC13079u) {
        interfaceC13079u.getClass();
        this.f29987b = interfaceC13079u;
    }

    @Override
    public boolean A(double d10) {
        return this.f29987b.A(d10);
    }

    @Override
    public int N2(double d10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int N4(double d10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Pa(double d10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(int i10) {
        return this.f29987b.Q(i10);
    }

    @Override
    public boolean S5(InterfaceC13467w interfaceC13467w) {
        return this.f29987b.S5(interfaceC13467w);
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f29987b.W(dArr);
    }

    @Override
    public boolean W5(InterfaceC13467w interfaceC13467w) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f29987b.e0(iArr);
    }

    @Override
    public int e9(double d10, int i10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f29987b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void g3(InterfaceC13079u interfaceC13079u) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f29987b.hashCode();
    }

    @Override
    public int i() {
        return this.f29987b.i();
    }

    @Override
    public boolean increment(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f29987b.isEmpty();
    }

    @Override
    public InterfaceC3465x iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f29987b.j();
    }

    @Override
    public Sd.g k() {
        if (this.f29989d == null) {
            this.f29989d = Sd.c.f1(this.f29987b.k());
        }
        return this.f29989d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f29987b.k0(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f29988c == null) {
            this.f29988c = Sd.c.C2(this.f29987b.keySet());
        }
        return this.f29988c;
    }

    @Override
    public double l() {
        return this.f29987b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f29987b.m0(s10);
    }

    @Override
    public int p0(double d10) {
        return this.f29987b.p0(d10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f29987b.size();
    }

    public String toString() {
        return this.f29987b.toString();
    }

    @Override
    public int[] values() {
        return this.f29987b.values();
    }
}
