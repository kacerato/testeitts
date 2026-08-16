package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class K0 implements ee.k0, Serializable {

    public static final long f30073e = -1034234728574286014L;

    public final ee.k0 f30074b;

    public transient InterfaceC13973g f30075c = null;

    public transient Sd.h f30076d = null;

    public class a implements Zd.t0 {

        public Zd.t0 f30077b;

        public a() {
            this.f30077b = K0.this.f30074b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30077b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30077b.hasNext();
        }

        @Override
        public short key() {
            return this.f30077b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30077b.value();
        }
    }

    public K0(ee.k0 k0Var) {
        k0Var.getClass();
        this.f30074b = k0Var;
    }

    @Override
    public long C3(short s10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Hc(he.r0 r0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I0(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long N9(short s10, long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f30074b.R(j10);
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30074b.Y(sArr);
    }

    @Override
    public void Z2(ee.k0 k0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean c8(short s10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public long d(short s10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30074b.equals(obj);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f30074b.g0(jArr);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30074b.hashCode();
    }

    @Override
    public long i() {
        return this.f30074b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30074b.isEmpty();
    }

    @Override
    public Zd.t0 iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30074b.j();
    }

    @Override
    public Sd.h k() {
        if (this.f30076d == null) {
            this.f30076d = Sd.c.g1(this.f30074b.k());
        }
        return this.f30076d;
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30075c == null) {
            this.f30075c = Sd.c.G2(this.f30074b.keySet());
        }
        return this.f30075c;
    }

    @Override
    public short l() {
        return this.f30074b.l();
    }

    @Override
    public long n0(short s10) {
        return this.f30074b.n0(s10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean ra(he.r0 r0Var) {
        return this.f30074b.ra(r0Var);
    }

    @Override
    public int size() {
        return this.f30074b.size();
    }

    public String toString() {
        return this.f30074b.toString();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30074b.v(t0Var);
    }

    @Override
    public long[] values() {
        return this.f30074b.values();
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f30074b.x(b0Var);
    }

    @Override
    public long xa(short s10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean z(short s10) {
        return this.f30074b.z(s10);
    }
}
