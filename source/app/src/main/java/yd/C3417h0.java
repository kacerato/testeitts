package Yd;

import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3417h0 implements ee.Q, Serializable {

    public static final long f30238e = -1034234728574286014L;

    public final ee.Q f30239b;

    public transient InterfaceC13972f f30240c = null;

    public transient Sd.e f30241d = null;

    public class a implements Zd.Y {

        public Zd.Y f30242b;

        public a() {
            this.f30242b = C3417h0.this.f30239b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30242b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30242b.hasNext();
        }

        @Override
        public long key() {
            return this.f30242b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30242b.value();
        }
    }

    public C3417h0(ee.Q q10) {
        q10.getClass();
        this.f30239b = q10;
    }

    @Override
    public boolean E(long j10) {
        return this.f30239b.E(j10);
    }

    @Override
    public boolean G6(he.W w10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30239b.I(interfaceC13470z);
    }

    @Override
    public boolean T(double d10) {
        return this.f30239b.T(d10);
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30239b.b0(dArr);
    }

    @Override
    public double c7(long j10, double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public double e(long j10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30239b.equals(obj);
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30239b.h0(jArr);
    }

    public int hashCode() {
        return this.f30239b.hashCode();
    }

    @Override
    public double i() {
        return this.f30239b.i();
    }

    @Override
    public void ie(ee.Q q10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30239b.isEmpty();
    }

    @Override
    public Zd.Y iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30239b.j();
    }

    @Override
    public double j7(long j10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean jb(long j10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.e k() {
        if (this.f30241d == null) {
            this.f30241d = Sd.c.d1(this.f30239b.k());
        }
        return this.f30241d;
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30240c == null) {
            this.f30240c = Sd.c.F2(this.f30239b.keySet());
        }
        return this.f30240c;
    }

    @Override
    public long l() {
        return this.f30239b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30239b.l0(b0Var);
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30239b.size();
    }

    @Override
    public boolean te(he.W w10) {
        return this.f30239b.te(w10);
    }

    public String toString() {
        return this.f30239b.toString();
    }

    @Override
    public double u(long j10) {
        return this.f30239b.u(j10);
    }

    @Override
    public double[] values() {
        return this.f30239b.values();
    }

    @Override
    public double xd(long j10, double d10) {
        throw new UnsupportedOperationException();
    }
}
