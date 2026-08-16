package Yd;

import Zd.InterfaceC3463v;
import ee.InterfaceC13077s;
import he.InterfaceC13465u;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class C3440z implements InterfaceC13077s, Serializable {

    public static final long f30406e = -1034234728574286014L;

    public final InterfaceC13077s f30407b;

    public transient InterfaceC13969c f30408c = null;

    public transient Sd.e f30409d = null;

    public class a implements InterfaceC3463v {

        public InterfaceC3463v f30410b;

        public a() {
            this.f30410b = C3440z.this.f30407b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30410b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30410b.hasNext();
        }

        @Override
        public double key() {
            return this.f30410b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30410b.value();
        }
    }

    public C3440z(InterfaceC13077s interfaceC13077s) {
        interfaceC13077s.getClass();
        this.f30407b = interfaceC13077s;
    }

    @Override
    public boolean A(double d10) {
        return this.f30407b.A(d10);
    }

    @Override
    public boolean Fa(double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30407b.I(interfaceC13470z);
    }

    @Override
    public double J2(double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void Rd(InterfaceC13077s interfaceC13077s) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T(double d10) {
        return this.f30407b.T(d10);
    }

    @Override
    public boolean T9(InterfaceC13465u interfaceC13465u) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f30407b.W(dArr);
    }

    @Override
    public double a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30407b.b0(dArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30407b.equals(obj);
    }

    public int hashCode() {
        return this.f30407b.hashCode();
    }

    @Override
    public double i() {
        return this.f30407b.i();
    }

    @Override
    public boolean increment(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30407b.isEmpty();
    }

    @Override
    public InterfaceC3463v iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f30407b.j();
    }

    @Override
    public double j9(double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.e k() {
        if (this.f30409d == null) {
            this.f30409d = Sd.c.d1(this.f30407b.k());
        }
        return this.f30409d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f30407b.k0(interfaceC13470z);
    }

    @Override
    public double kd(double d10, double d11, double d12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f30408c == null) {
            this.f30408c = Sd.c.C2(this.f30407b.keySet());
        }
        return this.f30408c;
    }

    @Override
    public double l() {
        return this.f30407b.l();
    }

    @Override
    public boolean mc(InterfaceC13465u interfaceC13465u) {
        return this.f30407b.mc(interfaceC13465u);
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double p0(double d10) {
        return this.f30407b.p0(d10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30407b.size();
    }

    public String toString() {
        return this.f30407b.toString();
    }

    @Override
    public double[] values() {
        return this.f30407b.values();
    }
}
