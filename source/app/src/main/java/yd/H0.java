package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class H0 implements ee.i0, Serializable {

    public static final long f30043e = -1034234728574286014L;

    public final ee.i0 f30044b;

    public transient InterfaceC13973g f30045c = null;

    public transient Sd.f f30046d = null;

    public class a implements Zd.q0 {

        public Zd.q0 f30047b;

        public a() {
            this.f30047b = H0.this.f30044b.iterator();
        }

        @Override
        public void g() {
            this.f30047b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30047b.hasNext();
        }

        @Override
        public short key() {
            return this.f30047b.key();
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
            return this.f30047b.value();
        }
    }

    public H0(ee.i0 i0Var) {
        i0Var.getClass();
        this.f30044b = i0Var;
    }

    @Override
    public void A6(ee.i0 i0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean B(he.I i10) {
        return this.f30044b.B(i10);
    }

    @Override
    public boolean B8(he.p0 p0Var) {
        return this.f30044b.B8(p0Var);
    }

    @Override
    public boolean I0(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float J3(short s10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Kd(he.p0 p0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U(float f10) {
        return this.f30044b.U(f10);
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30044b.Y(sArr);
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f30044b.c0(fArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float d(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean e8(short s10, float f10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30044b.equals(obj);
    }

    public int hashCode() {
        return this.f30044b.hashCode();
    }

    @Override
    public float i() {
        return this.f30044b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30044b.isEmpty();
    }

    @Override
    public Zd.q0 iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30044b.j();
    }

    @Override
    public Sd.f k() {
        if (this.f30046d == null) {
            this.f30046d = Sd.c.e1(this.f30044b.k());
        }
        return this.f30046d;
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30045c == null) {
            this.f30045c = Sd.c.G2(this.f30044b.keySet());
        }
        return this.f30045c;
    }

    @Override
    public short l() {
        return this.f30044b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float n0(short s10) {
        return this.f30044b.n0(s10);
    }

    @Override
    public float pa(short s10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30044b.size();
    }

    public String toString() {
        return this.f30044b.toString();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30044b.v(t0Var);
    }

    @Override
    public float[] values() {
        return this.f30044b.values();
    }

    @Override
    public float yb(short s10, float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean z(short s10) {
        return this.f30044b.z(s10);
    }
}
