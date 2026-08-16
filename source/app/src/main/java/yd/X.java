package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class X implements ee.J, Serializable {

    public static final long f30147e = -1034234728574286014L;

    public final ee.J f30148b;

    public transient InterfaceC13971e f30149c = null;

    public transient Sd.f f30150d = null;

    public class a implements Zd.O {

        public Zd.O f30151b;

        public a() {
            this.f30151b = X.this.f30148b.iterator();
        }

        @Override
        public void g() {
            this.f30151b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30151b.hasNext();
        }

        @Override
        public int key() {
            return this.f30151b.key();
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
            return this.f30151b.value();
        }
    }

    public X(ee.J j10) {
        j10.getClass();
        this.f30148b = j10;
    }

    @Override
    public boolean B(he.I i10) {
        return this.f30148b.B(i10);
    }

    @Override
    public boolean Db(int i10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean F(int i10) {
        return this.f30148b.F(i10);
    }

    @Override
    public boolean F0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30148b.J(s10);
    }

    @Override
    public float Nd(int i10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U(float f10) {
        return this.f30148b.U(f10);
    }

    @Override
    public float Yb(int i10, float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float Z4(int i10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f30148b.c0(fArr);
    }

    @Override
    public void c9(ee.J j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean db(he.N n10) {
        return this.f30148b.db(n10);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30148b.equals(obj);
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30148b.f0(iArr);
    }

    @Override
    public float get(int i10) {
        return this.f30148b.get(i10);
    }

    public int hashCode() {
        return this.f30148b.hashCode();
    }

    @Override
    public float i() {
        return this.f30148b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30148b.isEmpty();
    }

    @Override
    public Zd.O iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30148b.j();
    }

    @Override
    public Sd.f k() {
        if (this.f30150d == null) {
            this.f30150d = Sd.c.e1(this.f30148b.k());
        }
        return this.f30150d;
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30149c == null) {
            this.f30149c = Sd.c.E2(this.f30148b.keySet());
        }
        return this.f30149c;
    }

    @Override
    public int l() {
        return this.f30148b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30148b.size();
    }

    public String toString() {
        return this.f30148b.toString();
    }

    @Override
    public float[] values() {
        return this.f30148b.values();
    }

    @Override
    public boolean vd(he.N n10) {
        throw new UnsupportedOperationException();
    }
}
