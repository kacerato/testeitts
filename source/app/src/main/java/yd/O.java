package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class O implements ee.D, Serializable {

    public static final long f30106e = -1034234728574286014L;

    public final ee.D f30107b;

    public transient InterfaceC13970d f30108c = null;

    public transient Sd.h f30109d = null;

    public class a implements Zd.I {

        public Zd.I f30110b;

        public a() {
            this.f30110b = O.this.f30107b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30110b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30110b.hasNext();
        }

        @Override
        public float key() {
            return this.f30110b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30110b.value();
        }
    }

    public O(ee.D d10) {
        d10.getClass();
        this.f30107b = d10;
    }

    @Override
    public boolean G0(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H(float f10) {
        return this.f30107b.H(f10);
    }

    @Override
    public long O5(float f10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean O9(float f10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f30107b.R(j10);
    }

    @Override
    public long c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean ce(he.G g10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30107b.d0(fArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30107b.equals(obj);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f30107b.g0(jArr);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30107b.hashCode();
    }

    @Override
    public long i() {
        return this.f30107b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30107b.isEmpty();
    }

    @Override
    public Zd.I iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30107b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30107b.j0(i10);
    }

    @Override
    public Sd.h k() {
        if (this.f30109d == null) {
            this.f30109d = Sd.c.g1(this.f30107b.k());
        }
        return this.f30109d;
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30108c == null) {
            this.f30108c = Sd.c.D2(this.f30107b.keySet());
        }
        return this.f30108c;
    }

    @Override
    public float l() {
        return this.f30107b.l();
    }

    @Override
    public long ld(float f10, long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long q0(float f10) {
        return this.f30107b.q0(f10);
    }

    @Override
    public long re(float f10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean s7(he.G g10) {
        return this.f30107b.s7(g10);
    }

    @Override
    public int size() {
        return this.f30107b.size();
    }

    public String toString() {
        return this.f30107b.toString();
    }

    @Override
    public long[] values() {
        return this.f30107b.values();
    }

    @Override
    public void w7(ee.D d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f30107b.x(b0Var);
    }
}
