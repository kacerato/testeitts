package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class S implements ee.F, Serializable {

    public static final long f30119e = -1034234728574286014L;

    public final ee.F f30120b;

    public transient InterfaceC13970d f30121c = null;

    public transient Sd.i f30122d = null;

    public class a implements Zd.K {

        public Zd.K f30123b;

        public a() {
            this.f30123b = S.this.f30120b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30123b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30123b.hasNext();
        }

        @Override
        public float key() {
            return this.f30123b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30123b.value();
        }
    }

    public S(ee.F f10) {
        f10.getClass();
        this.f30120b = f10;
    }

    @Override
    public short Ce(float f10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short E2(float f10, short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G0(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H(float f10) {
        return this.f30120b.H(f10);
    }

    @Override
    public boolean L(short s10) {
        return this.f30120b.L(s10);
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30120b.N(t0Var);
    }

    @Override
    public short T5(float f10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean V9(float f10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Yd(he.J j10) {
        return this.f30120b.Yd(j10);
    }

    @Override
    public short c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30120b.d0(fArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30120b.equals(obj);
    }

    @Override
    public boolean g7(he.J j10) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30120b.hashCode();
    }

    @Override
    public short i() {
        return this.f30120b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30120b.i0(sArr);
    }

    @Override
    public boolean isEmpty() {
        return this.f30120b.isEmpty();
    }

    @Override
    public Zd.K iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30120b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30120b.j0(i10);
    }

    @Override
    public Sd.i k() {
        if (this.f30122d == null) {
            this.f30122d = Sd.c.h1(this.f30120b.k());
        }
        return this.f30122d;
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30121c == null) {
            this.f30121c = Sd.c.D2(this.f30120b.keySet());
        }
        return this.f30121c;
    }

    @Override
    public float l() {
        return this.f30120b.l();
    }

    @Override
    public void lb(ee.F f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short q0(float f10) {
        return this.f30120b.q0(f10);
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30120b.size();
    }

    public String toString() {
        return this.f30120b.toString();
    }

    @Override
    public short[] values() {
        return this.f30120b.values();
    }
}
