package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3425l0 implements ee.U, Serializable {

    public static final long f30277e = -1034234728574286014L;

    public final ee.U f30278b;

    public transient InterfaceC13972f f30279c = null;

    public transient Sd.h f30280d = null;

    public class a implements Zd.c0 {

        public Zd.c0 f30281b;

        public a() {
            this.f30281b = C3425l0.this.f30278b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30281b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30281b.hasNext();
        }

        @Override
        public long key() {
            return this.f30281b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30281b.value();
        }
    }

    public C3425l0(ee.U u10) {
        u10.getClass();
        this.f30278b = u10;
    }

    @Override
    public boolean E(long j10) {
        return this.f30278b.E(j10);
    }

    @Override
    public boolean G5(he.Z z10) {
        return this.f30278b.G5(z10);
    }

    @Override
    public boolean H0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean P5(he.Z z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long Pc(long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f30278b.R(j10);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public long e(long j10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30278b.equals(obj);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f30278b.g0(jArr);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30278b.h0(jArr);
    }

    public int hashCode() {
        return this.f30278b.hashCode();
    }

    @Override
    public long i() {
        return this.f30278b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30278b.isEmpty();
    }

    @Override
    public Zd.c0 iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30278b.j();
    }

    @Override
    public long jc(long j10, long j11, long j12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.h k() {
        if (this.f30280d == null) {
            this.f30280d = Sd.c.g1(this.f30278b.k());
        }
        return this.f30280d;
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30279c == null) {
            this.f30279c = Sd.c.F2(this.f30278b.keySet());
        }
        return this.f30279c;
    }

    @Override
    public long l() {
        return this.f30278b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30278b.l0(b0Var);
    }

    @Override
    public long n7(long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean rb(long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30278b.size();
    }

    public String toString() {
        return this.f30278b.toString();
    }

    @Override
    public long u(long j10) {
        return this.f30278b.u(j10);
    }

    @Override
    public long[] values() {
        return this.f30278b.values();
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f30278b.x(b0Var);
    }

    @Override
    public void zd(ee.U u10) {
        throw new UnsupportedOperationException();
    }
}
