package Yd;

import Zd.InterfaceC3464w;
import ee.InterfaceC13078t;
import he.InterfaceC13466v;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class A implements InterfaceC13078t, Serializable {

    public static final long f29979e = -1034234728574286014L;

    public final InterfaceC13078t f29980b;

    public transient InterfaceC13969c f29981c = null;

    public transient Sd.f f29982d = null;

    public class a implements InterfaceC3464w {

        public InterfaceC3464w f29983b;

        public a() {
            this.f29983b = A.this.f29980b.iterator();
        }

        @Override
        public void g() {
            this.f29983b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f29983b.hasNext();
        }

        @Override
        public double key() {
            return this.f29983b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public float setValue(float f10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public float value() {
            return this.f29983b.value();
        }
    }

    public A(InterfaceC13078t interfaceC13078t) {
        interfaceC13078t.getClass();
        this.f29980b = interfaceC13078t;
    }

    @Override
    public boolean A(double d10) {
        return this.f29980b.A(d10);
    }

    @Override
    public boolean B(he.I i10) {
        return this.f29980b.B(i10);
    }

    @Override
    public float Dc(double d10, float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float K2(double d10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Ra(double d10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void Sb(InterfaceC13078t interfaceC13078t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U(float f10) {
        return this.f29980b.U(f10);
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f29980b.W(dArr);
    }

    @Override
    public boolean X6(InterfaceC13466v interfaceC13466v) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float b9(double d10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f29980b.c0(fArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f29980b.equals(obj);
    }

    public int hashCode() {
        return this.f29980b.hashCode();
    }

    @Override
    public float i() {
        return this.f29980b.i();
    }

    @Override
    public boolean increment(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f29980b.isEmpty();
    }

    @Override
    public InterfaceC3464w iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f29980b.j();
    }

    @Override
    public Sd.f k() {
        if (this.f29982d == null) {
            this.f29982d = Sd.c.e1(this.f29980b.k());
        }
        return this.f29982d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f29980b.k0(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f29981c == null) {
            this.f29981c = Sd.c.C2(this.f29980b.keySet());
        }
        return this.f29981c;
    }

    @Override
    public double l() {
        return this.f29980b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float p0(double d10) {
        return this.f29980b.p0(d10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean q9(InterfaceC13466v interfaceC13466v) {
        return this.f29980b.q9(interfaceC13466v);
    }

    @Override
    public int size() {
        return this.f29980b.size();
    }

    public String toString() {
        return this.f29980b.toString();
    }

    @Override
    public float[] values() {
        return this.f29980b.values();
    }
}
