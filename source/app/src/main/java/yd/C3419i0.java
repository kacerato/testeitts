package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3419i0 implements ee.S, Serializable {

    public static final long f30250e = -1034234728574286014L;

    public final ee.S f30251b;

    public transient InterfaceC13972f f30252c = null;

    public transient Sd.f f30253d = null;

    public class a implements Zd.Z {

        public Zd.Z f30254b;

        public a() {
            this.f30254b = C3419i0.this.f30251b.iterator();
        }

        @Override
        public void g() {
            this.f30254b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30254b.hasNext();
        }

        @Override
        public long key() {
            return this.f30254b.key();
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
            return this.f30254b.value();
        }
    }

    public C3419i0(ee.S s10) {
        s10.getClass();
        this.f30251b = s10;
    }

    @Override
    public boolean B(he.I i10) {
        return this.f30251b.B(i10);
    }

    @Override
    public boolean E(long j10) {
        return this.f30251b.E(j10);
    }

    @Override
    public boolean H0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float I7(long j10, float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U(float f10) {
        return this.f30251b.U(f10);
    }

    @Override
    public boolean Y5(he.X x10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f30251b.c0(fArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void d7(ee.S s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float e(long j10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30251b.equals(obj);
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30251b.h0(jArr);
    }

    public int hashCode() {
        return this.f30251b.hashCode();
    }

    @Override
    public boolean hb(long j10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float i() {
        return this.f30251b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30251b.isEmpty();
    }

    @Override
    public Zd.Z iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30251b.j();
    }

    @Override
    public Sd.f k() {
        if (this.f30253d == null) {
            this.f30253d = Sd.c.e1(this.f30251b.k());
        }
        return this.f30253d;
    }

    @Override
    public float k7(long j10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30252c == null) {
            this.f30252c = Sd.c.F2(this.f30251b.keySet());
        }
        return this.f30252c;
    }

    @Override
    public long l() {
        return this.f30251b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30251b.l0(b0Var);
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float od(long j10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30251b.size();
    }

    public String toString() {
        return this.f30251b.toString();
    }

    @Override
    public float u(long j10) {
        return this.f30251b.u(j10);
    }

    @Override
    public float[] values() {
        return this.f30251b.values();
    }

    @Override
    public boolean wc(he.X x10) {
        return this.f30251b.wc(x10);
    }
}
