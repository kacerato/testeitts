package Yd;

import ee.InterfaceC13059B;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class L implements InterfaceC13059B, Serializable {

    public static final long f30079e = -1034234728574286014L;

    public final InterfaceC13059B f30080b;

    public transient InterfaceC13970d f30081c = null;

    public transient Sd.f f30082d = null;

    public class a implements Zd.F {

        public Zd.F f30083b;

        public a() {
            this.f30083b = L.this.f30080b.iterator();
        }

        @Override
        public void g() {
            this.f30083b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30083b.hasNext();
        }

        @Override
        public float key() {
            return this.f30083b.key();
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
            return this.f30083b.value();
        }
    }

    public L(InterfaceC13059B interfaceC13059B) {
        interfaceC13059B.getClass();
        this.f30080b = interfaceC13059B;
    }

    @Override
    public boolean B(he.I i10) {
        return this.f30080b.B(i10);
    }

    @Override
    public boolean G0(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G9(float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Gc(he.E e10) {
        return this.f30080b.Gc(e10);
    }

    @Override
    public boolean H(float f10) {
        return this.f30080b.H(f10);
    }

    @Override
    public float J5(float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float Se(float f10, float f11, float f12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U(float f10) {
        return this.f30080b.U(f10);
    }

    @Override
    public void U5(InterfaceC13059B interfaceC13059B) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f30080b.c0(fArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30080b.d0(fArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30080b.equals(obj);
    }

    public int hashCode() {
        return this.f30080b.hashCode();
    }

    @Override
    public float i() {
        return this.f30080b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30080b.isEmpty();
    }

    @Override
    public Zd.F iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30080b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30080b.j0(i10);
    }

    @Override
    public Sd.f k() {
        if (this.f30082d == null) {
            this.f30082d = Sd.c.e1(this.f30080b.k());
        }
        return this.f30082d;
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30081c == null) {
            this.f30081c = Sd.c.D2(this.f30080b.keySet());
        }
        return this.f30081c;
    }

    @Override
    public float l() {
        return this.f30080b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float q0(float f10) {
        return this.f30080b.q0(f10);
    }

    @Override
    public boolean r3(he.E e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float se(float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30080b.size();
    }

    public String toString() {
        return this.f30080b.toString();
    }

    @Override
    public float[] values() {
        return this.f30080b.values();
    }
}
