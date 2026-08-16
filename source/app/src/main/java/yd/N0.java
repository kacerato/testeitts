package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class N0 implements ee.m0, Serializable {

    public static final long f30100e = -1034234728574286014L;

    public final ee.m0 f30101b;

    public transient InterfaceC13973g f30102c = null;

    public transient Sd.i f30103d = null;

    public class a implements Zd.v0 {

        public Zd.v0 f30104b;

        public a() {
            this.f30104b = N0.this.f30101b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30104b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30104b.hasNext();
        }

        @Override
        public short key() {
            return this.f30104b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30104b.value();
        }
    }

    public N0(ee.m0 m0Var) {
        m0Var.getClass();
        this.f30101b = m0Var;
    }

    @Override
    public short A5(short s10, short s11, short s12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short Da(short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I0(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean L(short s10) {
        return this.f30101b.L(s10);
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30101b.N(t0Var);
    }

    @Override
    public boolean N6(he.u0 u0Var) {
        return this.f30101b.N6(u0Var);
    }

    @Override
    public short W3(short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30101b.Y(sArr);
    }

    @Override
    public boolean Z9(he.u0 u0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public short d(short s10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30101b.equals(obj);
    }

    public int hashCode() {
        return this.f30101b.hashCode();
    }

    @Override
    public short i() {
        return this.f30101b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30101b.i0(sArr);
    }

    @Override
    public boolean isEmpty() {
        return this.f30101b.isEmpty();
    }

    @Override
    public Zd.v0 iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30101b.j();
    }

    @Override
    public boolean j8(short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.i k() {
        if (this.f30103d == null) {
            this.f30103d = Sd.c.h1(this.f30101b.k());
        }
        return this.f30103d;
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30102c == null) {
            this.f30102c = Sd.c.G2(this.f30101b.keySet());
        }
        return this.f30102c;
    }

    @Override
    public short l() {
        return this.f30101b.l();
    }

    @Override
    public short n0(short s10) {
        return this.f30101b.n0(s10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30101b.size();
    }

    public String toString() {
        return this.f30101b.toString();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30101b.v(t0Var);
    }

    @Override
    public short[] values() {
        return this.f30101b.values();
    }

    @Override
    public void x4(ee.m0 m0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean z(short s10) {
        return this.f30101b.z(s10);
    }
}
