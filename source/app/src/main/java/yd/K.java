package Yd;

import ee.InterfaceC13058A;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class K implements InterfaceC13058A, Serializable {

    public static final long f30067e = -1034234728574286014L;

    public final InterfaceC13058A f30068b;

    public transient InterfaceC13970d f30069c = null;

    public transient Sd.e f30070d = null;

    public class a implements Zd.E {

        public Zd.E f30071b;

        public a() {
            this.f30071b = K.this.f30068b.iterator();
        }

        @Override
        public double f(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30071b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30071b.hasNext();
        }

        @Override
        public float key() {
            return this.f30071b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double value() {
            return this.f30071b.value();
        }
    }

    public K(InterfaceC13058A interfaceC13058A) {
        interfaceC13058A.getClass();
        this.f30068b = interfaceC13058A;
    }

    @Override
    public boolean G0(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H(float f10) {
        return this.f30068b.H(f10);
    }

    @Override
    public double H5(float f10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        return this.f30068b.I(interfaceC13470z);
    }

    @Override
    public boolean I9(float f10, double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K5(he.D d10) {
        return this.f30068b.K5(d10);
    }

    @Override
    public double M9(float f10, double d10, double d11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T(double d10) {
        return this.f30068b.T(d10);
    }

    @Override
    public double[] b0(double[] dArr) {
        return this.f30068b.b0(dArr);
    }

    @Override
    public double c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean cb(he.D d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30068b.d0(fArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30068b.equals(obj);
    }

    public int hashCode() {
        return this.f30068b.hashCode();
    }

    @Override
    public double i() {
        return this.f30068b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30068b.isEmpty();
    }

    @Override
    public Zd.E iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30068b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30068b.j0(i10);
    }

    @Override
    public Sd.e k() {
        if (this.f30070d == null) {
            this.f30070d = Sd.c.d1(this.f30068b.k());
        }
        return this.f30070d;
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30069c == null) {
            this.f30069c = Sd.c.D2(this.f30068b.keySet());
        }
        return this.f30069c;
    }

    @Override
    public float l() {
        return this.f30068b.l();
    }

    @Override
    public void p(Ud.c cVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Double> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double q0(float f10) {
        return this.f30068b.q0(f10);
    }

    @Override
    public int size() {
        return this.f30068b.size();
    }

    public String toString() {
        return this.f30068b.toString();
    }

    @Override
    public double[] values() {
        return this.f30068b.values();
    }

    @Override
    public void w5(InterfaceC13058A interfaceC13058A) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double ye(float f10, double d10) {
        throw new UnsupportedOperationException();
    }
}
